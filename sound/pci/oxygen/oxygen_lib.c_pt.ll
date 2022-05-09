; ModuleID = '/llk/IR_all_yes/sound/pci/oxygen/oxygen_lib.c_pt.bc'
source_filename = "../sound/pci/oxygen/oxygen_lib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+oxygen_pci_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_oxygen_pci_probe\09\09\09\09"
module asm "\09.long\09__crc_oxygen_pci_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_oxygen_pci_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22oxygen_pci_probe\22\09\09\09\09\09"
module asm "__kstrtabns_oxygen_pci_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+oxygen_pci_pm\22, \22a\22\09"
module asm "\09.weak\09__crc_oxygen_pci_pm\09\09\09\09"
module asm "\09.long\09__crc_oxygen_pci_pm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_oxygen_pci_pm:\09\09\09\09\09"
module asm "\09.asciz \09\22oxygen_pci_pm\22\09\09\09\09\09"
module asm "__kstrtabns_oxygen_pci_pm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+oxygen_pci_shutdown\22, \22a\22\09"
module asm "\09.weak\09__crc_oxygen_pci_shutdown\09\09\09\09"
module asm "\09.long\09__crc_oxygen_pci_shutdown\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_oxygen_pci_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22oxygen_pci_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_oxygen_pci_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.68, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.68 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.oxygen = type { i32, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, i32, ptr, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i32, i32, [6 x ptr], [6 x ptr], %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, %union.anon.84, [2 x [64 x i16]], i32, [32 x i8], %struct.oxygen_model }
%union.anon.84 = type { [64 x i32] }
%struct.oxygen_model = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.83, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.83 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.73, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.73 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }

@__UNIQUE_ID_author242 = internal constant [59 x i8] c"snd_oxygen_lib.author=Clemens Ladisch <clemens@ladisch.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [58 x i8] c"snd_oxygen_lib.description=C-Media CMI8788 helper library\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [52 x i8] c"snd_oxygen_lib.file=sound/pci/oxygen/snd-oxygen-lib\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [30 x i8] c"snd_oxygen_lib.license=GPL v2\00", section ".modinfo", align 1
@oxygen_pci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->reg_lock\00", [16 x i8] zeroinitializer }, align 32
@oxygen_pci_probe.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&chip->mutex\00", [19 x i8] zeroinitializer }, align 32
@oxygen_pci_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&chip->spdif_input_bits_work)\00", [48 x i8] zeroinitializer }, align 32
@oxygen_pci_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&chip->gpio_work)\00", [60 x i8] zeroinitializer }, align 32
@oxygen_pci_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&chip->ac97_waitqueue\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"oxygen\00", [25 x i8] zeroinitializer }, align 32
@oxygen_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 614, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot reserve PCI resources\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"oxygen_pci_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/pci/oxygen/oxygen_lib.c\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@oxygen_pci_probe._entry_ptr = internal global ptr @oxygen_pci_probe._entry, section ".printk_index", align 4
@oxygen_pci_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.12, i32 620, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid PCI I/O range\0A\00", [41 x i8] zeroinitializer }, align 32
@oxygen_pci_probe._entry_ptr.17 = internal global ptr @oxygen_pci_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_oxygen_lib\00", [17 x i8] zeroinitializer }, align 32
@oxygen_pci_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.11, ptr @.str.12, i32 652, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot grab interrupt %d\0A\00", [38 x i8] zeroinitializer }, align 32
@oxygen_pci_probe._entry_ptr.21 = internal global ptr @oxygen_pci_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s at %#lx, irq %i\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_oxygen_pci_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_oxygen_pci_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_oxygen_pci_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @oxygen_pci_probe to i32), ptr @__kstrtab_oxygen_pci_probe, ptr @__kstrtabns_oxygen_pci_probe }, section "___ksymtab+oxygen_pci_probe", align 4
@oxygen_pci_pm = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @oxygen_pci_suspend, ptr @oxygen_pci_resume, ptr @oxygen_pci_suspend, ptr @oxygen_pci_resume, ptr @oxygen_pci_suspend, ptr @oxygen_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_oxygen_pci_pm = external dso_local constant [0 x i8], align 1
@__kstrtabns_oxygen_pci_pm = external dso_local constant [0 x i8], align 1
@__ksymtab_oxygen_pci_pm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @oxygen_pci_pm to i32), ptr @__kstrtab_oxygen_pci_pm, ptr @__kstrtabns_oxygen_pci_pm }, section "___ksymtab+oxygen_pci_pm", align 4
@__kstrtab_oxygen_pci_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_oxygen_pci_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_oxygen_pci_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @oxygen_pci_shutdown to i32), ptr @__kstrtab_oxygen_pci_shutdown, ptr @__kstrtabns_oxygen_pci_shutdown }, section "___ksymtab+oxygen_pci_shutdown", align 4
@oxygen_restore_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.12, i32 297, ptr @.str.25, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EEPROM ID restored\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"oxygen_restore_eeprom\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@oxygen_restore_eeprom._entry_ptr = internal global ptr @oxygen_restore_eeprom._entry, section ".printk_index", align 4
@configure_pcie_bridge.bridge_ids = internal constant { [5 x %struct.pci_device_id], [32 x i8] } { [5 x %struct.pci_device_id] [%struct.pci_device_id { i32 4277, i32 33041, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4277, i32 33042, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4824, i32 57616, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4172, i32 33344, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CMI878%c:\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x:\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %02x\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0AAC97:\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %04x\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\0AAC97 2:\0A\00", [22 x i8] zeroinitializer }, align 32
@registers_to_restore = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 16713599, i32 72968, i32 8323327, i32 3145728, i32 4068, i32 267845663, i32 0], [32 x i8] zeroinitializer }, align 32
@ac97_registers_to_restore = internal constant { [2 x [2 x i32]], [16 x i8] } { [2 x [2 x i32]] [[2 x i32] [i32 405295010, i32 50724864], [2 x i32] [i32 32678, i32 2097152]], [16 x i8] zeroinitializer }, align 32
@switch.table.oxygen_proc_read = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 54, i32 63, i32 55, i32 56], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 17229, i64 65535]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 601, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 602, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 603, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 605, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 606, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 612, i32 33 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 614, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 620, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 650, i32 24 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 652, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 660, i32 26 }
@___asan_gen_.103 = private unnamed_addr constant [14 x i8] c"oxygen_pci_pm\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 782, i32 1 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 297, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [11 x i8] c"bridge_ids\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 304, i32 36 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 199, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 201, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 203, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 204, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 209, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 213, i32 5 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 219, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [21 x i8] c"registers_to_restore\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 731, i32 18 }
@___asan_gen_.145 = private unnamed_addr constant [26 x i8] c"ac97_registers_to_restore\00", align 1
@___asan_gen_.146 = private constant [33 x i8] c"../sound/pci/oxygen/oxygen_lib.c\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 735, i32 18 }
@___asan_gen_.148 = private unnamed_addr constant [30 x i8] c"switch.table.oxygen_proc_read\00", align 1
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__ksymtab_oxygen_pci_pm, ptr @__ksymtab_oxygen_pci_probe, ptr @__ksymtab_oxygen_pci_shutdown, ptr @oxygen_pci_probe._entry, ptr @oxygen_pci_probe._entry.15, ptr @oxygen_pci_probe._entry.19, ptr @oxygen_pci_probe._entry_ptr, ptr @oxygen_pci_probe._entry_ptr.17, ptr @oxygen_pci_probe._entry_ptr.21, ptr @oxygen_restore_eeprom._entry, ptr @oxygen_restore_eeprom._entry_ptr, ptr @oxygen_pci_probe.__key, ptr @.str, ptr @oxygen_pci_probe.__key.1, ptr @.str.2, ptr @oxygen_pci_probe.__key.3, ptr @.str.4, ptr @oxygen_pci_probe.__key.5, ptr @.str.6, ptr @oxygen_pci_probe.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @oxygen_pci_pm, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @configure_pcie_bridge.bridge_ids, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @registers_to_restore, ptr @ac97_registers_to_restore, ptr @switch.table.oxygen_proc_read], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxygen_pci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxygen_pci_probe.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxygen_pci_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxygen_pci_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxygen_pci_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxygen_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxygen_pci_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxygen_pci_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxygen_pci_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxygen_restore_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_pcie_bridge.bridge_ids to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @registers_to_restore to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac97_registers_to_restore to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.oxygen_proc_read to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oxygen_pci_probe(ptr noundef %pci, i32 noundef %index, ptr noundef %id, ptr noundef %owner, ptr noundef %ids, ptr nocapture noundef readonly %get_model) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #6
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !87
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %index, ptr noundef %id, ptr noundef %owner, i32 noundef 1028, ptr noundef nonnull %card) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup170_crit_edge, label %if.end

entry.cleanup170_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup170

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 8
  %card1 = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %card1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %card1, align 4
  %pci2 = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 4
  %6 = ptrtoint ptr %pci2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pci, ptr %pci2, align 4
  %irq = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 6
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %irq, align 4
  %reg_lock = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 1
  call void @__raw_spin_lock_init(ptr noundef %reg_lock, ptr noundef nonnull @.str, ptr noundef nonnull @oxygen_pci_probe.__key, i16 noundef signext 3) #6
  %mutex = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 2
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.2, ptr noundef nonnull @oxygen_pci_probe.__key.1) #6
  %spdif_input_bits_work = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 21
  call void @__init_work(ptr noundef %spdif_input_bits_work, i32 noundef 0) #6
  %8 = ptrtoint ptr %spdif_input_bits_work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %spdif_input_bits_work, align 4
  %lockdep_map = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 21, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @oxygen_pci_probe.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry11 = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 21, i32 1
  %9 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 21, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry11, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 21, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @oxygen_spdif_input_bits_changed, ptr %func, align 4
  %gpio_work = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 22
  call void @__init_work(ptr noundef %gpio_work, i32 noundef 0) #6
  %12 = ptrtoint ptr %gpio_work to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %gpio_work, align 4
  %lockdep_map21 = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 22, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map21, ptr noundef nonnull @.str.6, ptr noundef nonnull @oxygen_pci_probe.__key.5, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry23 = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 22, i32 1
  %13 = ptrtoint ptr %entry23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry23, ptr %entry23, align 4
  %prev.i267 = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 22, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i267 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry23, ptr %prev.i267, align 4
  %func25 = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 22, i32 2
  %15 = ptrtoint ptr %func25 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @oxygen_gpio_changed, ptr %func25, align 4
  %ac97_waitqueue = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 23
  call void @__init_waitqueue_head(ptr noundef %ac97_waitqueue, ptr noundef nonnull @.str.8, ptr noundef nonnull @oxygen_pci_probe.__key.7) #6
  %call31 = call i32 @pcim_enable_device(ptr noundef %pci) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end.cleanup170_crit_edge, label %if.end34

if.end.cleanup170_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup170

if.end34:                                         ; preds = %if.end
  %call35 = call i32 @pci_request_regions(ptr noundef %pci, ptr noundef nonnull @.str.9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %do.end40, label %if.end42

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 4
  %dev41 = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev41, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.10) #9
  br label %cleanup170

if.end42:                                         ; preds = %if.end34
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %flags = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 0, i32 3
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %and = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end42.do.end55_crit_edge, label %lor.lhs.false

if.end42.do.end55_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end55

lor.lhs.false:                                    ; preds = %if.end42
  %end = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 0, i32 1
  %22 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp45 = icmp eq i32 %23, 0
  br i1 %cmp45, label %lor.lhs.false.do.end55_crit_edge, label %cond.end

lor.lhs.false.do.end55_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end55

cond.end:                                         ; preds = %lor.lhs.false
  %24 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %resource, align 8
  %sub = add i32 %23, 1
  %add = sub i32 %sub, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add)
  %cmp51 = icmp ult i32 %add, 256
  br i1 %cmp51, label %cond.end.do.end55_crit_edge, label %if.end57

cond.end.do.end55_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end55

do.end55:                                         ; preds = %cond.end.do.end55_crit_edge, %lor.lhs.false.do.end55_crit_edge, %if.end42.do.end55_crit_edge
  %26 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card, align 4
  %dev56 = getelementptr inbounds %struct.snd_card, ptr %27, i32 0, i32 27
  %28 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev56, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.16) #9
  br label %cleanup170

if.end57:                                         ; preds = %cond.end
  %30 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %resource, align 8
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %4, align 4
  call void @oxygen_write8_masked(ptr noundef %4, i32 noundef 80, i8 noundef zeroext 0, i8 noundef zeroext -128) #6
  %call.i = call zeroext i16 @oxygen_read_eeprom(ptr noundef %4, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i)
  %cmp.i = icmp eq i16 %call.i, -1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end57.if.end.i_crit_edge

if.end57.if.end.i_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = call zeroext i16 @oxygen_read_eeprom(ptr noundef %4, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call2.i)
  %cmp4.i = icmp eq i16 %call2.i, -1
  %spec.select.i = select i1 %cmp4.i, i16 -30840, i16 -1
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %if.end57.if.end.i_crit_edge
  %subdevice.0.i = phi i16 [ %call.i, %if.end57.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %33 = ptrtoint ptr %ids to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not22.i = icmp eq i32 %34, 0
  br i1 %tobool.not22.i, label %if.end.i.cleanup170_crit_edge, label %for.body.lr.ph.i

if.end.i.cleanup170_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup170

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %conv7.i = zext i16 %subdevice.0.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ids.addr.023.i = phi ptr [ %ids, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %subdevice6.i = getelementptr inbounds %struct.pci_device_id, ptr %ids.addr.023.i, i32 0, i32 3
  %35 = ptrtoint ptr %subdevice6.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %subdevice6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %conv7.i)
  %cmp8.i = icmp eq i32 %36, %conv7.i
  br i1 %cmp8.i, label %land.lhs.true10.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true10.i:                                ; preds = %for.body.i
  %driver_data.i = getelementptr inbounds %struct.pci_device_id, ptr %ids.addr.023.i, i32 0, i32 6
  %37 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp11.not.i = icmp eq i32 %38, -1
  br i1 %cmp11.not.i, label %land.lhs.true10.i.for.inc.i_crit_edge, label %oxygen_search_pci_id.exit

land.lhs.true10.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true10.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.pci_device_id, ptr %ids.addr.023.i, i32 1
  %39 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i, label %for.inc.i.cleanup170_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup170_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup170

oxygen_search_pci_id.exit:                        ; preds = %land.lhs.true10.i
  %subdevice6.i.le = getelementptr inbounds %struct.pci_device_id, ptr %ids.addr.023.i, i32 0, i32 3
  %tobool62.not = icmp eq ptr %ids.addr.023.i, null
  br i1 %tobool62.not, label %oxygen_search_pci_id.exit.cleanup170_crit_edge, label %if.end64

oxygen_search_pci_id.exit.cleanup170_crit_edge:   ; preds = %oxygen_search_pci_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup170

if.end64:                                         ; preds = %oxygen_search_pci_id.exit
  %call.i268 = call zeroext i16 @oxygen_read_eeprom(ptr noundef %4, i32 noundef 0) #6
  %41 = zext i16 %call.i268 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i16 %call.i268, label %if.end64.if.then.i_crit_edge [
    i16 17229, label %if.end64.oxygen_restore_eeprom.exit_crit_edge
    i16 -1, label %lor.lhs.false.i
  ]

if.end64.oxygen_restore_eeprom.exit_crit_edge:    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %oxygen_restore_eeprom.exit

if.end64.if.then.i_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end64
  %42 = ptrtoint ptr %subdevice6.i.le to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %subdevice6.i.le, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34696, i32 %43)
  %cmp5.not.i = icmp eq i32 %43, 34696
  br i1 %cmp5.not.i, label %lor.lhs.false.i.oxygen_restore_eeprom.exit_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i.oxygen_restore_eeprom.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %oxygen_restore_eeprom.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end64.if.then.i_crit_edge
  %subvendor.i = getelementptr inbounds %struct.pci_device_id, ptr %ids.addr.023.i, i32 0, i32 2
  %44 = ptrtoint ptr %subvendor.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %subvendor.i, align 4
  %conv7.i269 = trunc i32 %45 to i16
  call void @oxygen_write_eeprom(ptr noundef %4, i32 noundef 1, i16 noundef zeroext %conv7.i269) #6
  call void @oxygen_write_eeprom(ptr noundef %4, i32 noundef 0, i16 noundef zeroext 17229) #6
  call void @oxygen_write8_masked(ptr noundef %4, i32 noundef 72, i8 noundef zeroext 1, i8 noundef zeroext 1) #6
  %46 = ptrtoint ptr %pci2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pci2, align 4
  %48 = ptrtoint ptr %subvendor.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %subvendor.i, align 4
  %conv9.i = trunc i32 %49 to i16
  %call10.i = call i32 @pci_write_config_word(ptr noundef %47, i32 noundef 44, i16 noundef zeroext %conv9.i) #6
  %50 = ptrtoint ptr %pci2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pci2, align 4
  %52 = ptrtoint ptr %subdevice6.i.le to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %subdevice6.i.le, align 4
  %conv13.i = trunc i32 %53 to i16
  %call14.i = call i32 @pci_write_config_word(ptr noundef %51, i32 noundef 46, i16 noundef zeroext %conv13.i) #6
  call void @oxygen_write8_masked(ptr noundef %4, i32 noundef 72, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  %54 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %card1, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %55, i32 0, i32 27
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %57, ptr noundef nonnull @.str.23) #9
  br label %oxygen_restore_eeprom.exit

oxygen_restore_eeprom.exit:                       ; preds = %if.then.i, %lor.lhs.false.i.oxygen_restore_eeprom.exit_crit_edge, %if.end64.oxygen_restore_eeprom.exit_crit_edge
  %call65 = call i32 %get_model(ptr noundef %4, ptr noundef nonnull %ids.addr.023.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %oxygen_restore_eeprom.exit.cleanup170_crit_edge, label %if.end68

oxygen_restore_eeprom.exit.cleanup170_crit_edge:  ; preds = %oxygen_restore_eeprom.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup170

if.end68:                                         ; preds = %oxygen_restore_eeprom.exit
  %model = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 28
  %model_data_size = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 28, i32 21
  %58 = ptrtoint ptr %model_data_size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %model_data_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool69.not = icmp eq i32 %59, 0
  br i1 %tobool69.not, label %if.end68.if.end79_crit_edge, label %if.then70

if.end68.if.end79_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.then70:                                        ; preds = %if.end68
  %call.i271 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %59, i32 noundef 3520) #6
  %model_data = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 7
  %60 = ptrtoint ptr %model_data to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i271, ptr %model_data, align 4
  %tobool76.not = icmp eq ptr %call.i271, null
  br i1 %tobool76.not, label %if.then70.cleanup170_crit_edge, label %if.then70.if.end79_crit_edge

if.then70.if.end79_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.then70.cleanup170_crit_edge:                   ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup170

if.end79:                                         ; preds = %if.then70.if.end79_crit_edge, %if.end68.if.end79_crit_edge
  call void @pci_set_master(ptr noundef %pci) #6
  %61 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %card, align 4
  %private_free = getelementptr inbounds %struct.snd_card, ptr %62, i32 0, i32 10
  %63 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @oxygen_card_free, ptr %private_free, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %64 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %tmp.i, align 4, !annotation !87
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 1
  %65 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bus.i, align 8
  %tobool.not.i272 = icmp eq ptr %66, null
  br i1 %tobool.not.i272, label %if.end79.configure_pcie_bridge.exit_crit_edge, label %lor.lhs.false.i273

if.end79.configure_pcie_bridge.exit_crit_edge:    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %configure_pcie_bridge.exit

lor.lhs.false.i273:                               ; preds = %if.end79
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %self.i, align 4
  %tobool2.not.i = icmp eq ptr %68, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i273.configure_pcie_bridge.exit_crit_edge, label %if.end.i275

lor.lhs.false.i273.configure_pcie_bridge.exit_crit_edge: ; preds = %lor.lhs.false.i273
  call void @__sanitizer_cov_trace_pc() #8
  br label %configure_pcie_bridge.exit

if.end.i275:                                      ; preds = %lor.lhs.false.i273
  %call.i274 = call ptr @pci_match_id(ptr noundef nonnull @configure_pcie_bridge.bridge_ids, ptr noundef nonnull %68) #6
  %tobool5.not.i = icmp eq ptr %call.i274, null
  br i1 %tobool5.not.i, label %if.end.i275.configure_pcie_bridge.exit_crit_edge, label %if.end7.i

if.end.i275.configure_pcie_bridge.exit_crit_edge: ; preds = %if.end.i275
  call void @__sanitizer_cov_trace_pc() #8
  br label %configure_pcie_bridge.exit

if.end7.i:                                        ; preds = %if.end.i275
  %driver_data.i276 = getelementptr inbounds %struct.pci_device_id, ptr %call.i274, i32 0, i32 6
  %69 = ptrtoint ptr %driver_data.i276 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %driver_data.i276, align 4
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %70, label %if.end7.i.configure_pcie_bridge.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb15.i
    i32 2, label %sw.bb19.i
  ]

if.end7.i.configure_pcie_bridge.exit_crit_edge:   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %configure_pcie_bridge.exit

sw.bb.i:                                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i = call i32 @pci_read_config_dword(ptr noundef nonnull %68, i32 noundef 72, ptr noundef nonnull %tmp.i) #6
  %72 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tmp.i, align 4
  %or9.i = or i32 %73, 2049
  store i32 %or9.i, ptr %tmp.i, align 4
  %call10.i277 = call i32 @pci_write_config_dword(ptr noundef nonnull %68, i32 noundef 72, i32 noundef %or9.i) #6
  %call11.i = call i32 @pci_write_config_dword(ptr noundef nonnull %68, i32 noundef 132, i32 noundef 12) #6
  %call12.i = call i32 @pci_read_config_dword(ptr noundef nonnull %68, i32 noundef 136, ptr noundef nonnull %tmp.i) #6
  %74 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tmp.i, align 4
  %and.i = and i32 %75, -939524097
  %or13.i = or i32 %and.i, 268435456
  store i32 %or13.i, ptr %tmp.i, align 4
  %call14.i278 = call i32 @pci_write_config_dword(ptr noundef nonnull %68, i32 noundef 136, i32 noundef %or13.i) #6
  br label %configure_pcie_bridge.exit

sw.bb15.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %call16.i = call i32 @pci_read_config_dword(ptr noundef nonnull %68, i32 noundef 64, ptr noundef nonnull %tmp.i) #6
  %76 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tmp.i, align 4
  %or17.i = or i32 %77, 1
  store i32 %or17.i, ptr %tmp.i, align 4
  %call18.i = call i32 @pci_write_config_dword(ptr noundef nonnull %68, i32 noundef 64, i32 noundef %or17.i) #6
  br label %configure_pcie_bridge.exit

sw.bb19.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %call20.i = call i32 @pci_read_config_dword(ptr noundef nonnull %68, i32 noundef 232, ptr noundef nonnull %tmp.i) #6
  %78 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tmp.i, align 4
  %and22.i = and i32 %79, -3856
  %or23.i = or i32 %and22.i, 256
  store i32 %or23.i, ptr %tmp.i, align 4
  %call24.i = call i32 @pci_write_config_dword(ptr noundef nonnull %68, i32 noundef 232, i32 noundef %or23.i) #6
  br label %configure_pcie_bridge.exit

configure_pcie_bridge.exit:                       ; preds = %sw.bb19.i, %sw.bb15.i, %sw.bb.i, %if.end7.i.configure_pcie_bridge.exit_crit_edge, %if.end.i275.configure_pcie_bridge.exit_crit_edge, %lor.lhs.false.i273.configure_pcie_bridge.exit_crit_edge, %if.end79.configure_pcie_bridge.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  %dac_routing.i = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 13
  %80 = ptrtoint ptr %dac_routing.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %dac_routing.i, align 1
  %dac_volume_min.i = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 28, i32 25
  %81 = ptrtoint ptr %dac_volume_min.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %dac_volume_min.i, align 2
  %arrayidx.i = getelementptr %struct.oxygen, ptr %4, i32 0, i32 9, i32 0
  %dac_mute.i = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 10
  %83 = zext i8 %82 to i32
  %84 = call ptr @memset(ptr %arrayidx.i, i32 %83, i32 8)
  %85 = ptrtoint ptr %dac_mute.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %dac_mute.i, align 4
  %spdif_playback_enable.i = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 14
  %86 = ptrtoint ptr %spdif_playback_enable.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %spdif_playback_enable.i, align 4
  %spdif_bits.i = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 17
  %87 = ptrtoint ptr %spdif_bits.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 2084, ptr %spdif_bits.i, align 4
  %spdif_pcm_bits.i = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 18
  %88 = ptrtoint ptr %spdif_pcm_bits.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 2084, ptr %spdif_pcm_bits.i, align 4
  %call.i279 = call zeroext i8 @oxygen_read8(ptr noundef %4, i32 noundef 230) #6
  %89 = and i8 %call.i279, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i280 = icmp eq i8 %89, 0
  br i1 %tobool.not.i280, label %if.then.i281, label %configure_pcie_bridge.exit.if.end.i283_crit_edge

configure_pcie_bridge.exit.if.end.i283_crit_edge: ; preds = %configure_pcie_bridge.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i283

if.then.i281:                                     ; preds = %configure_pcie_bridge.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @oxygen_write8_masked(ptr noundef %4, i32 noundef 72, i8 noundef zeroext 32, i8 noundef zeroext 32) #6
  br label %if.end.i283

if.end.i283:                                      ; preds = %if.then.i281, %configure_pcie_bridge.exit.if.end.i283_crit_edge
  %call2.i282 = call zeroext i16 @oxygen_read16(ptr noundef %4, i32 noundef 208) #6
  %90 = trunc i16 %call2.i282 to i8
  %91 = lshr i8 %90, 4
  %92 = and i8 %91, 1
  %has_ac97_0.i = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 15
  %93 = ptrtoint ptr %has_ac97_0.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %has_ac97_0.i, align 1
  %94 = lshr i8 %90, 5
  %95 = and i8 %94, 1
  %has_ac97_1.i = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 16
  %96 = ptrtoint ptr %has_ac97_1.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %has_ac97_1.i, align 2
  %function_flags.i = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 28, i32 28
  %97 = ptrtoint ptr %function_flags.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %function_flags.i, align 1
  %99 = or i8 %98, 2
  call void @oxygen_write8_masked(ptr noundef %4, i32 noundef 80, i8 noundef zeroext %99, i8 noundef zeroext -62) #6
  call void @oxygen_write8(ptr noundef %4, i32 noundef 64, i8 noundef zeroext 0) #6
  call void @oxygen_write8(ptr noundef %4, i32 noundef 65, i8 noundef zeroext 0) #6
  call void @oxygen_write8(ptr noundef %4, i32 noundef 67, i8 noundef zeroext 0) #6
  call void @oxygen_write16(ptr noundef %4, i32 noundef 68, i16 noundef zeroext 0) #6
  %misc_flags.i = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 28, i32 27
  %100 = ptrtoint ptr %misc_flags.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %misc_flags.i, align 4
  call void @oxygen_write8_masked(ptr noundef %4, i32 noundef 72, i8 noundef zeroext %101, i8 noundef zeroext 93) #6
  call void @oxygen_write8(ptr noundef %4, i32 noundef 74, i8 noundef zeroext 0) #6
  call void @oxygen_write8(ptr noundef %4, i32 noundef 75, i8 noundef zeroext 0) #6
  call void @oxygen_write8(ptr noundef %4, i32 noundef 76, i8 noundef zeroext 0) #6
  %dac_i2s_format.i = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 28, i32 31
  %102 = ptrtoint ptr %dac_i2s_format.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %dac_i2s_format.i, align 4
  %dac_mclks.i = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 28, i32 29
  %104 = ptrtoint ptr %dac_mclks.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %dac_mclks.i, align 2
  %106 = shl i8 %105, 4
  %107 = and i8 %106, 48
  %shl.i = zext i8 %107 to i16
  %108 = or i16 %103, %shl.i
  %or24.i = or i16 %108, 258
  call void @oxygen_write16(ptr noundef %4, i32 noundef 96, i16 noundef zeroext %or24.i) #6
  %device_config.i = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 28, i32 22
  %109 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %device_config.i, align 4
  %and28.i = and i32 %110, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.end.i283.if.end43.i_crit_edge, label %if.then30.i

if.end.i283.if.end43.i_crit_edge:                 ; preds = %if.end.i283
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i

if.then30.i:                                      ; preds = %if.end.i283
  call void @__sanitizer_cov_trace_pc() #8
  %adc_i2s_format.i = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 28, i32 32
  %111 = ptrtoint ptr %adc_i2s_format.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %adc_i2s_format.i, align 2
  %adc_mclks.i = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 28, i32 30
  %113 = ptrtoint ptr %adc_mclks.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %adc_mclks.i, align 1
  %115 = shl i8 %114, 4
  %116 = and i8 %115, 48
  %shl37.i = zext i8 %116 to i16
  %117 = or i16 %112, %shl37.i
  %or40.i = or i16 %117, 258
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then30.i, %if.end.i283.if.end43.i_crit_edge
  %.sink.i = phi i16 [ %or40.i, %if.then30.i ], [ 2304, %if.end.i283.if.end43.i_crit_edge ]
  call void @oxygen_write16(ptr noundef %4, i32 noundef 98, i16 noundef zeroext %.sink.i) #6
  %118 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %device_config.i, align 4
  %and46.i = and i32 %119, 288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %if.end43.i.if.end64.i_crit_edge, label %if.then48.i

if.end43.i.if.end64.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i

if.then48.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  %adc_i2s_format50.i = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 28, i32 32
  %120 = ptrtoint ptr %adc_i2s_format50.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %adc_i2s_format50.i, align 2
  %adc_mclks54.i = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 28, i32 30
  %122 = ptrtoint ptr %adc_mclks54.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %adc_mclks54.i, align 1
  %124 = shl i8 %123, 4
  %125 = and i8 %124, 48
  %shl57.i = zext i8 %125 to i16
  %126 = or i16 %121, %shl57.i
  %or60.i = or i16 %126, 258
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then48.i, %if.end43.i.if.end64.i_crit_edge
  %.sink225.i = phi i16 [ %or60.i, %if.then48.i ], [ 2304, %if.end43.i.if.end64.i_crit_edge ]
  call void @oxygen_write16(ptr noundef %4, i32 noundef 100, i16 noundef zeroext %.sink225.i) #6
  %127 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %device_config.i, align 4
  %and67.i = and i32 %128, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i)
  %tobool68.not.i = icmp eq i32 %and67.i, 0
  br i1 %tobool68.not.i, label %if.end64.i.if.end85.i_crit_edge, label %if.then69.i

if.end64.i.if.end85.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85.i

if.then69.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  %adc_i2s_format71.i = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 28, i32 32
  %129 = ptrtoint ptr %adc_i2s_format71.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %adc_i2s_format71.i, align 2
  %adc_mclks75.i = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 28, i32 30
  %131 = ptrtoint ptr %adc_mclks75.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %adc_mclks75.i, align 1
  %133 = shl i8 %132, 4
  %134 = and i8 %133, 48
  %shl78.i = zext i8 %134 to i16
  %135 = or i16 %130, %shl78.i
  %or81.i = or i16 %135, 258
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then69.i, %if.end64.i.if.end85.i_crit_edge
  %.sink226.i = phi i16 [ %or81.i, %if.then69.i ], [ 2304, %if.end64.i.if.end85.i_crit_edge ]
  call void @oxygen_write16(ptr noundef %4, i32 noundef 102, i16 noundef zeroext %.sink226.i) #6
  call void @oxygen_write32_masked(ptr noundef %4, i32 noundef 112, i32 noundef 0, i32 noundef 6) #6
  %136 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %device_config.i, align 4
  %and88.i = and i32 %137, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %tobool89.not.i = icmp eq i32 %and88.i, 0
  br i1 %tobool89.not.i, label %if.else91.i, label %if.then90.i

if.then90.i:                                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @oxygen_write32_masked(ptr noundef %4, i32 noundef 112, i32 noundef 1080, i32 noundef 67128) #6
  br label %if.end92.i

if.else91.i:                                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @oxygen_write32_masked(ptr noundef %4, i32 noundef 112, i32 noundef 0, i32 noundef 56) #6
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.else91.i, %if.then90.i
  %138 = ptrtoint ptr %spdif_bits.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %spdif_bits.i, align 4
  call void @oxygen_write32(ptr noundef %4, i32 noundef 116, i32 noundef %139) #6
  call void @oxygen_write16(ptr noundef %4, i32 noundef 148, i16 noundef zeroext 64) #6
  call void @oxygen_write8_masked(ptr noundef %4, i32 noundef 162, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  call void @oxygen_write8(ptr noundef %4, i32 noundef 165, i8 noundef zeroext 0) #6
  call void @oxygen_write16(ptr noundef %4, i32 noundef 170, i16 noundef zeroext 0) #6
  call void @oxygen_write16(ptr noundef %4, i32 noundef 192, i16 noundef zeroext -7168) #6
  call void @oxygen_write8(ptr noundef %4, i32 noundef 194, i8 noundef zeroext 0) #6
  call void @oxygen_write8(ptr noundef %4, i32 noundef 195, i8 noundef zeroext 0) #6
  call void @oxygen_write8(ptr noundef %4, i32 noundef 196, i8 noundef zeroext -28) #6
  %140 = ptrtoint ptr %has_ac97_0.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %has_ac97_0.i, align 1
  %142 = ptrtoint ptr %has_ac97_1.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %has_ac97_1.i, align 2
  %or98222.i = or i8 %143, %141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or98222.i)
  %tobool99.not.i = icmp eq i8 %or98222.i, 0
  %..i = select i1 %tobool99.not.i, i8 0, i8 3
  call void @oxygen_write8(ptr noundef %4, i32 noundef 210, i8 noundef zeroext %..i) #6
  call void @oxygen_write32(ptr noundef %4, i32 noundef 212, i32 noundef 0) #6
  call void @oxygen_write32(ptr noundef %4, i32 noundef 216, i32 noundef 0) #6
  %144 = ptrtoint ptr %has_ac97_0.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %has_ac97_0.i, align 1
  %146 = ptrtoint ptr %has_ac97_1.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %has_ac97_1.i, align 2
  %or107223.i = or i8 %147, %145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or107223.i)
  %tobool108.not.i = icmp eq i8 %or107223.i, 0
  br i1 %tobool108.not.i, label %if.then109.i, label %if.end92.i.if.end110.i_crit_edge

if.end92.i.if.end110.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110.i

if.then109.i:                                     ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @oxygen_write16_masked(ptr noundef %4, i32 noundef 208, i16 noundef zeroext 4, i16 noundef zeroext 4) #6
  %148 = ptrtoint ptr %has_ac97_0.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %.pr.i = load i8, ptr %has_ac97_0.i, align 1
  br label %if.end110.i

if.end110.i:                                      ; preds = %if.then109.i, %if.end92.i.if.end110.i_crit_edge
  %149 = phi i8 [ %.pr.i, %if.then109.i ], [ %145, %if.end92.i.if.end110.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool112.not.i = icmp eq i8 %149, 0
  br i1 %tobool112.not.i, label %if.then113.i, label %if.else114.i

if.then113.i:                                     ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @oxygen_write16_masked(ptr noundef %4, i32 noundef 208, i16 noundef zeroext 8, i16 noundef zeroext 8) #6
  br label %if.end115.i

if.else114.i:                                     ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @oxygen_write_ac97(ptr noundef %4, i32 noundef 0, i32 noundef 0, i16 noundef zeroext 0) #6
  call void @msleep(i32 noundef 1) #6
  call void @oxygen_write_ac97_masked(ptr noundef %4, i32 noundef 0, i32 noundef 112, i16 noundef zeroext 768, i16 noundef zeroext 768) #6
  call void @oxygen_write_ac97_masked(ptr noundef %4, i32 noundef 0, i32 noundef 100, i16 noundef zeroext -32701, i16 noundef zeroext -32701) #6
  call void @oxygen_write_ac97_masked(ptr noundef %4, i32 noundef 0, i32 noundef 98, i16 noundef zeroext 6159, i16 noundef zeroext 6159) #6
  call void @oxygen_write_ac97(ptr noundef %4, i32 noundef 0, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @oxygen_write_ac97(ptr noundef %4, i32 noundef 0, i32 noundef 10, i16 noundef zeroext -32768) #6
  call void @oxygen_write_ac97(ptr noundef %4, i32 noundef 0, i32 noundef 14, i16 noundef zeroext -30712) #6
  call void @oxygen_write_ac97(ptr noundef %4, i32 noundef 0, i32 noundef 16, i16 noundef zeroext 2056) #6
  call void @oxygen_write_ac97(ptr noundef %4, i32 noundef 0, i32 noundef 18, i16 noundef zeroext -30712) #6
  call void @oxygen_write_ac97(ptr noundef %4, i32 noundef 0, i32 noundef 20, i16 noundef zeroext -30712) #6
  call void @oxygen_write_ac97(ptr noundef %4, i32 noundef 0, i32 noundef 22, i16 noundef zeroext -30712) #6
  call void @oxygen_write_ac97(ptr noundef %4, i32 noundef 0, i32 noundef 28, i16 noundef zeroext -32768) #6
  call void @oxygen_write_ac97(ptr noundef %4, i32 noundef 0, i32 noundef 54, i16 noundef zeroext -32640) #6
  call void @oxygen_write_ac97(ptr noundef %4, i32 noundef 0, i32 noundef 56, i16 noundef zeroext -32640) #6
  call void @oxygen_write_ac97_masked(ptr noundef %4, i32 noundef 0, i32 noundef 114, i16 noundef zeroext 0, i16 noundef zeroext 1) #6
  call void @oxygen_write_ac97_masked(ptr noundef %4, i32 noundef 0, i32 noundef 38, i16 noundef zeroext 768, i16 noundef zeroext 768) #6
  call void @oxygen_write_ac97_masked(ptr noundef %4, i32 noundef 0, i32 noundef 42, i16 noundef zeroext 14336, i16 noundef zeroext 14336) #6
  br label %if.end115.i

if.end115.i:                                      ; preds = %if.else114.i, %if.then113.i
  %150 = ptrtoint ptr %has_ac97_1.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %has_ac97_1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool117.not.i = icmp eq i8 %151, 0
  br i1 %tobool117.not.i, label %if.end115.i.oxygen_init.exit_crit_edge, label %if.then118.i

if.end115.i.oxygen_init.exit_crit_edge:           ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %oxygen_init.exit

if.then118.i:                                     ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @oxygen_write32_masked(ptr noundef %4, i32 noundef 212, i32 noundef 17, i32 noundef 17) #6
  call void @oxygen_write_ac97(ptr noundef %4, i32 noundef 1, i32 noundef 0, i16 noundef zeroext 0) #6
  call void @msleep(i32 noundef 1) #6
  call void @oxygen_write_ac97(ptr noundef %4, i32 noundef 1, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @oxygen_write_ac97(ptr noundef %4, i32 noundef 1, i32 noundef 4, i16 noundef zeroext -32768) #6
  call void @oxygen_write_ac97(ptr noundef %4, i32 noundef 1, i32 noundef 10, i16 noundef zeroext -32768) #6
  call void @oxygen_write_ac97(ptr noundef %4, i32 noundef 1, i32 noundef 14, i16 noundef zeroext -30712) #6
  call void @oxygen_write_ac97(ptr noundef %4, i32 noundef 1, i32 noundef 16, i16 noundef zeroext -30712) #6
  call void @oxygen_write_ac97(ptr noundef %4, i32 noundef 1, i32 noundef 18, i16 noundef zeroext -30712) #6
  call void @oxygen_write_ac97(ptr noundef %4, i32 noundef 1, i32 noundef 20, i16 noundef zeroext -30712) #6
  call void @oxygen_write_ac97(ptr noundef %4, i32 noundef 1, i32 noundef 22, i16 noundef zeroext -30712) #6
  call void @oxygen_write_ac97(ptr noundef %4, i32 noundef 1, i32 noundef 24, i16 noundef zeroext 2056) #6
  call void @oxygen_write_ac97(ptr noundef %4, i32 noundef 1, i32 noundef 26, i16 noundef zeroext 0) #6
  call void @oxygen_write_ac97(ptr noundef %4, i32 noundef 1, i32 noundef 28, i16 noundef zeroext 0) #6
  call void @oxygen_write_ac97_masked(ptr noundef %4, i32 noundef 1, i32 noundef 106, i16 noundef zeroext 64, i16 noundef zeroext 64) #6
  br label %oxygen_init.exit

oxygen_init.exit:                                 ; preds = %if.then118.i, %if.end115.i.oxygen_init.exit_crit_edge
  %init = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 28, i32 3
  %152 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %init, align 4
  call void %153(ptr noundef %4) #6
  %irq82 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %154 = ptrtoint ptr %irq82 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %irq82, align 4
  %call.i284 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %155, ptr noundef nonnull @oxygen_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.18, ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i284)
  %cmp84 = icmp slt i32 %call.i284, 0
  br i1 %cmp84, label %do.end88, label %if.end91

do.end88:                                         ; preds = %oxygen_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %156 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %card, align 4
  %dev89 = getelementptr inbounds %struct.snd_card, ptr %157, i32 0, i32 27
  %158 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev89, align 8
  %160 = ptrtoint ptr %irq82 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %irq82, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %159, ptr noundef nonnull @.str.20, i32 noundef %161) #9
  br label %cleanup170

if.end91:                                         ; preds = %oxygen_init.exit
  %162 = ptrtoint ptr %irq82 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %irq82, align 4
  %164 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %irq, align 4
  %165 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %card, align 4
  %sync_irq = getelementptr inbounds %struct.snd_card, ptr %166, i32 0, i32 33
  %167 = ptrtoint ptr %sync_irq to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %163, ptr %sync_irq, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %166, i32 0, i32 2
  %chip96 = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 28, i32 2
  %168 = ptrtoint ptr %chip96 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %chip96, align 4
  %call97 = call ptr @strcpy(ptr noundef %driver, ptr noundef %169) #10
  %shortname = getelementptr inbounds %struct.snd_card, ptr %166, i32 0, i32 3
  %170 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %model, align 4
  %call101 = call ptr @strcpy(ptr noundef %shortname, ptr noundef %171) #10
  %longname = getelementptr inbounds %struct.snd_card, ptr %166, i32 0, i32 4
  %longname104 = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 28, i32 1
  %172 = ptrtoint ptr %longname104 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %longname104, align 4
  %174 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %4, align 4
  %176 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %irq, align 4
  %call107 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.22, ptr noundef %173, i32 noundef %175, i32 noundef %177)
  %178 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %card, align 4
  %mixername = getelementptr inbounds %struct.snd_card, ptr %179, i32 0, i32 6
  %180 = ptrtoint ptr %chip96 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %chip96, align 4
  %call111 = call ptr @strcpy(ptr noundef %mixername, ptr noundef %181) #10
  %182 = ptrtoint ptr %chip96 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %chip96, align 4
  %call114 = call i32 @snd_component_add(ptr noundef %179, ptr noundef %183) #6
  %call115 = call i32 @oxygen_pcm_init(ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %cmp116 = icmp slt i32 %call115, 0
  br i1 %cmp116, label %if.end91.cleanup170_crit_edge, label %if.end118

if.end91.cleanup170_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup170

if.end118:                                        ; preds = %if.end91
  %call119 = call i32 @oxygen_mixer_init(ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp120 = icmp slt i32 %call119, 0
  br i1 %cmp120, label %if.end118.cleanup170_crit_edge, label %if.end122

if.end118.cleanup170_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup170

if.end122:                                        ; preds = %if.end118
  %184 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %device_config.i, align 4
  %and124 = and i32 %185, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %if.end122.if.end146_crit_edge, label %if.then126

if.end122.if.end146_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146

if.then126:                                       ; preds = %if.end122
  %and129 = and i32 %185, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  %spec.select = select i1 %tobool130.not, i32 36, i32 38
  %and135 = lshr i32 %185, 12
  %186 = and i32 %and135, 1
  %187 = or i32 %spec.select, %186
  %188 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %card, align 4
  %190 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %4, align 4
  %add141 = add i32 %191, 160
  %midi = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 5
  %call142 = call i32 @snd_mpu401_uart_new(ptr noundef %189, i32 noundef 0, i16 noundef zeroext 15, i32 noundef %add141, i32 noundef %187, i32 noundef -1, ptr noundef %midi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %cmp143 = icmp slt i32 %call142, 0
  br i1 %cmp143, label %if.then126.cleanup170_crit_edge, label %if.then126.if.end146_crit_edge

if.then126.if.end146_crit_edge:                   ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146

if.then126.cleanup170_crit_edge:                  ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup170

if.end146:                                        ; preds = %if.then126.if.end146_crit_edge, %if.end122.if.end146_crit_edge
  %192 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %card1, align 4
  %call.i.i = call i32 @snd_card_rw_proc_new(ptr noundef %193, ptr noundef nonnull @.str.9, ptr noundef %4, ptr noundef nonnull @oxygen_proc_read, ptr noundef null) #6
  call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #6
  %194 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %device_config.i, align 4
  %and150 = and i32 %195, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %if.end146.if.end154_crit_edge, label %if.then152

if.end146.if.end154_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end154

if.then152:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  %interrupt_mask = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 8
  %196 = ptrtoint ptr %interrupt_mask to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %interrupt_mask, align 4
  %or153 = or i32 %197, 256
  store i32 %or153, ptr %interrupt_mask, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.then152, %if.end146.if.end154_crit_edge
  %198 = ptrtoint ptr %has_ac97_0.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %has_ac97_0.i, align 1
  %200 = ptrtoint ptr %has_ac97_1.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %has_ac97_1.i, align 2
  %or156266 = or i8 %201, %199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or156266)
  %tobool157.not = icmp eq i8 %or156266, 0
  br i1 %tobool157.not, label %if.end154.if.end161_crit_edge, label %if.then158

if.end154.if.end161_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end161

if.then158:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #8
  %interrupt_mask159 = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 8
  %202 = ptrtoint ptr %interrupt_mask159 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %interrupt_mask159, align 4
  %or160 = or i32 %203, 16384
  store i32 %or160, ptr %interrupt_mask159, align 4
  br label %if.end161

if.end161:                                        ; preds = %if.then158, %if.end154.if.end161_crit_edge
  %interrupt_mask162 = getelementptr inbounds %struct.oxygen, ptr %4, i32 0, i32 8
  %204 = ptrtoint ptr %interrupt_mask162 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %interrupt_mask162, align 4
  %conv163 = trunc i32 %205 to i16
  call void @oxygen_write16(ptr noundef %4, i32 noundef 68, i16 noundef zeroext %conv163) #6
  call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #6
  %206 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %card, align 4
  %call165 = call i32 @snd_card_register(ptr noundef %207) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %cmp166 = icmp slt i32 %call165, 0
  br i1 %cmp166, label %if.end161.cleanup170_crit_edge, label %if.end169

if.end161.cleanup170_crit_edge:                   ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup170

if.end169:                                        ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #8
  %208 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %210 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %209, ptr %driver_data.i.i, align 4
  br label %cleanup170

cleanup170:                                       ; preds = %if.end169, %if.end161.cleanup170_crit_edge, %if.then126.cleanup170_crit_edge, %if.end118.cleanup170_crit_edge, %if.end91.cleanup170_crit_edge, %do.end88, %if.then70.cleanup170_crit_edge, %oxygen_restore_eeprom.exit.cleanup170_crit_edge, %oxygen_search_pci_id.exit.cleanup170_crit_edge, %for.inc.i.cleanup170_crit_edge, %if.end.i.cleanup170_crit_edge, %do.end55, %do.end40, %if.end.cleanup170_crit_edge, %entry.cleanup170_crit_edge
  %retval.1 = phi i32 [ %call35, %do.end40 ], [ -6, %do.end55 ], [ %call.i284, %do.end88 ], [ 0, %if.end169 ], [ %call142, %if.then126.cleanup170_crit_edge ], [ %call, %entry.cleanup170_crit_edge ], [ %call31, %if.end.cleanup170_crit_edge ], [ -19, %oxygen_search_pci_id.exit.cleanup170_crit_edge ], [ %call65, %oxygen_restore_eeprom.exit.cleanup170_crit_edge ], [ -12, %if.then70.cleanup170_crit_edge ], [ %call115, %if.end91.cleanup170_crit_edge ], [ %call119, %if.end118.cleanup170_crit_edge ], [ %call165, %if.end161.cleanup170_crit_edge ], [ -19, %if.end.i.cleanup170_crit_edge ], [ -19, %for.inc.i.cleanup170_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #6
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oxygen_spdif_input_bits_changed(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -236
  tail call void @msleep(i32 noundef 1) #6
  %reg_lock = getelementptr i8, ptr %work, i32 -232
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #6
  %call = tail call i32 @oxygen_read32(ptr noundef %add.ptr, i32 noundef 112) #6
  %and = and i32 %call, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %and)
  %cmp = icmp eq i32 %and, 2048
  br i1 %cmp, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then:                                          ; preds = %entry
  %xor = xor i32 %call, 65536
  tail call void @oxygen_write32(ptr noundef %add.ptr, i32 noundef 112, i32 noundef %xor) #6
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #6
  tail call void @msleep(i32 noundef 1) #6
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #6
  %call3 = tail call i32 @oxygen_read32(ptr noundef %add.ptr, i32 noundef 112) #6
  %0 = and i32 %call3, 71680
  call void @__sanitizer_cov_trace_const_cmp4(i32 67584, i32 %0)
  %.not = icmp eq i32 %0, 67584
  br i1 %.not, label %if.then9, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %and10 = and i32 %call3, -65537
  tail call void @oxygen_write32(ptr noundef %add.ptr, i32 noundef 112, i32 noundef %and10) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #6
  %arrayidx = getelementptr i8, ptr %work, i32 -20
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end12.if.end21_crit_edge, label %if.then14

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #6
  %interrupt_mask = getelementptr i8, ptr %work, i32 -76
  %3 = ptrtoint ptr %interrupt_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %interrupt_mask, align 4
  %or16 = or i32 %4, 256
  store i32 %or16, ptr %interrupt_mask, align 4
  %conv = trunc i32 %or16 to i16
  tail call void @oxygen_write16(ptr noundef %add.ptr, i32 noundef 68, i16 noundef zeroext %conv) #6
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #6
  %card = getelementptr i8, ptr %work, i32 -96
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %8, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %6, i32 noundef 1, ptr noundef %id) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %if.end12.if.end21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oxygen_gpio_changed(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_changed = getelementptr i8, ptr %work, i32 708
  %0 = ptrtoint ptr %gpio_changed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_changed, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %work, i32 -280
  tail call void %1(ptr noundef %add.ptr) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oxygen_card_free(ptr nocapture noundef readonly %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %reg_lock.i = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i) #6
  %interrupt_mask.i = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %interrupt_mask.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %interrupt_mask.i, align 4
  %pcm_running.i = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %pcm_running.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %pcm_running.i, align 2
  tail call void @oxygen_write16(ptr noundef %1, i32 noundef 64, i16 noundef zeroext 0) #6
  tail call void @oxygen_write16(ptr noundef %1, i32 noundef 68, i16 noundef zeroext 0) #6
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i) #6
  %spdif_input_bits_work = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 21
  %call = tail call zeroext i1 @flush_work(ptr noundef %spdif_input_bits_work) #6
  %gpio_work = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 22
  %call1 = tail call zeroext i1 @flush_work(ptr noundef %gpio_work) #6
  %cleanup = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 6
  %4 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cleanup, align 4
  tail call void %5(ptr noundef %1) #6
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %mutex) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxygen_interrupt(i32 noundef %dummy, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @oxygen_read16(ptr noundef %dev_id, i32 noundef 70) #6
  %conv = zext i16 %call to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_lock = getelementptr inbounds %struct.oxygen, ptr %dev_id, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #6
  %and = and i32 %conv, 18751
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end13_crit_edge, label %if.then2

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then2:                                         ; preds = %if.end
  %and3 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then2.if.end7_crit_edge, label %if.then5

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %interrupt_mask = getelementptr inbounds %struct.oxygen, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %interrupt_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %interrupt_mask, align 4
  %and6 = and i32 %1, -257
  store i32 %and6, ptr %interrupt_mask, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then2.if.end7_crit_edge
  %interrupt_mask8 = getelementptr inbounds %struct.oxygen, ptr %dev_id, i32 0, i32 8
  %2 = ptrtoint ptr %interrupt_mask8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %interrupt_mask8, align 4
  %neg = xor i32 %and, -1
  %and9 = and i32 %3, %neg
  %conv10 = trunc i32 %and9 to i16
  tail call void @oxygen_write16(ptr noundef %dev_id, i32 noundef 68, i16 noundef zeroext %conv10) #6
  %4 = ptrtoint ptr %interrupt_mask8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interrupt_mask8, align 4
  %conv12 = trunc i32 %5 to i16
  tail call void @oxygen_write16(ptr noundef %dev_id, i32 noundef 68, i16 noundef zeroext %conv12) #6
  br label %if.end13

if.end13:                                         ; preds = %if.end7, %if.end.if.end13_crit_edge
  %pcm_running = getelementptr inbounds %struct.oxygen, ptr %dev_id, i32 0, i32 12
  %6 = ptrtoint ptr %pcm_running to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pcm_running, align 2
  %conv14 = zext i8 %7 to i32
  %and15 = and i32 %conv14, %conv
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #6
  %and18 = and i32 %and15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end13.for.inc_crit_edge, label %land.lhs.true

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end13
  %arrayidx = getelementptr %struct.oxygen, ptr %dev_id, i32 0, i32 19, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool20.not = icmp eq ptr %9, null
  br i1 %tobool20.not, label %land.lhs.true.for.inc_crit_edge, label %if.then21

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %9) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %land.lhs.true.for.inc_crit_edge, %if.end13.for.inc_crit_edge
  %and18.1 = and i32 %and15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.1)
  %tobool19.not.1 = icmp eq i32 %and18.1, 0
  br i1 %tobool19.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.oxygen, ptr %dev_id, i32 0, i32 19, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %tobool20.not.1 = icmp eq ptr %11, null
  br i1 %tobool20.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %if.then21.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then21.1:                                      ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %11) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then21.1, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %and18.2 = and i32 %and15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.2)
  %tobool19.not.2 = icmp eq i32 %and18.2, 0
  br i1 %tobool19.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.oxygen, ptr %dev_id, i32 0, i32 19, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2, align 4
  %tobool20.not.2 = icmp eq ptr %13, null
  br i1 %tobool20.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %if.then21.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then21.2:                                      ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %13) #6
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then21.2, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %and18.3 = and i32 %and15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.3)
  %tobool19.not.3 = icmp eq i32 %and18.3, 0
  br i1 %tobool19.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %arrayidx.3 = getelementptr %struct.oxygen, ptr %dev_id, i32 0, i32 19, i32 3
  %14 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.3, align 4
  %tobool20.not.3 = icmp eq ptr %15, null
  br i1 %tobool20.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %if.then21.3

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.then21.3:                                      ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %15) #6
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then21.3, %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %and18.4 = and i32 %and15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.4)
  %tobool19.not.4 = icmp eq i32 %and18.4, 0
  br i1 %tobool19.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %arrayidx.4 = getelementptr %struct.oxygen, ptr %dev_id, i32 0, i32 19, i32 4
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.4, align 4
  %tobool20.not.4 = icmp eq ptr %17, null
  br i1 %tobool20.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %if.then21.4

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

if.then21.4:                                      ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %17) #6
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then21.4, %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %and18.5 = and i32 %and15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.5)
  %tobool19.not.5 = icmp eq i32 %and18.5, 0
  br i1 %tobool19.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %arrayidx.5 = getelementptr %struct.oxygen, ptr %dev_id, i32 0, i32 19, i32 5
  %18 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.5, align 4
  %tobool20.not.5 = icmp eq ptr %19, null
  br i1 %tobool20.not.5, label %land.lhs.true.5.for.inc.5_crit_edge, label %if.then21.5

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

if.then21.5:                                      ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %19) #6
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then21.5, %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %and25 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %for.inc.5.if.end36_crit_edge, label %if.then27

for.inc.5.if.end36_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then27:                                        ; preds = %for.inc.5
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #6
  %call29 = tail call i32 @oxygen_read32(ptr noundef %dev_id, i32 noundef 112) #6
  %and30 = and i32 %call29, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.then27.if.end34_crit_edge, label %if.then32

if.then27.if.end34_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then32:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @oxygen_write32(ptr noundef %dev_id, i32 noundef 112, i32 noundef %call29) #6
  %spdif_input_bits_work = getelementptr inbounds %struct.oxygen, ptr %dev_id, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %20 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %spdif_input_bits_work) #6
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.then27.if.end34_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #6
  br label %if.end36

if.end36:                                         ; preds = %if.end34, %for.inc.5.if.end36_crit_edge
  %and37 = and i32 %conv, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end41_crit_edge, label %if.then39

if.end36.if.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %gpio_work = getelementptr inbounds %struct.oxygen, ptr %dev_id, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %21 = load ptr, ptr @system_wq, align 4
  %call.i.i94 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %gpio_work) #6
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end36.if.end41_crit_edge
  %and42 = and i32 %conv, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.if.end50_crit_edge, label %if.then44

if.end41.if.end50_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then44:                                        ; preds = %if.end41
  %midi = getelementptr inbounds %struct.oxygen, ptr %dev_id, i32 0, i32 5
  %22 = ptrtoint ptr %midi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %midi, align 4
  %tobool45.not = icmp eq ptr %23, null
  br i1 %tobool45.not, label %if.else, label %if.then46

if.then46:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private_data, align 4
  %call48 = tail call i32 @snd_mpu401_uart_interrupt(i32 noundef 0, ptr noundef %25) #6
  br label %if.end50

if.else:                                          ; preds = %if.then44
  %call.i.i95 = tail call zeroext i8 @oxygen_read8(ptr noundef %dev_id, i32 noundef 161) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i.i95)
  %tobool.not.i = icmp slt i8 %call.i.i95, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body.preheader.i, !prof !88

do.body.preheader.i:                              ; preds = %if.else
  %uart_input_count.i = getelementptr inbounds %struct.oxygen, ptr %dev_id, i32 0, i32 26
  br label %do.body.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i = tail call zeroext i8 @oxygen_read8(ptr noundef %dev_id, i32 noundef 160) #6
  br label %if.end50

do.body.i:                                        ; preds = %cleanup.i.do.body.i_crit_edge, %do.body.preheader.i
  %call5.i = tail call zeroext i8 @oxygen_read8(ptr noundef %dev_id, i32 noundef 160) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %call5.i)
  %cmp.i = icmp eq i8 %call5.i, -2
  br i1 %cmp.i, label %do.body.i.cleanup.i_crit_edge, label %if.end8.i

do.body.i.cleanup.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end8.i:                                        ; preds = %do.body.i
  %26 = ptrtoint ptr %uart_input_count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %uart_input_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %27)
  %cmp9.i = icmp ugt i32 %27, 31
  br i1 %cmp9.i, label %if.then11.i, label %if.end8.i.if.end13.i_crit_edge

if.end8.i.if.end13.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %uart_input_count.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %uart_input_count.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.end8.i.if.end13.i_crit_edge
  %29 = ptrtoint ptr %uart_input_count.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %uart_input_count.i, align 4
  %inc.i = add i32 %30, 1
  store i32 %inc.i, ptr %uart_input_count.i, align 4
  %arrayidx.i = getelementptr %struct.oxygen, ptr %dev_id, i32 0, i32 27, i32 %30
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %call5.i, ptr %arrayidx.i, align 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end13.i, %do.body.i.cleanup.i_crit_edge
  %call.i34.i = tail call zeroext i8 @oxygen_read8(ptr noundef %dev_id, i32 noundef 161) #6
  %tobool16.not.i = icmp slt i8 %call.i34.i, 0
  br i1 %tobool16.not.i, label %do.end.i, label %cleanup.i.do.body.i_crit_edge

cleanup.i.do.body.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.end.i:                                         ; preds = %cleanup.i
  %uart_input17.i = getelementptr inbounds %struct.oxygen, ptr %dev_id, i32 0, i32 28, i32 17
  %32 = ptrtoint ptr %uart_input17.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %uart_input17.i, align 4
  %tobool18.not.i = icmp eq ptr %33, null
  br i1 %tobool18.not.i, label %do.end.i.if.end50_crit_edge, label %if.then19.i

do.end.i.if.end50_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then19.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %33(ptr noundef %dev_id) #6
  br label %if.end50

if.end50:                                         ; preds = %if.then19.i, %do.end.i.if.end50_crit_edge, %if.then.i, %if.then46, %if.end41.if.end50_crit_edge
  %and51 = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end50.cleanup_crit_edge, label %if.then53

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %ac97_waitqueue = getelementptr inbounds %struct.oxygen, ptr %dev_id, i32 0, i32 23
  tail call void @__wake_up(ptr noundef %ac97_waitqueue, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %if.end50.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then53 ], [ 1, %if.end50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oxygen_pcm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oxygen_mixer_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mpu401_uart_new(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write16(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxygen_pci_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %4 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 768, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  %suspend = getelementptr inbounds %struct.oxygen, ptr %3, i32 0, i32 28, i32 7
  %5 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %suspend, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %6(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %reg_lock = getelementptr inbounds %struct.oxygen, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #6
  %interrupt_mask = getelementptr inbounds %struct.oxygen, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %interrupt_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %interrupt_mask, align 4
  store i32 0, ptr %interrupt_mask, align 4
  tail call void @oxygen_write16(ptr noundef %3, i32 noundef 64, i16 noundef zeroext 0) #6
  tail call void @oxygen_write16(ptr noundef %3, i32 noundef 68, i16 noundef zeroext 0) #6
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #6
  %spdif_input_bits_work = getelementptr inbounds %struct.oxygen, ptr %3, i32 0, i32 21
  %call5 = tail call zeroext i1 @flush_work(ptr noundef %spdif_input_bits_work) #6
  %gpio_work = getelementptr inbounds %struct.oxygen, ptr %3, i32 0, i32 22
  %call6 = tail call zeroext i1 @flush_work(ptr noundef %gpio_work) #6
  %9 = ptrtoint ptr %interrupt_mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %interrupt_mask, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxygen_pci_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  tail call void @oxygen_write16(ptr noundef %3, i32 noundef 64, i16 noundef zeroext 0) #6
  tail call void @oxygen_write16(ptr noundef %3, i32 noundef 68, i16 noundef zeroext 0) #6
  %saved_registers = getelementptr inbounds %struct.oxygen, ptr %3, i32 0, i32 24
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.045 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %div3.i = lshr i32 %i.045, 5
  %arrayidx.i = getelementptr i32, ptr @registers_to_restore, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.045, 31
  %shl.i = shl nuw i32 1, %and.i
  %and1.i = and i32 %5, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [256 x i8], ptr %saved_registers, i32 0, i32 %i.045
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  tail call void @oxygen_write8(ptr noundef %3, i32 noundef %i.045, i8 noundef zeroext %7) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %has_ac97_0 = getelementptr inbounds %struct.oxygen, ptr %3, i32 0, i32 15
  %8 = ptrtoint ptr %has_ac97_0 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_ac97_0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %for.end.if.end4_crit_edge, label %if.then3

for.end.if.end4_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %for.end
  tail call void @oxygen_write_ac97(ptr noundef %3, i32 noundef 0, i32 noundef 0, i16 noundef zeroext 0) #6
  tail call void @msleep(i32 noundef 1) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then3
  %i.012.i = phi i32 [ 1, %if.then3 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %div3.i.i = lshr i32 %i.012.i, 5
  %arrayidx.i.i = getelementptr i32, ptr @ac97_registers_to_restore, i32 %div3.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %i.012.i, 31
  %shl.i.i = shl nuw i32 1, %and.i.i
  %and1.i.i = and i32 %shl.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = shl nuw nsw i32 %i.012.i, 1
  %arrayidx2.i = getelementptr %struct.oxygen, ptr %3, i32 0, i32 25, i32 0, i32 %i.012.i
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx2.i, align 2
  tail call void @oxygen_write_ac97(ptr noundef %3, i32 noundef 0, i32 noundef %mul.i, i16 noundef zeroext %13) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.inc.i.if.end4_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end4_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end4:                                          ; preds = %for.inc.i.if.end4_crit_edge, %for.end.if.end4_crit_edge
  %has_ac97_1 = getelementptr inbounds %struct.oxygen, ptr %3, i32 0, i32 16
  %14 = ptrtoint ptr %has_ac97_1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %has_ac97_1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not = icmp eq i8 %15, 0
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  tail call void @oxygen_write_ac97(ptr noundef %3, i32 noundef 1, i32 noundef 0, i16 noundef zeroext 0) #6
  tail call void @msleep(i32 noundef 1) #6
  br label %for.body.i37

for.body.i37:                                     ; preds = %for.inc.i43.for.body.i37_crit_edge, %if.then6
  %i.012.i30 = phi i32 [ 1, %if.then6 ], [ %inc.i41, %for.inc.i43.for.body.i37_crit_edge ]
  %div3.i.i31 = lshr i32 %i.012.i30, 5
  %arrayidx.i.i32 = getelementptr i32, ptr getelementptr inbounds ([2 x [2 x i32]], ptr @ac97_registers_to_restore, i32 0, i32 1), i32 %div3.i.i31
  %16 = ptrtoint ptr %arrayidx.i.i32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i32, align 4
  %and.i.i33 = and i32 %i.012.i30, 31
  %shl.i.i34 = shl nuw i32 1, %and.i.i33
  %and1.i.i35 = and i32 %shl.i.i34, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i35)
  %tobool.not.i36 = icmp eq i32 %and1.i.i35, 0
  br i1 %tobool.not.i36, label %for.body.i37.for.inc.i43_crit_edge, label %if.then.i40

for.body.i37.for.inc.i43_crit_edge:               ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i43

if.then.i40:                                      ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i38 = shl nuw nsw i32 %i.012.i30, 1
  %arrayidx2.i39 = getelementptr %struct.oxygen, ptr %3, i32 0, i32 25, i32 1, i32 %i.012.i30
  %18 = ptrtoint ptr %arrayidx2.i39 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx2.i39, align 2
  tail call void @oxygen_write_ac97(ptr noundef %3, i32 noundef 1, i32 noundef %mul.i38, i16 noundef zeroext %19) #6
  br label %for.inc.i43

for.inc.i43:                                      ; preds = %if.then.i40, %for.body.i37.for.inc.i43_crit_edge
  %inc.i41 = add nuw nsw i32 %i.012.i30, 1
  %exitcond.not.i42 = icmp eq i32 %inc.i41, 64
  br i1 %exitcond.not.i42, label %for.inc.i43.if.end7_crit_edge, label %for.inc.i43.for.body.i37_crit_edge

for.inc.i43.for.body.i37_crit_edge:               ; preds = %for.inc.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i37

for.inc.i43.if.end7_crit_edge:                    ; preds = %for.inc.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end7:                                          ; preds = %for.inc.i43.if.end7_crit_edge, %if.end4.if.end7_crit_edge
  %resume = getelementptr inbounds %struct.oxygen, ptr %3, i32 0, i32 28, i32 8
  %20 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %resume, align 4
  %tobool8.not = icmp eq ptr %21, null
  br i1 %tobool8.not, label %if.end7.if.end12_crit_edge, label %if.then9

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %21(ptr noundef %3) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7.if.end12_crit_edge
  %interrupt_mask = getelementptr inbounds %struct.oxygen, ptr %3, i32 0, i32 8
  %22 = ptrtoint ptr %interrupt_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %interrupt_mask, align 4
  %conv = trunc i32 %23 to i16
  tail call void @oxygen_write16(ptr noundef %3, i32 noundef 68, i16 noundef zeroext %conv) #6
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %24 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @oxygen_pci_shutdown(ptr nocapture noundef readonly %pci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %reg_lock.i = getelementptr inbounds %struct.oxygen, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i) #6
  %interrupt_mask.i = getelementptr inbounds %struct.oxygen, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %interrupt_mask.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %interrupt_mask.i, align 4
  %pcm_running.i = getelementptr inbounds %struct.oxygen, ptr %3, i32 0, i32 12
  %5 = ptrtoint ptr %pcm_running.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %pcm_running.i, align 2
  tail call void @oxygen_write16(ptr noundef %3, i32 noundef 64, i16 noundef zeroext 0) #6
  tail call void @oxygen_write16(ptr noundef %3, i32 noundef 68, i16 noundef zeroext 0) #6
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i) #6
  %cleanup = getelementptr inbounds %struct.oxygen, ptr %3, i32 0, i32 28, i32 6
  %6 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cleanup, align 4
  tail call void %7(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oxygen_read32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @oxygen_read_eeprom(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write8_masked(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write_eeprom(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_match_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @oxygen_read8(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @oxygen_read16(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write32_masked(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write_ac97(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write16_masked(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write_ac97_masked(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mpu401_uart_interrupt(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @oxygen_proc_read(ptr nocapture noundef readonly %entry1, ptr noundef %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call zeroext i8 @oxygen_read8(ptr noundef %1, i32 noundef 230) #6
  %2 = and i8 %call, 7
  %and = zext i8 %2 to i32
  %switch.tableidx = add nsw i32 %and, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %3 = icmp ult i32 %switch.tableidx, 4
  br i1 %3, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.oxygen_proc_read, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %i.0 = phi i32 [ %switch.load, %switch.lookup ], [ 63, %entry.sw.epilog_crit_edge ]
  %5 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %6, ptr noundef nonnull @.str.26, i32 noundef %i.0) #6
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %sw.epilog
  %i.1119 = phi i32 [ 0, %sw.epilog ], [ %add16, %for.end.for.body_crit_edge ]
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef nonnull @.str.27, i32 noundef %i.1119) #6
  br label %for.body10

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.body
  %j.0118 = phi i32 [ 0, %for.body ], [ %inc, %for.body10.for.body10_crit_edge ]
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer, align 4
  %add = add nuw nsw i32 %j.0118, %i.1119
  %call12 = tail call zeroext i8 @oxygen_read8(ptr noundef %1, i32 noundef %add) #6
  %conv13 = zext i8 %call12 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %10, ptr noundef nonnull @.str.28, i32 noundef %conv13) #6
  %inc = add nuw nsw i32 %j.0118, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body10.for.body10_crit_edge

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body10

for.end:                                          ; preds = %for.body10
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %12, ptr noundef nonnull @.str.29) #6
  %add16 = add nuw nsw i32 %i.1119, 16
  %cmp = icmp ult i32 %i.1119, 240
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end17

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end17:                                        ; preds = %for.end
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  %call18 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %for.end17.cleanup_crit_edge, label %if.end

for.end17.cleanup_crit_edge:                      ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.end17
  %has_ac97_0 = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %has_ac97_0 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %has_ac97_0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.end.if.end43_crit_edge, label %if.then21

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then21:                                        ; preds = %if.end
  %15 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %16, ptr noundef nonnull @.str.30) #6
  br label %for.body26

for.body26:                                       ; preds = %for.body26.for.body26_crit_edge, %if.then21
  %i.2121 = phi i32 [ 0, %if.then21 ], [ %add41, %for.body26.for.body26_crit_edge ]
  %17 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %18, ptr noundef nonnull @.str.27, i32 noundef %i.2121) #6
  %19 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer, align 4
  %call34 = tail call zeroext i16 @oxygen_read_ac97(ptr noundef %1, i32 noundef 0, i32 noundef %i.2121) #6
  %conv35 = zext i16 %call34 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %20, ptr noundef nonnull @.str.31, i32 noundef %conv35) #6
  %21 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer, align 4
  %add33.1 = or i32 %i.2121, 2
  %call34.1 = tail call zeroext i16 @oxygen_read_ac97(ptr noundef %1, i32 noundef 0, i32 noundef %add33.1) #6
  %conv35.1 = zext i16 %call34.1 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %22, ptr noundef nonnull @.str.31, i32 noundef %conv35.1) #6
  %23 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buffer, align 4
  %add33.2 = or i32 %i.2121, 4
  %call34.2 = tail call zeroext i16 @oxygen_read_ac97(ptr noundef %1, i32 noundef 0, i32 noundef %add33.2) #6
  %conv35.2 = zext i16 %call34.2 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %24, ptr noundef nonnull @.str.31, i32 noundef %conv35.2) #6
  %25 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buffer, align 4
  %add33.3 = or i32 %i.2121, 6
  %call34.3 = tail call zeroext i16 @oxygen_read_ac97(ptr noundef %1, i32 noundef 0, i32 noundef %add33.3) #6
  %conv35.3 = zext i16 %call34.3 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %26, ptr noundef nonnull @.str.31, i32 noundef %conv35.3) #6
  %27 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buffer, align 4
  %add33.4 = or i32 %i.2121, 8
  %call34.4 = tail call zeroext i16 @oxygen_read_ac97(ptr noundef %1, i32 noundef 0, i32 noundef %add33.4) #6
  %conv35.4 = zext i16 %call34.4 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %28, ptr noundef nonnull @.str.31, i32 noundef %conv35.4) #6
  %29 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buffer, align 4
  %add33.5 = or i32 %i.2121, 10
  %call34.5 = tail call zeroext i16 @oxygen_read_ac97(ptr noundef %1, i32 noundef 0, i32 noundef %add33.5) #6
  %conv35.5 = zext i16 %call34.5 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %30, ptr noundef nonnull @.str.31, i32 noundef %conv35.5) #6
  %31 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buffer, align 4
  %add33.6 = or i32 %i.2121, 12
  %call34.6 = tail call zeroext i16 @oxygen_read_ac97(ptr noundef %1, i32 noundef 0, i32 noundef %add33.6) #6
  %conv35.6 = zext i16 %call34.6 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %32, ptr noundef nonnull @.str.31, i32 noundef %conv35.6) #6
  %33 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buffer, align 4
  %add33.7 = or i32 %i.2121, 14
  %call34.7 = tail call zeroext i16 @oxygen_read_ac97(ptr noundef %1, i32 noundef 0, i32 noundef %add33.7) #6
  %conv35.7 = zext i16 %call34.7 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %34, ptr noundef nonnull @.str.31, i32 noundef %conv35.7) #6
  %35 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %36, ptr noundef nonnull @.str.29) #6
  %add41 = add nuw nsw i32 %i.2121, 16
  %cmp24 = icmp ult i32 %i.2121, 112
  br i1 %cmp24, label %for.body26.for.body26_crit_edge, label %for.body26.if.end43_crit_edge

for.body26.if.end43_crit_edge:                    ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

for.body26.for.body26_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body26

if.end43:                                         ; preds = %for.body26.if.end43_crit_edge, %if.end.if.end43_crit_edge
  %has_ac97_1 = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 16
  %37 = ptrtoint ptr %has_ac97_1 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %has_ac97_1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool44.not = icmp eq i8 %38, 0
  br i1 %tobool44.not, label %if.end43.if.end67_crit_edge, label %if.then45

if.end43.if.end67_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then45:                                        ; preds = %if.end43
  %39 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %40, ptr noundef nonnull @.str.32) #6
  br label %for.body50

for.body50:                                       ; preds = %for.body50.for.body50_crit_edge, %if.then45
  %i.3123 = phi i32 [ 0, %if.then45 ], [ %add65, %for.body50.for.body50_crit_edge ]
  %41 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %42, ptr noundef nonnull @.str.27, i32 noundef %i.3123) #6
  %43 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buffer, align 4
  %call58 = tail call zeroext i16 @oxygen_read_ac97(ptr noundef %1, i32 noundef 1, i32 noundef %i.3123) #6
  %conv59 = zext i16 %call58 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %44, ptr noundef nonnull @.str.31, i32 noundef %conv59) #6
  %45 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buffer, align 4
  %add57.1 = or i32 %i.3123, 2
  %call58.1 = tail call zeroext i16 @oxygen_read_ac97(ptr noundef %1, i32 noundef 1, i32 noundef %add57.1) #6
  %conv59.1 = zext i16 %call58.1 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %46, ptr noundef nonnull @.str.31, i32 noundef %conv59.1) #6
  %47 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %buffer, align 4
  %add57.2 = or i32 %i.3123, 4
  %call58.2 = tail call zeroext i16 @oxygen_read_ac97(ptr noundef %1, i32 noundef 1, i32 noundef %add57.2) #6
  %conv59.2 = zext i16 %call58.2 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %48, ptr noundef nonnull @.str.31, i32 noundef %conv59.2) #6
  %49 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %buffer, align 4
  %add57.3 = or i32 %i.3123, 6
  %call58.3 = tail call zeroext i16 @oxygen_read_ac97(ptr noundef %1, i32 noundef 1, i32 noundef %add57.3) #6
  %conv59.3 = zext i16 %call58.3 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %50, ptr noundef nonnull @.str.31, i32 noundef %conv59.3) #6
  %51 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buffer, align 4
  %add57.4 = or i32 %i.3123, 8
  %call58.4 = tail call zeroext i16 @oxygen_read_ac97(ptr noundef %1, i32 noundef 1, i32 noundef %add57.4) #6
  %conv59.4 = zext i16 %call58.4 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %52, ptr noundef nonnull @.str.31, i32 noundef %conv59.4) #6
  %53 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %buffer, align 4
  %add57.5 = or i32 %i.3123, 10
  %call58.5 = tail call zeroext i16 @oxygen_read_ac97(ptr noundef %1, i32 noundef 1, i32 noundef %add57.5) #6
  %conv59.5 = zext i16 %call58.5 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %54, ptr noundef nonnull @.str.31, i32 noundef %conv59.5) #6
  %55 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %buffer, align 4
  %add57.6 = or i32 %i.3123, 12
  %call58.6 = tail call zeroext i16 @oxygen_read_ac97(ptr noundef %1, i32 noundef 1, i32 noundef %add57.6) #6
  %conv59.6 = zext i16 %call58.6 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %56, ptr noundef nonnull @.str.31, i32 noundef %conv59.6) #6
  %57 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buffer, align 4
  %add57.7 = or i32 %i.3123, 14
  %call58.7 = tail call zeroext i16 @oxygen_read_ac97(ptr noundef %1, i32 noundef 1, i32 noundef %add57.7) #6
  %conv59.7 = zext i16 %call58.7 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %58, ptr noundef nonnull @.str.31, i32 noundef %conv59.7) #6
  %59 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %60, ptr noundef nonnull @.str.29) #6
  %add65 = add nuw nsw i32 %i.3123, 16
  %cmp48 = icmp ult i32 %i.3123, 112
  br i1 %cmp48, label %for.body50.for.body50_crit_edge, label %for.body50.if.end67_crit_edge

for.body50.if.end67_crit_edge:                    ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

for.body50.for.body50_crit_edge:                  ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body50

if.end67:                                         ; preds = %for.body50.if.end67_crit_edge, %if.end43.if.end67_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  %dump_registers = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 19
  %61 = ptrtoint ptr %dump_registers to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dump_registers, align 4
  %tobool69.not = icmp eq ptr %62, null
  br i1 %tobool69.not, label %if.end67.cleanup_crit_edge, label %if.then70

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %62(ptr noundef %1, ptr noundef %buffer) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %if.end67.cleanup_crit_edge, %for.end17.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @oxygen_read_ac97(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/oxygen/oxygen_lib.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/oxygen/oxygen_lib.c", i32 24, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/oxygen/oxygen_lib.c", i32 25, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @oxygen_pci_probe.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../sound/pci/oxygen/oxygen_lib.c", i32 601, i32 2}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @oxygen_pci_probe.__key.1, !11, !"__key", i1 false, i1 false}
!11 = !{!"../sound/pci/oxygen/oxygen_lib.c", i32 602, i32 2}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @oxygen_pci_probe.__key.3, !14, !"__key", i1 false, i1 false}
!14 = !{!"../sound/pci/oxygen/oxygen_lib.c", i32 603, i32 2}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @oxygen_pci_probe.__key.5, !17, !"__key", i1 false, i1 false}
!17 = !{!"../sound/pci/oxygen/oxygen_lib.c", i32 605, i32 2}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @oxygen_pci_probe.__key.7, !20, !"__key", i1 false, i1 false}
!20 = !{!"../sound/pci/oxygen/oxygen_lib.c", i32 606, i32 2}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/oxygen/oxygen_lib.c", i32 612, i32 33}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/pci/oxygen/oxygen_lib.c", i32 614, i32 3}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @oxygen_pci_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @oxygen_pci_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/pci/oxygen/oxygen_lib.c", i32 620, i32 3}
!34 = !{ptr @oxygen_pci_probe._entry.15, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @oxygen_pci_probe._entry_ptr.17, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/pci/oxygen/oxygen_lib.c", i32 650, i32 24}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/pci/oxygen/oxygen_lib.c", i32 652, i32 3}
!40 = !{ptr @oxygen_pci_probe._entry.19, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @oxygen_pci_probe._entry_ptr.21, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/pci/oxygen/oxygen_lib.c", i32 660, i32 26}
!44 = !{ptr @__ksymtab_oxygen_pci_probe, !45, !"__ksymtab_oxygen_pci_probe", i1 false, i1 false}
!45 = !{!"../sound/pci/oxygen/oxygen_lib.c", i32 704, i32 1}
!46 = !{ptr @oxygen_pci_pm, !47, !"oxygen_pci_pm", i1 false, i1 false}
!47 = !{!"../sound/pci/oxygen/oxygen_lib.c", i32 782, i32 1}
!48 = !{ptr @__ksymtab_oxygen_pci_pm, !49, !"__ksymtab_oxygen_pci_pm", i1 false, i1 false}
!49 = !{!"../sound/pci/oxygen/oxygen_lib.c", i32 783, i32 1}
!50 = !{ptr @__ksymtab_oxygen_pci_shutdown, !51, !"__ksymtab_oxygen_pci_shutdown", i1 false, i1 false}
!51 = !{!"../sound/pci/oxygen/oxygen_lib.c", i32 794, i32 1}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/oxygen/oxygen_lib.c", i32 297, i32 3}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @oxygen_restore_eeprom._entry, !53, !"_entry", i1 false, i1 false}
!57 = !{ptr @oxygen_restore_eeprom._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @configure_pcie_bridge.bridge_ids, !59, !"bridge_ids", i1 false, i1 false}
!59 = !{!"../sound/pci/oxygen/oxygen_lib.c", i32 304, i32 36}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/pci/oxygen/oxygen_lib.c", i32 199, i32 2}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/pci/oxygen/oxygen_lib.c", i32 201, i32 3}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/pci/oxygen/oxygen_lib.c", i32 203, i32 4}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/pci/oxygen/oxygen_lib.c", i32 204, i32 3}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/pci/oxygen/oxygen_lib.c", i32 209, i32 3}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/pci/oxygen/oxygen_lib.c", i32 213, i32 5}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/pci/oxygen/oxygen_lib.c", i32 219, i32 3}
!74 = !{ptr @registers_to_restore, !75, !"registers_to_restore", i1 false, i1 false}
!75 = !{!"../sound/pci/oxygen/oxygen_lib.c", i32 731, i32 18}
!76 = !{ptr @ac97_registers_to_restore, !77, !"ac97_registers_to_restore", i1 false, i1 false}
!77 = !{!"../sound/pci/oxygen/oxygen_lib.c", i32 735, i32 18}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{!"auto-init"}
!88 = !{!"branch_weights", i32 1, i32 2000}
