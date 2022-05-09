; ModuleID = '/llk/IR_all_yes/sound/pci/emu10k1/io.c_pt.bc'
source_filename = "../sound/pci/emu10k1/io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_emu10k1_ptr_read\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_emu10k1_ptr_read\09\09\09\09"
module asm "\09.long\09__crc_snd_emu10k1_ptr_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_emu10k1_ptr_read:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_emu10k1_ptr_read\22\09\09\09\09\09"
module asm "__kstrtabns_snd_emu10k1_ptr_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_emu10k1_ptr_write\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_emu10k1_ptr_write\09\09\09\09"
module asm "\09.long\09__crc_snd_emu10k1_ptr_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_emu10k1_ptr_write:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_emu10k1_ptr_write\22\09\09\09\09\09"
module asm "__kstrtabns_snd_emu10k1_ptr_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_emu10k1 = type { i32, i32, i8, ptr, i32, i32, i32, i16, i32, i32, i32, i32, i8, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.snd_dma_device, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, [3 x i32], i32, [4 x [2 x i8]], %struct.snd_emu10k1_fx8010, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, [64 x %struct.snd_emu10k1_voice], [4 x %struct.snd_emu10k1_voice], %struct.snd_emu10k1_voice, i32, i32, i32, %struct.snd_emu1010, [32 x %struct.snd_emu10k1_pcm_mixer], [16 x %struct.snd_emu10k1_pcm_mixer], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi, [2 x i32], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_emu10k1_fx8010 = type { i16, i16, i16, i16, i32, %struct.snd_dma_buffer, i32, [128 x i8], i32, i32, %struct.list_head, %struct.mutex, [8 x %struct.snd_emu10k1_fx8010_pcm], %struct.spinlock, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_emu10k1_fx8010_pcm = type { i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, [32 x i8], %struct.snd_pcm_indirect, i32, i32, %struct.snd_emu10k1_fx8010_irq }
%struct.snd_pcm_indirect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_emu10k1_fx8010_irq = type { ptr, ptr, i16, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.snd_emu10k1_voice = type { ptr, i32, i8, ptr, ptr }
%struct.snd_emu1010 = type { [64 x i32], [64 x i32], i32, i32, i32, i32, i32, %struct.delayed_work, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_emu10k1_pcm_mixer = type { [3 x [8 x i8]], [3 x [8 x i8]], [3 x i16], ptr }
%struct.snd_emu10k1_midi = type { ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, ptr }
%struct.snd_emu_chip_details = type { i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.74, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.74 = type { i32, [28 x i8] }

@__kstrtab_snd_emu10k1_ptr_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_emu10k1_ptr_read = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_emu10k1_ptr_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_emu10k1_ptr_read to i32), ptr @__kstrtab_snd_emu10k1_ptr_read, ptr @__kstrtabns_snd_emu10k1_ptr_read }, section "___ksymtab+snd_emu10k1_ptr_read", align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sound/pci/emu10k1/io.c\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_snd_emu10k1_ptr_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_emu10k1_ptr_write = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_emu10k1_ptr_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_emu10k1_ptr_write to i32), ptr @__kstrtab_snd_emu10k1_ptr_write, ptr @__kstrtabns_snd_emu10k1_ptr_write }, section "___ksymtab+snd_emu10k1_ptr_write", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@snd_emu10k1_i2c_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 185, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"i2c_write: invalid values.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_emu10k1_i2c_write\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_emu10k1_i2c_write._entry_ptr = internal global ptr @snd_emu10k1_i2c_write._entry, section ".printk_index", align 4
@snd_emu10k1_i2c_write._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str, i32 215, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"emu10k1:I2C:timeout status=0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@snd_emu10k1_i2c_write._entry_ptr.8 = internal global ptr @snd_emu10k1_i2c_write._entry.5, section ".printk_index", align 4
@snd_emu10k1_i2c_write._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str, i32 225, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Writing to ADC failed!\0A\00", [40 x i8] zeroinitializer }, align 32
@snd_emu10k1_i2c_write._entry_ptr.11 = internal global ptr @snd_emu10k1_i2c_write._entry.9, section ".printk_index", align 4
@snd_emu10k1_i2c_write._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str, i32 227, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"status=0x%x, reg=%d, value=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@snd_emu10k1_i2c_write._entry_ptr.14 = internal global ptr @snd_emu10k1_i2c_write._entry.12, section ".printk_index", align 4
@snd_emu10k1_rate_to_pitch.logMagTable = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 0, i32 11772, i32 23454, i32 35046, i32 46550, i32 57967, i32 69299, i32 80546, i32 91711, i32 102794, i32 113796, i32 124718, i32 135563, i32 146330, i32 157021, i32 167637, i32 178179, i32 188648, i32 199045, i32 209371, i32 219627, i32 229814, i32 239933, i32 249985, i32 259970, i32 269890, i32 279745, i32 289537, i32 299265, i32 308932, i32 318537, i32 328081, i32 337566, i32 346991, i32 356358, i32 365667, i32 374920, i32 384116, i32 393257, i32 402343, i32 411374, i32 420352, i32 429277, i32 438150, i32 446970, i32 455740, i32 464459, i32 473129, i32 481748, i32 490319, i32 498842, i32 507317, i32 515745, i32 524126, i32 532461, i32 540750, i32 548994, i32 557193, i32 565348, i32 573460, i32 581528, i32 589553, i32 597536, i32 605478, i32 613377, i32 621236, i32 629054, i32 636831, i32 644569, i32 652268, i32 659928, i32 667549, i32 675132, i32 682677, i32 690184, i32 697655, i32 705089, i32 712486, i32 719847, i32 727173, i32 734464, i32 741719, i32 748940, i32 756127, i32 763279, i32 770398, i32 777484, i32 784537, i32 791556, i32 798544, i32 805499, i32 812423, i32 819315, i32 826175, i32 833005, i32 839804, i32 846572, i32 853311, i32 860019, i32 866698, i32 873348, i32 879968, i32 886560, i32 893123, i32 899658, i32 906164, i32 912643, i32 919094, i32 925518, i32 931914, i32 938284, i32 944627, i32 950943, i32 957233, i32 963497, i32 969736, i32 975948, i32 982136, i32 988298, i32 994435, i32 1000547, i32 1006634, i32 1012698, i32 1018737, i32 1024752, i32 1030743, i32 1036711, i32 1042655], [128 x i8] zeroinitializer }, align 32
@snd_emu10k1_rate_to_pitch.logSlopeTable = internal constant { [128 x i8], [32 x i8] } { [128 x i8] c"\\\\[ZZYXXWVVUUTSSRRQQPPOONMMMLLKKJJIIHHGGGFFEEEDDCCCBBBAAA@@@???>>>===<<<;;;;:::99998888777766665555444443333222221111100000/////", [32 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 60, i32 6 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 185, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 213, i32 5 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 225, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 226, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"logMagTable\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 513, i32 19 }
@___asan_gen_.57 = private unnamed_addr constant [14 x i8] c"logSlopeTable\00", align 1
@___asan_gen_.58 = private constant [26 x i8] c"../sound/pci/emu10k1/io.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 531, i32 20 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__ksymtab_snd_emu10k1_ptr_read, ptr @__ksymtab_snd_emu10k1_ptr_write, ptr @snd_emu10k1_i2c_write._entry, ptr @snd_emu10k1_i2c_write._entry.12, ptr @snd_emu10k1_i2c_write._entry.5, ptr @snd_emu10k1_i2c_write._entry.9, ptr @snd_emu10k1_i2c_write._entry_ptr, ptr @snd_emu10k1_i2c_write._entry_ptr.11, ptr @snd_emu10k1_i2c_write._entry_ptr.14, ptr @snd_emu10k1_i2c_write._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @snd_emu10k1_rate_to_pitch.logMagTable, ptr @snd_emu10k1_rate_to_pitch.logSlopeTable], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_i2c_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_i2c_write._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_i2c_write._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_i2c_write._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_rate_to_pitch.logMagTable to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_rate_to_pitch.logSlopeTable to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu10k1_ptr_read(ptr noundef %emu, i32 noundef %reg, i32 noundef %chn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 4
  %0 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %cond = select i1 %tobool.not, i32 134152192, i32 268369920
  %shl = shl i32 %reg, 16
  %and = and i32 %cond, %shl
  %and1 = and i32 %chn, 63
  %or = or i32 %and, %and1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %reg)
  %tobool3.not = icmp ult i32 %reg, 16777216
  br i1 %tobool3.not, label %do.body35, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shr = lshr i32 %reg, 24
  %conv = and i32 %shr, 63
  %shr5 = lshr i32 %reg, 16
  %conv7 = and i32 %shr5, 31
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  %shl11 = shl i32 %sub, %conv7
  %emu_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 42
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %and20 = and i32 %4, 1048575
  %add21 = or i32 %and20, -18874368
  %5 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %5, i32 %2) #6, !srcloc !40
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %add24 = add i32 %7, 4
  %and25 = and i32 %add24, 1048575
  %add26 = or i32 %and25, -18874368
  %8 = inttoptr i32 %add26 to ptr
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %8) #6, !srcloc !41
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call14) #6
  %and31 = and i32 %10, %shl11
  %shr33 = lshr i32 %and31, %conv7
  br label %cleanup

do.body35:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %emu_lock41 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 42
  %call43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock41) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %or)
  %port51 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %12 = ptrtoint ptr %port51 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port51, align 4
  %and53 = and i32 %13, 1048575
  %add54 = or i32 %and53, -18874368
  %14 = inttoptr i32 %add54 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %11) #6, !srcloc !40
  %15 = ptrtoint ptr %port51 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port51, align 4
  %add58 = add i32 %16, 4
  %and59 = and i32 %add58, 1048575
  %add60 = or i32 %and59, -18874368
  %17 = inttoptr i32 %add60 to ptr
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %17) #6, !srcloc !41
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock41, i32 noundef %call43) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body35, %if.then
  %retval.0 = phi i32 [ %shr33, %if.then ], [ %19, %do.body35 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emu10k1_ptr_write(ptr noundef %emu, i32 noundef %reg, i32 noundef %chn, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %emu, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !45

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 60, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %audigy = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 4
  %0 = ptrtoint ptr %audigy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %audigy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool24.not = icmp eq i32 %1, 0
  %cond = select i1 %tobool24.not, i32 134152192, i32 268369920
  %shl = shl i32 %reg, 16
  %and = and i32 %cond, %shl
  %and25 = and i32 %chn, 63
  %or = or i32 %and, %and25
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %reg)
  %tobool27.not = icmp ult i32 %reg, 16777216
  br i1 %tobool27.not, label %do.body74, label %if.then28

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %shr = lshr i32 %reg, 24
  %conv = and i32 %shr, 63
  %shr30 = lshr i32 %reg, 16
  %conv32 = and i32 %shr30, 31
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  %shl36 = shl i32 %sub, %conv32
  %shl38 = shl i32 %data, %conv32
  %and39 = and i32 %shl36, %shl38
  %emu_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 42
  %call44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %and52 = and i32 %4, 1048575
  %add53 = or i32 %and52, -18874368
  %5 = inttoptr i32 %add53 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %5, i32 %2) #6, !srcloc !40
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %add56 = add i32 %7, 4
  %and57 = and i32 %add56, 1048575
  %add58 = or i32 %and57, -18874368
  %8 = inttoptr i32 %add58 to ptr
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %8) #6, !srcloc !41
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  %neg = xor i32 %shl36, -1
  %and62 = and i32 %10, %neg
  %or63 = or i32 %and62, %and39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %or63)
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add68 = add i32 %13, 4
  %and69 = and i32 %add68, 1048575
  %add70 = or i32 %and69, -18874368
  %14 = inttoptr i32 %add70 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %11) #6, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call44) #6
  br label %cleanup

do.body74:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %emu_lock80 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 42
  %call82 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock80) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %15 = tail call i32 @llvm.bswap.i32(i32 %or)
  %port90 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %16 = ptrtoint ptr %port90 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port90, align 4
  %and92 = and i32 %17, 1048575
  %add93 = or i32 %and92, -18874368
  %18 = inttoptr i32 %add93 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %18, i32 %15) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  tail call void @arm_heavy_mb() #6
  %19 = tail call i32 @llvm.bswap.i32(i32 %data)
  %20 = ptrtoint ptr %port90 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port90, align 4
  %add99 = add i32 %21, 4
  %and100 = and i32 %add99, 1048575
  %add101 = or i32 %and100, -18874368
  %22 = inttoptr i32 %add101 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 %19) #6, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock80, i32 noundef %call82) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body74, %if.then28, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu10k1_ptr20_read(ptr noundef %emu, i32 noundef %reg, i32 noundef %chn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %reg, 16
  %or = or i32 %shl, %chn
  %emu_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 42
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %or)
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %port, align 4
  %add = add i32 %2, 32
  %and = and i32 %add, 1048575
  %add9 = or i32 %and, -18874368
  %3 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %3, i32 %0) #6, !srcloc !40
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %add13 = add i32 %5, 36
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %6 = inttoptr i32 %add15 to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #6, !srcloc !41
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call2) #6
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emu10k1_ptr20_write(ptr noundef %emu, i32 noundef %reg, i32 noundef %chn, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %reg, 16
  %or = or i32 %shl, %chn
  %emu_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 42
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %or)
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %port, align 4
  %add = add i32 %2, 32
  %and = and i32 %add, 1048575
  %add9 = or i32 %and, -18874368
  %3 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %3, i32 %0) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %data)
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port, align 4
  %add16 = add i32 %6, 36
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %7 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %7, i32 %4) #6, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu10k1_spi_write(ptr noundef %emu, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %spi_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 44
  tail call void @_raw_spin_lock(ptr noundef %spi_lock) #6
  %card_capabilities = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 3
  %0 = ptrtoint ptr %card_capabilities to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card_capabilities, align 4
  %ca0108_chip = getelementptr inbounds %struct.snd_emu_chip_details, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ca0108_chip to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ca0108_chip, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %data)
  %cmp = icmp ugt i32 %data, 65535
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.spi_write_exit_crit_edge, label %if.end2

entry.spi_write_exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write_exit

if.end2:                                          ; preds = %entry
  %emu_lock.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 42
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %port.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %4 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port.i, align 4
  %add.i = add i32 %5, 32
  %and.i = and i32 %add.i, 1048575
  %add9.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %6, i32 15360) #6, !srcloc !40
  %7 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port.i, align 4
  %add13.i = add i32 %8, 36
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %9 = inttoptr i32 %add15.i to ptr
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #6, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #6
  %11 = and i32 %10, 64767
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %or = or i32 %12, %data
  %or4 = or i32 %or, 131072
  %call2.i42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port.i, align 4
  %add.i44 = add i32 %14, 32
  %and.i45 = and i32 %add.i44, 1048575
  %add9.i46 = or i32 %and.i45, -18874368
  %15 = inttoptr i32 %add9.i46 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 15360) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %or4) #6
  %17 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port.i, align 4
  %add16.i = add i32 %18, 36
  %and17.i = and i32 %add16.i, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %19 = inttoptr i32 %add18.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %19, i32 %16) #6, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i42) #6
  %call2.i48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %port.i, align 4
  %add.i50 = add i32 %21, 32
  %and.i51 = and i32 %add.i50, 1048575
  %add9.i52 = or i32 %and.i51, -18874368
  %22 = inttoptr i32 %add9.i52 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 15360) #6, !srcloc !40
  %23 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port.i, align 4
  %add13.i53 = add i32 %24, 36
  %and14.i54 = and i32 %add13.i53, 1048575
  %add15.i55 = or i32 %and14.i54, -18874368
  %25 = inttoptr i32 %add15.i55 to ptr
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %25) #6, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i48) #6
  %or6 = or i32 %or, 196608
  %call2.i57 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port.i, align 4
  %add.i59 = add i32 %28, 32
  %and.i60 = and i32 %add.i59, 1048575
  %add9.i61 = or i32 %and.i60, -18874368
  %29 = inttoptr i32 %add9.i61 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %29, i32 15360) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %30 = tail call i32 @llvm.bswap.i32(i32 %or6) #6
  %31 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port.i, align 4
  %add16.i62 = add i32 %32, 36
  %and17.i63 = and i32 %add16.i62, 1048575
  %add18.i64 = or i32 %and17.i63, -18874368
  %33 = inttoptr i32 %add18.i64 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %33, i32 %30) #6, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i57) #6
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %n.092, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %for.cond.spi_write_exit_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.spi_write_exit_crit_edge:                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write_exit

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end2
  %n.092 = phi i32 [ 0, %if.end2 ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 2147480) #6
  %call2.i66 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port.i, align 4
  %add.i68 = add i32 %36, 32
  %and.i69 = and i32 %add.i68, 1048575
  %add9.i70 = or i32 %and.i69, -18874368
  %37 = inttoptr i32 %add9.i70 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %37, i32 15360) #6, !srcloc !40
  %38 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %port.i, align 4
  %add13.i71 = add i32 %39, 36
  %and14.i72 = and i32 %add13.i71, 1048575
  %add15.i73 = or i32 %and14.i72, -18874368
  %40 = inttoptr i32 %add15.i73 to ptr
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %40) #6, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i66) #6
  %42 = and i32 %41, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool10.not = icmp eq i32 %42, 0
  br i1 %tobool10.not, label %if.end15, label %for.cond

if.end15:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i75 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %43 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port.i, align 4
  %add.i77 = add i32 %44, 32
  %and.i78 = and i32 %add.i77, 1048575
  %add9.i79 = or i32 %and.i78, -18874368
  %45 = inttoptr i32 %add9.i79 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %45, i32 15360) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %46 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port.i, align 4
  %add16.i80 = add i32 %47, 36
  %and17.i81 = and i32 %add16.i80, 1048575
  %add18.i82 = or i32 %and17.i81, -18874368
  %48 = inttoptr i32 %add18.i82 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %48, i32 %16) #6, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i75) #6
  %call2.i84 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %49 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %port.i, align 4
  %add.i86 = add i32 %50, 32
  %and.i87 = and i32 %add.i86, 1048575
  %add9.i88 = or i32 %and.i87, -18874368
  %51 = inttoptr i32 %add9.i88 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %51, i32 15360) #6, !srcloc !40
  %52 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %port.i, align 4
  %add13.i89 = add i32 %53, 36
  %and14.i90 = and i32 %add13.i89, 1048575
  %add15.i91 = or i32 %and14.i90, -18874368
  %54 = inttoptr i32 %add15.i91 to ptr
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %54) #6, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i84) #6
  br label %spi_write_exit

spi_write_exit:                                   ; preds = %if.end15, %for.cond.spi_write_exit_crit_edge, %entry.spi_write_exit_crit_edge
  %err.0 = phi i32 [ 0, %if.end15 ], [ 1, %entry.spi_write_exit_crit_edge ], [ 1, %for.cond.spi_write_exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %spi_lock) #6
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu10k1_i2c_write(ptr noundef %emu, i32 noundef %reg, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %reg)
  %cmp = icmp ugt i32 %reg, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %value)
  %cmp1 = icmp ugt i32 %value, 511
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %card = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2c_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 45
  tail call void @_raw_spin_lock(ptr noundef %i2c_lock) #6
  %shl = shl nuw i32 %reg, 25
  %shl2 = shl nuw nsw i32 %value, 16
  %or = or i32 %shl2, %shl
  %emu_lock.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 42
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %port.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %4 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port.i, align 4
  %add.i = add i32 %5, 32
  %and.i = and i32 %add.i, 1048575
  %add9.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %6, i32 16128) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %8 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port.i, align 4
  %add16.i = add i32 %9, 36
  %and17.i = and i32 %add16.i, 1048575
  %add18.i = or i32 %and17.i, -18874368
  %10 = inttoptr i32 %add18.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 %7) #6, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i) #6
  %call2.i62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port.i, align 4
  %add.i64 = add i32 %12, 32
  %and.i65 = and i32 %add.i64, 1048575
  %add9.i66 = or i32 %and.i65, -18874368
  %13 = inttoptr i32 %add9.i66 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %13, i32 16128) #6, !srcloc !40
  %14 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port.i, align 4
  %add13.i = add i32 %15, 36
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %16 = inttoptr i32 %add15.i to ptr
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %16) #6, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i62) #6
  %card14 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %retry.089 = phi i32 [ 0, %if.end ], [ %inc21, %for.inc.for.body_crit_edge ]
  %timeout.088 = phi i32 [ 0, %if.end ], [ %inc91, %for.inc.for.body_crit_edge ]
  %call2.i68 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port.i, align 4
  %add.i70 = add i32 %19, 32
  %and.i71 = and i32 %add.i70, 1048575
  %add9.i72 = or i32 %and.i71, -18874368
  %20 = inttoptr i32 %add9.i72 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 15616) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port.i, align 4
  %add16.i73 = add i32 %22, 36
  %and17.i74 = and i32 %add16.i73, 1048575
  %add18.i75 = or i32 %and17.i74, -18874368
  %23 = inttoptr i32 %add18.i75 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %23, i32 872742912) #6, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i68) #6
  %24 = add i32 %timeout.088, 1
  %smax = call i32 @llvm.smax.i32(i32 %24, i32 1001)
  br label %while.cond

while.cond:                                       ; preds = %if.end8.while.cond_crit_edge, %for.body
  %timeout.1 = phi i32 [ %timeout.088, %for.body ], [ %inc, %if.end8.while.cond_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #6
  %call2.i77 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port.i, align 4
  %add.i79 = add i32 %27, 32
  %and.i80 = and i32 %add.i79, 1048575
  %add9.i81 = or i32 %and.i80, -18874368
  %28 = inttoptr i32 %add9.i81 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %28, i32 15616) #6, !srcloc !40
  %29 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port.i, align 4
  %add13.i82 = add i32 %30, 36
  %and14.i83 = and i32 %add13.i82, 1048575
  %add15.i84 = or i32 %and14.i83, -18874368
  %31 = inttoptr i32 %add15.i84 to ptr
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %31) #6, !srcloc !41
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock.i, i32 noundef %call2.i77) #6
  %inc = add i32 %timeout.1, 1
  %and = and i32 %33, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %while.cond.while.end_crit_edge, label %if.end8

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end8:                                          ; preds = %while.cond
  %cmp9 = icmp sgt i32 %inc, 1000
  br i1 %cmp9, label %do.end13, label %if.end8.while.cond_crit_edge

if.end8.while.cond_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

do.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %card14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card14, align 4
  %dev15 = getelementptr inbounds %struct.snd_card, ptr %35, i32 0, i32 27
  %36 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev15, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.6, i32 noundef %33) #9
  br label %while.end

while.end:                                        ; preds = %do.end13, %while.cond.while.end_crit_edge
  %inc91 = phi i32 [ %smax, %do.end13 ], [ %inc, %while.cond.while.end_crit_edge ]
  %and17 = and i32 %33, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %cmp18 = icmp eq i32 %and17, 0
  br i1 %cmp18, label %for.end, label %for.inc

for.inc:                                          ; preds = %while.end
  %inc21 = add nuw nsw i32 %retry.089, 1
  %exitcond.not = icmp eq i32 %inc21, 10
  br i1 %exitcond.not, label %for.inc.do.end26_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.do.end26_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end26

for.end:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %retry.089)
  %cmp22 = icmp eq i32 %retry.089, 10
  br i1 %cmp22, label %for.end.do.end26_crit_edge, label %for.end.if.end34_crit_edge

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

for.end.do.end26_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end26

do.end26:                                         ; preds = %for.end.do.end26_crit_edge, %for.inc.do.end26_crit_edge
  %38 = ptrtoint ptr %card14 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %card14, align 4
  %dev28 = getelementptr inbounds %struct.snd_card, ptr %39, i32 0, i32 27
  %40 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev28, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.10) #9
  %42 = ptrtoint ptr %card14 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %card14, align 4
  %dev33 = getelementptr inbounds %struct.snd_card, ptr %43, i32 0, i32 27
  %44 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev33, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.13, i32 noundef %33, i32 noundef %reg, i32 noundef %value) #9
  br label %if.end34

if.end34:                                         ; preds = %do.end26, %for.end.if.end34_crit_edge
  %err.0 = phi i32 [ -22, %do.end26 ], [ 0, %for.end.if.end34_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %i2c_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %err.0, %if.end34 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef %reg, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i32 %value, %reg
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %0)
  %.not = icmp ult i32 %0, 64
  br i1 %.not, label %do.body4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add = add nuw nsw i32 %reg, 64
  %emu_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 42
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %1 = tail call i32 @llvm.bswap.i32(i32 %add)
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %add12 = add i32 %3, 24
  %and = and i32 %add12, 1048575
  %add13 = or i32 %and, -18874368
  %4 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %4, i32 %1) #6, !srcloc !40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %or = or i32 %add, 128
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %add19 = add i32 %8, 24
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %9 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 %6) #6, !srcloc !40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 2147480) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %value)
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %add27 = add i32 %13, 24
  %and28 = and i32 %add27, 1048575
  %add29 = or i32 %and28, -18874368
  %14 = inttoptr i32 %add29 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %11) #6, !srcloc !40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %or34 = or i32 %value, 128
  %16 = tail call i32 @llvm.bswap.i32(i32 %or34)
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port, align 4
  %add36 = add i32 %18, 24
  %and37 = and i32 %add36, 1048575
  %add38 = or i32 %and37, -18874368
  %19 = inttoptr i32 %add38 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %19, i32 %16) #6, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call6) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body4 ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu1010_fpga_read(ptr noundef %emu, i32 noundef %reg, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %reg)
  %cmp = icmp ugt i32 %reg, 63
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add = add nuw nsw i32 %reg, 64
  %emu_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 42
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %add)
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %port, align 4
  %add9 = add i32 %2, 24
  %and = and i32 %add9, 1048575
  %add10 = or i32 %and, -18874368
  %3 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %3, i32 %0) #6, !srcloc !40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %or = or i32 %add, 128
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %add16 = add i32 %7, 24
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %8 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %8, i32 %5) #6, !srcloc !40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #6
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %add21 = add i32 %11, 24
  %and22 = and i32 %add21, 1048575
  %add23 = or i32 %and22, -18874368
  %12 = inttoptr i32 %add23 to ptr
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %12) #6, !srcloc !41
  %14 = lshr i32 %13, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  %and27 = and i32 %14, 127
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and27, ptr %value, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu1010_fpga_link_dst_src_write(ptr noundef %emu, i32 noundef %dst, i32 noundef %src) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %dst, 8
  %and = and i32 %shr, 63
  %call = tail call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 0, i32 noundef %and)
  %and1 = and i32 %dst, 63
  %call2 = tail call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 1, i32 noundef %and1)
  %shr3 = lshr i32 %src, 8
  %and4 = and i32 %shr3, 63
  %call5 = tail call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 2, i32 noundef %and4)
  %and6 = and i32 %src, 63
  %call7 = tail call i32 @snd_emu1010_fpga_write(ptr noundef %emu, i32 noundef 3, i32 noundef %and6)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emu10k1_intr_enable(ptr noundef %emu, i32 noundef %intrenb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %emu_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 42
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #6
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 12
  %and = and i32 %add, 1048575
  %add5 = or i32 %and, -18874368
  %2 = inttoptr i32 %add5 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #6, !srcloc !41
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %or = or i32 %4, %intrenb
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %add13 = add i32 %7, 12
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %8 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %8, i32 %5) #6, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emu10k1_intr_disable(ptr noundef %emu, i32 noundef %intrenb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %emu_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 42
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #6
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 12
  %and = and i32 %add, 1048575
  %add5 = or i32 %and, -18874368
  %2 = inttoptr i32 %add5 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #6, !srcloc !41
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  %neg = xor i32 %intrenb, -1
  %and9 = and i32 %4, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %and9)
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %add14 = add i32 %7, 12
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %8 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %8, i32 %5) #6, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emu10k1_voice_intr_enable(ptr noundef %emu, i32 noundef %voicenum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %emu_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 42
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %voicenum)
  %cmp5 = icmp ugt i32 %voicenum, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %and = and i32 %1, 1048575
  %add10 = or i32 %and, -18874368
  %2 = inttoptr i32 %add10 to ptr
  br i1 %cmp5, label %do.body7, label %do.body19

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 22784) #6, !srcloc !40
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %add13 = add i32 %4, 4
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %5 = inttoptr i32 %add15 to ptr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #6, !srcloc !41
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %sub = add i32 %voicenum, -32
  br label %do.body37

do.body19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 22528) #6, !srcloc !40
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %add29 = add i32 %9, 4
  %and30 = and i32 %add29, 1048575
  %add31 = or i32 %and30, -18874368
  %10 = inttoptr i32 %add31 to ptr
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %10) #6, !srcloc !41
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  br label %do.body37

do.body37:                                        ; preds = %do.body19, %do.body7
  %sub.sink = phi i32 [ %sub, %do.body7 ], [ %voicenum, %do.body19 ]
  %.sink = phi i32 [ %7, %do.body7 ], [ %12, %do.body19 ]
  %shl = shl nuw i32 1, %sub.sink
  %or = or i32 %.sink, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %or)
  %port40 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %14 = ptrtoint ptr %port40 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port40, align 4
  %add41 = add i32 %15, 4
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %16 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 %13) #6, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emu10k1_voice_intr_disable(ptr noundef %emu, i32 noundef %voicenum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %emu_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 42
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %voicenum)
  %cmp5 = icmp ugt i32 %voicenum, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %and = and i32 %1, 1048575
  %add10 = or i32 %and, -18874368
  %2 = inttoptr i32 %add10 to ptr
  br i1 %cmp5, label %do.body7, label %do.body20

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 22784) #6, !srcloc !40
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %add13 = add i32 %4, 4
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %5 = inttoptr i32 %add15 to ptr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #6, !srcloc !41
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  %sub = add i32 %voicenum, -32
  br label %do.body39

do.body20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 22528) #6, !srcloc !40
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %add30 = add i32 %9, 4
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %10 = inttoptr i32 %add32 to ptr
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %10) #6, !srcloc !41
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  br label %do.body39

do.body39:                                        ; preds = %do.body20, %do.body7
  %sub.sink = phi i32 [ %sub, %do.body7 ], [ %voicenum, %do.body20 ]
  %.sink = phi i32 [ %7, %do.body7 ], [ %12, %do.body20 ]
  %shl = shl nuw i32 1, %sub.sink
  %neg = xor i32 %shl, -1
  %and19 = and i32 %.sink, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %and19)
  %port42 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %14 = ptrtoint ptr %port42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port42, align 4
  %add43 = add i32 %15, 4
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %16 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 %13) #6, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emu10k1_voice_intr_ack(ptr noundef %emu, i32 noundef %voicenum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %emu_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 42
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %voicenum)
  %cmp5 = icmp ugt i32 %voicenum, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %and = and i32 %1, 1048575
  %add10 = or i32 %and, -18874368
  %2 = inttoptr i32 %add10 to ptr
  br i1 %cmp5, label %do.body7, label %do.body12

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 23296) #6, !srcloc !40
  %sub = add i32 %voicenum, -32
  br label %do.body21

do.body12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 23040) #6, !srcloc !40
  br label %do.body21

do.body21:                                        ; preds = %do.body12, %do.body7
  %sub.pn = phi i32 [ %sub, %do.body7 ], [ %voicenum, %do.body12 ]
  %voicenum.addr.0 = shl nuw i32 1, %sub.pn
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %3 = tail call i32 @llvm.bswap.i32(i32 %voicenum.addr.0)
  %port24 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %4 = ptrtoint ptr %port24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port24, align 4
  %add25 = add i32 %5, 4
  %and26 = and i32 %add25, 1048575
  %add27 = or i32 %and26, -18874368
  %6 = inttoptr i32 %add27 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %6, i32 %3) #6, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emu10k1_voice_half_loop_intr_enable(ptr noundef %emu, i32 noundef %voicenum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %emu_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 42
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %voicenum)
  %cmp5 = icmp ugt i32 %voicenum, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %and = and i32 %1, 1048575
  %add10 = or i32 %and, -18874368
  %2 = inttoptr i32 %add10 to ptr
  br i1 %cmp5, label %do.body7, label %do.body19

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 26368) #6, !srcloc !40
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %add13 = add i32 %4, 4
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %5 = inttoptr i32 %add15 to ptr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #6, !srcloc !41
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  %sub = add i32 %voicenum, -32
  br label %do.body37

do.body19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 26112) #6, !srcloc !40
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %add29 = add i32 %9, 4
  %and30 = and i32 %add29, 1048575
  %add31 = or i32 %and30, -18874368
  %10 = inttoptr i32 %add31 to ptr
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %10) #6, !srcloc !41
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  br label %do.body37

do.body37:                                        ; preds = %do.body19, %do.body7
  %sub.sink = phi i32 [ %sub, %do.body7 ], [ %voicenum, %do.body19 ]
  %.sink = phi i32 [ %7, %do.body7 ], [ %12, %do.body19 ]
  %shl = shl nuw i32 1, %sub.sink
  %or = or i32 %.sink, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %or)
  %port40 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %14 = ptrtoint ptr %port40 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port40, align 4
  %add41 = add i32 %15, 4
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %16 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 %13) #6, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emu10k1_voice_half_loop_intr_disable(ptr noundef %emu, i32 noundef %voicenum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %emu_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 42
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %voicenum)
  %cmp5 = icmp ugt i32 %voicenum, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %and = and i32 %1, 1048575
  %add10 = or i32 %and, -18874368
  %2 = inttoptr i32 %add10 to ptr
  br i1 %cmp5, label %do.body7, label %do.body20

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 26368) #6, !srcloc !40
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %add13 = add i32 %4, 4
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %5 = inttoptr i32 %add15 to ptr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #6, !srcloc !41
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  %sub = add i32 %voicenum, -32
  br label %do.body39

do.body20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 26112) #6, !srcloc !40
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %add30 = add i32 %9, 4
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %10 = inttoptr i32 %add32 to ptr
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %10) #6, !srcloc !41
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  br label %do.body39

do.body39:                                        ; preds = %do.body20, %do.body7
  %sub.sink = phi i32 [ %sub, %do.body7 ], [ %voicenum, %do.body20 ]
  %.sink = phi i32 [ %7, %do.body7 ], [ %12, %do.body20 ]
  %shl = shl nuw i32 1, %sub.sink
  %neg = xor i32 %shl, -1
  %and19 = and i32 %.sink, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %and19)
  %port42 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %14 = ptrtoint ptr %port42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port42, align 4
  %add43 = add i32 %15, 4
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %16 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 %13) #6, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emu10k1_voice_half_loop_intr_ack(ptr noundef %emu, i32 noundef %voicenum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %emu_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 42
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %voicenum)
  %cmp5 = icmp ugt i32 %voicenum, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %and = and i32 %1, 1048575
  %add10 = or i32 %and, -18874368
  %2 = inttoptr i32 %add10 to ptr
  br i1 %cmp5, label %do.body7, label %do.body12

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 26880) #6, !srcloc !40
  %sub = add i32 %voicenum, -32
  br label %do.body21

do.body12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 26624) #6, !srcloc !40
  br label %do.body21

do.body21:                                        ; preds = %do.body12, %do.body7
  %sub.pn = phi i32 [ %sub, %do.body7 ], [ %voicenum, %do.body12 ]
  %voicenum.addr.0 = shl nuw i32 1, %sub.pn
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %3 = tail call i32 @llvm.bswap.i32(i32 %voicenum.addr.0)
  %port24 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %4 = ptrtoint ptr %port24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port24, align 4
  %add25 = add i32 %5, 4
  %and26 = and i32 %add25, 1048575
  %add27 = or i32 %and26, -18874368
  %6 = inttoptr i32 %add27 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %6, i32 %3) #6, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emu10k1_voice_set_loop_stop(ptr noundef %emu, i32 noundef %voicenum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %emu_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 42
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %voicenum)
  %cmp5 = icmp ugt i32 %voicenum, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %and = and i32 %1, 1048575
  %add10 = or i32 %and, -18874368
  %2 = inttoptr i32 %add10 to ptr
  br i1 %cmp5, label %do.body7, label %do.body19

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 23808) #6, !srcloc !40
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %add13 = add i32 %4, 4
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %5 = inttoptr i32 %add15 to ptr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #6, !srcloc !41
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %sub = add i32 %voicenum, -32
  br label %do.body37

do.body19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 23552) #6, !srcloc !40
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %add29 = add i32 %9, 4
  %and30 = and i32 %add29, 1048575
  %add31 = or i32 %and30, -18874368
  %10 = inttoptr i32 %add31 to ptr
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %10) #6, !srcloc !41
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  br label %do.body37

do.body37:                                        ; preds = %do.body19, %do.body7
  %sub.sink = phi i32 [ %sub, %do.body7 ], [ %voicenum, %do.body19 ]
  %.sink = phi i32 [ %7, %do.body7 ], [ %12, %do.body19 ]
  %shl = shl nuw i32 1, %sub.sink
  %or = or i32 %.sink, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %or)
  %port40 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %14 = ptrtoint ptr %port40 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port40, align 4
  %add41 = add i32 %15, 4
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %16 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 %13) #6, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emu10k1_voice_clear_loop_stop(ptr noundef %emu, i32 noundef %voicenum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %emu_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 42
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %voicenum)
  %cmp5 = icmp ugt i32 %voicenum, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %and = and i32 %1, 1048575
  %add10 = or i32 %and, -18874368
  %2 = inttoptr i32 %add10 to ptr
  br i1 %cmp5, label %do.body7, label %do.body20

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 23808) #6, !srcloc !40
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %add13 = add i32 %4, 4
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %5 = inttoptr i32 %add15 to ptr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #6, !srcloc !41
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %sub = add i32 %voicenum, -32
  br label %do.body39

do.body20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 23552) #6, !srcloc !40
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %add30 = add i32 %9, 4
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %10 = inttoptr i32 %add32 to ptr
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %10) #6, !srcloc !41
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  br label %do.body39

do.body39:                                        ; preds = %do.body20, %do.body7
  %sub.sink = phi i32 [ %sub, %do.body7 ], [ %voicenum, %do.body20 ]
  %.sink = phi i32 [ %7, %do.body7 ], [ %12, %do.body20 ]
  %shl = shl nuw i32 1, %sub.sink
  %neg = xor i32 %shl, -1
  %and19 = and i32 %.sink, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %and19)
  %port42 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %14 = ptrtoint ptr %port42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port42, align 4
  %add43 = add i32 %15, 4
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %16 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 %13) #6, !srcloc !40
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emu10k1_wait(ptr nocapture noundef readonly %emu, i32 noundef %wait) local_unnamed_addr #0 align 64 {
entry:
  %count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count)
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 -1, ptr %count, align 4
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 1
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %port, align 4
  %add = add i32 %2, 16
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %3 = inttoptr i32 %add1 to ptr
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %3) #6, !srcloc !41
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %shr = lshr i32 %5, 6
  br label %while.cond

while.cond:                                       ; preds = %while.end.while.cond_crit_edge, %entry
  %curtime.0 = phi i32 [ %shr, %entry ], [ %newtime.2, %while.end.while.cond_crit_edge ]
  %newtime.0 = phi i32 [ 0, %entry ], [ %newtime.2, %while.end.while.cond_crit_edge ]
  %wait.addr.0 = phi i32 [ %wait, %entry ], [ %dec, %while.end.while.cond_crit_edge ]
  %dec = add i32 %wait.addr.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait.addr.0)
  %cmp.not = icmp eq i32 %wait.addr.0, 0
  br i1 %cmp.not, label %while.cond.while.end19_crit_edge, label %while.body

while.cond.while.end19_crit_edge:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end19

while.body:                                       ; preds = %while.cond
  %6 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %count, align 4
  %count.0.count.0.count.0.23 = load volatile i32, ptr %count, align 4
  %inc24 = add i32 %count.0.count.0.count.0.23, 1
  store volatile i32 %inc24, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %count.0.count.0.count.0.23)
  %cmp425 = icmp ult i32 %count.0.count.0.count.0.23, 16384
  br i1 %cmp425, label %while.body.while.body5_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.while.body5_crit_edge:                 ; preds = %while.body
  br label %while.body5

while.cond3:                                      ; preds = %while.body5
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %count.0.count.0.count.0. = load volatile i32, ptr %count, align 4
  %inc = add i32 %count.0.count.0.count.0., 1
  store volatile i32 %inc, ptr %count, align 4
  %cmp4 = icmp ult i32 %count.0.count.0.count.0., 16384
  br i1 %cmp4, label %while.cond3.while.body5_crit_edge, label %while.cond3.while.end_crit_edge

while.cond3.while.end_crit_edge:                  ; preds = %while.cond3
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.cond3.while.body5_crit_edge:                ; preds = %while.cond3
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body5

while.body5:                                      ; preds = %while.cond3.while.body5_crit_edge, %while.body.while.body5_crit_edge
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %add8 = add i32 %9, 16
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %10 = inttoptr i32 %add10 to ptr
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %10) #6, !srcloc !41
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  %shr14 = lshr i32 %12, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %shr14, i32 %curtime.0)
  %cmp15.not = icmp eq i32 %shr14, %curtime.0
  br i1 %cmp15.not, label %while.cond3, label %while.body5.while.end_crit_edge

while.body5.while.end_crit_edge:                  ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body5.while.end_crit_edge, %while.cond3.while.end_crit_edge, %while.body.while.end_crit_edge
  %newtime.2 = phi i32 [ %newtime.0, %while.body.while.end_crit_edge ], [ %curtime.0, %while.cond3.while.end_crit_edge ], [ %shr14, %while.body5.while.end_crit_edge ]
  %13 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %13)
  %count.0.count.0.count.0.21 = load volatile i32, ptr %count, align 4
  %cmp16 = icmp ugt i32 %count.0.count.0.count.0.21, 16384
  br i1 %cmp16, label %while.end.while.end19_crit_edge, label %while.end.while.cond_crit_edge

while.end.while.cond_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end.while.end19_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end19

while.end19:                                      ; preds = %while.end.while.end19_crit_edge, %while.cond.while.end19_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @snd_emu10k1_ac97_read(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %emu_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 42
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %conv8 = trunc i16 %reg to i8
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %add = add i32 %3, 30
  %and = and i32 %add, 1048575
  %add9 = or i32 %and, -18874368
  %4 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv8) #6, !srcloc !89
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port, align 4
  %add12 = add i32 %6, 28
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %7 = inttoptr i32 %add14 to ptr
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %7) #6, !srcloc !90
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call2) #6
  ret i16 %9
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_emu10k1_ac97_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %emu_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 42
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %emu_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %conv8 = trunc i16 %reg to i8
  %port = getelementptr inbounds %struct.snd_emu10k1, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %add = add i32 %3, 30
  %and = and i32 %add, 1048575
  %add9 = or i32 %and, -18874368
  %4 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv8) #6, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %5 = tail call i16 @llvm.bswap.i16(i16 %data)
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %add15 = add i32 %7, 28
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %8 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 %5) #6, !srcloc !94
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %emu_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu10k1_rate_to_pitch(i32 noundef %rate) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp = icmp eq i32 %rate, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = mul i32 %rate, 11185
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mul)
  %tobool.not = icmp sgt i32 %mul, -1
  br i1 %tobool.not, label %if.end11, label %if.end.if.then2_crit_edge

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.then2:                                         ; preds = %if.end11.29.if.then2_crit_edge, %if.end11.28.if.then2_crit_edge, %if.end11.27.if.then2_crit_edge, %if.end11.26.if.then2_crit_edge, %if.end11.25.if.then2_crit_edge, %if.end11.24.if.then2_crit_edge, %if.end11.23.if.then2_crit_edge, %if.end11.22.if.then2_crit_edge, %if.end11.21.if.then2_crit_edge, %if.end11.20.if.then2_crit_edge, %if.end11.19.if.then2_crit_edge, %if.end11.18.if.then2_crit_edge, %if.end11.17.if.then2_crit_edge, %if.end11.16.if.then2_crit_edge, %if.end11.15.if.then2_crit_edge, %if.end11.14.if.then2_crit_edge, %if.end11.13.if.then2_crit_edge, %if.end11.12.if.then2_crit_edge, %if.end11.11.if.then2_crit_edge, %if.end11.10.if.then2_crit_edge, %if.end11.9.if.then2_crit_edge, %if.end11.8.if.then2_crit_edge, %if.end11.7.if.then2_crit_edge, %if.end11.6.if.then2_crit_edge, %if.end11.5.if.then2_crit_edge, %if.end11.4.if.then2_crit_edge, %if.end11.3.if.then2_crit_edge, %if.end11.2.if.then2_crit_edge, %if.end11.1.if.then2_crit_edge, %if.end11.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %i.024.lcssa = phi i32 [ 16777216, %if.end.if.then2_crit_edge ], [ 15728640, %if.end11.if.then2_crit_edge ], [ 14680064, %if.end11.1.if.then2_crit_edge ], [ 13631488, %if.end11.2.if.then2_crit_edge ], [ 12582912, %if.end11.3.if.then2_crit_edge ], [ 11534336, %if.end11.4.if.then2_crit_edge ], [ 10485760, %if.end11.5.if.then2_crit_edge ], [ 9437184, %if.end11.6.if.then2_crit_edge ], [ 8388608, %if.end11.7.if.then2_crit_edge ], [ 7340032, %if.end11.8.if.then2_crit_edge ], [ 6291456, %if.end11.9.if.then2_crit_edge ], [ 5242880, %if.end11.10.if.then2_crit_edge ], [ 4194304, %if.end11.11.if.then2_crit_edge ], [ 3145728, %if.end11.12.if.then2_crit_edge ], [ 2097152, %if.end11.13.if.then2_crit_edge ], [ 1048576, %if.end11.14.if.then2_crit_edge ], [ 0, %if.end11.15.if.then2_crit_edge ], [ -1048576, %if.end11.16.if.then2_crit_edge ], [ -2097152, %if.end11.17.if.then2_crit_edge ], [ -3145728, %if.end11.18.if.then2_crit_edge ], [ -4194304, %if.end11.19.if.then2_crit_edge ], [ -5242880, %if.end11.20.if.then2_crit_edge ], [ -6291456, %if.end11.21.if.then2_crit_edge ], [ -7340032, %if.end11.22.if.then2_crit_edge ], [ -8388608, %if.end11.23.if.then2_crit_edge ], [ -9437184, %if.end11.24.if.then2_crit_edge ], [ -10485760, %if.end11.25.if.then2_crit_edge ], [ -11534336, %if.end11.26.if.then2_crit_edge ], [ -12582912, %if.end11.27.if.then2_crit_edge ], [ -13631488, %if.end11.28.if.then2_crit_edge ], [ -14680064, %if.end11.29.if.then2_crit_edge ]
  %rate.addr.023.lcssa = phi i32 [ %mul, %if.end.if.then2_crit_edge ], [ %shl12, %if.end11.if.then2_crit_edge ], [ %shl12.1, %if.end11.1.if.then2_crit_edge ], [ %shl12.2, %if.end11.2.if.then2_crit_edge ], [ %shl12.3, %if.end11.3.if.then2_crit_edge ], [ %shl12.4, %if.end11.4.if.then2_crit_edge ], [ %shl12.5, %if.end11.5.if.then2_crit_edge ], [ %shl12.6, %if.end11.6.if.then2_crit_edge ], [ %shl12.7, %if.end11.7.if.then2_crit_edge ], [ %shl12.8, %if.end11.8.if.then2_crit_edge ], [ %shl12.9, %if.end11.9.if.then2_crit_edge ], [ %shl12.10, %if.end11.10.if.then2_crit_edge ], [ %shl12.11, %if.end11.11.if.then2_crit_edge ], [ %shl12.12, %if.end11.12.if.then2_crit_edge ], [ %shl12.13, %if.end11.13.if.then2_crit_edge ], [ %shl12.14, %if.end11.14.if.then2_crit_edge ], [ %shl12.15, %if.end11.15.if.then2_crit_edge ], [ %shl12.16, %if.end11.16.if.then2_crit_edge ], [ %shl12.17, %if.end11.17.if.then2_crit_edge ], [ %shl12.18, %if.end11.18.if.then2_crit_edge ], [ %shl12.19, %if.end11.19.if.then2_crit_edge ], [ %shl12.20, %if.end11.20.if.then2_crit_edge ], [ %shl12.21, %if.end11.21.if.then2_crit_edge ], [ %shl12.22, %if.end11.22.if.then2_crit_edge ], [ %shl12.23, %if.end11.23.if.then2_crit_edge ], [ %shl12.24, %if.end11.24.if.then2_crit_edge ], [ %shl12.25, %if.end11.25.if.then2_crit_edge ], [ %shl12.26, %if.end11.26.if.then2_crit_edge ], [ %shl12.27, %if.end11.27.if.then2_crit_edge ], [ %shl12.28, %if.end11.28.if.then2_crit_edge ], [ %shl12.29, %if.end11.29.if.then2_crit_edge ]
  %shr = lshr i32 %rate.addr.023.lcssa, 24
  %and3 = and i32 %shr, 127
  %arrayidx = getelementptr [128 x i32], ptr @snd_emu10k1_rate_to_pitch.logMagTable, i32 0, i32 %and3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %i.024.lcssa, %1
  %shr4 = lshr i32 %rate.addr.023.lcssa, 17
  %and5 = and i32 %shr4, 127
  %arrayidx8 = getelementptr [128 x i8], ptr @snd_emu10k1_rate_to_pitch.logSlopeTable, i32 0, i32 %and3
  %2 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx8, align 1
  %conv = zext i8 %3 to i32
  %mul9 = mul nuw nsw i32 %and5, %conv
  %add10 = add i32 %add, %mul9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %shl12 = mul i32 %rate, 22370
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12)
  %tobool.not.1 = icmp sgt i32 %shl12, -1
  br i1 %tobool.not.1, label %if.end11.1, label %if.end11.if.then2_crit_edge

if.end11.if.then2_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.1:                                       ; preds = %if.end11
  %shl12.1 = mul i32 %rate, 44740
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12.1)
  %tobool.not.2 = icmp sgt i32 %shl12.1, -1
  br i1 %tobool.not.2, label %if.end11.2, label %if.end11.1.if.then2_crit_edge

if.end11.1.if.then2_crit_edge:                    ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.2:                                       ; preds = %if.end11.1
  %shl12.2 = mul i32 %rate, 89480
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12.2)
  %tobool.not.3 = icmp sgt i32 %shl12.2, -1
  br i1 %tobool.not.3, label %if.end11.3, label %if.end11.2.if.then2_crit_edge

if.end11.2.if.then2_crit_edge:                    ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.3:                                       ; preds = %if.end11.2
  %shl12.3 = mul i32 %rate, 178960
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12.3)
  %tobool.not.4 = icmp sgt i32 %shl12.3, -1
  br i1 %tobool.not.4, label %if.end11.4, label %if.end11.3.if.then2_crit_edge

if.end11.3.if.then2_crit_edge:                    ; preds = %if.end11.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.4:                                       ; preds = %if.end11.3
  %shl12.4 = mul i32 %rate, 357920
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12.4)
  %tobool.not.5 = icmp sgt i32 %shl12.4, -1
  br i1 %tobool.not.5, label %if.end11.5, label %if.end11.4.if.then2_crit_edge

if.end11.4.if.then2_crit_edge:                    ; preds = %if.end11.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.5:                                       ; preds = %if.end11.4
  %shl12.5 = mul i32 %rate, 715840
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12.5)
  %tobool.not.6 = icmp sgt i32 %shl12.5, -1
  br i1 %tobool.not.6, label %if.end11.6, label %if.end11.5.if.then2_crit_edge

if.end11.5.if.then2_crit_edge:                    ; preds = %if.end11.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.6:                                       ; preds = %if.end11.5
  %shl12.6 = mul i32 %rate, 1431680
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12.6)
  %tobool.not.7 = icmp sgt i32 %shl12.6, -1
  br i1 %tobool.not.7, label %if.end11.7, label %if.end11.6.if.then2_crit_edge

if.end11.6.if.then2_crit_edge:                    ; preds = %if.end11.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.7:                                       ; preds = %if.end11.6
  %shl12.7 = mul i32 %rate, 2863360
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12.7)
  %tobool.not.8 = icmp sgt i32 %shl12.7, -1
  br i1 %tobool.not.8, label %if.end11.8, label %if.end11.7.if.then2_crit_edge

if.end11.7.if.then2_crit_edge:                    ; preds = %if.end11.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.8:                                       ; preds = %if.end11.7
  %shl12.8 = mul i32 %rate, 5726720
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12.8)
  %tobool.not.9 = icmp sgt i32 %shl12.8, -1
  br i1 %tobool.not.9, label %if.end11.9, label %if.end11.8.if.then2_crit_edge

if.end11.8.if.then2_crit_edge:                    ; preds = %if.end11.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.9:                                       ; preds = %if.end11.8
  %shl12.9 = mul i32 %rate, 11453440
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12.9)
  %tobool.not.10 = icmp sgt i32 %shl12.9, -1
  br i1 %tobool.not.10, label %if.end11.10, label %if.end11.9.if.then2_crit_edge

if.end11.9.if.then2_crit_edge:                    ; preds = %if.end11.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.10:                                      ; preds = %if.end11.9
  %shl12.10 = mul i32 %rate, 22906880
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12.10)
  %tobool.not.11 = icmp sgt i32 %shl12.10, -1
  br i1 %tobool.not.11, label %if.end11.11, label %if.end11.10.if.then2_crit_edge

if.end11.10.if.then2_crit_edge:                   ; preds = %if.end11.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.11:                                      ; preds = %if.end11.10
  %shl12.11 = mul i32 %rate, 45813760
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12.11)
  %tobool.not.12 = icmp sgt i32 %shl12.11, -1
  br i1 %tobool.not.12, label %if.end11.12, label %if.end11.11.if.then2_crit_edge

if.end11.11.if.then2_crit_edge:                   ; preds = %if.end11.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.12:                                      ; preds = %if.end11.11
  %shl12.12 = mul i32 %rate, 91627520
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12.12)
  %tobool.not.13 = icmp sgt i32 %shl12.12, -1
  br i1 %tobool.not.13, label %if.end11.13, label %if.end11.12.if.then2_crit_edge

if.end11.12.if.then2_crit_edge:                   ; preds = %if.end11.12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.13:                                      ; preds = %if.end11.12
  %shl12.13 = mul i32 %rate, 183255040
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12.13)
  %tobool.not.14 = icmp sgt i32 %shl12.13, -1
  br i1 %tobool.not.14, label %if.end11.14, label %if.end11.13.if.then2_crit_edge

if.end11.13.if.then2_crit_edge:                   ; preds = %if.end11.13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.14:                                      ; preds = %if.end11.13
  %shl12.14 = mul i32 %rate, 366510080
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12.14)
  %tobool.not.15 = icmp sgt i32 %shl12.14, -1
  br i1 %tobool.not.15, label %if.end11.15, label %if.end11.14.if.then2_crit_edge

if.end11.14.if.then2_crit_edge:                   ; preds = %if.end11.14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.15:                                      ; preds = %if.end11.14
  %shl12.15 = mul i32 %rate, 733020160
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12.15)
  %tobool.not.16 = icmp sgt i32 %shl12.15, -1
  br i1 %tobool.not.16, label %if.end11.16, label %if.end11.15.if.then2_crit_edge

if.end11.15.if.then2_crit_edge:                   ; preds = %if.end11.15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.16:                                      ; preds = %if.end11.15
  %shl12.16 = mul i32 %rate, 1466040320
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12.16)
  %tobool.not.17 = icmp sgt i32 %shl12.16, -1
  br i1 %tobool.not.17, label %if.end11.17, label %if.end11.16.if.then2_crit_edge

if.end11.16.if.then2_crit_edge:                   ; preds = %if.end11.16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.17:                                      ; preds = %if.end11.16
  %shl12.17 = mul i32 %rate, -1362886656
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12.17)
  %tobool.not.18 = icmp sgt i32 %shl12.17, -1
  br i1 %tobool.not.18, label %if.end11.18, label %if.end11.17.if.then2_crit_edge

if.end11.17.if.then2_crit_edge:                   ; preds = %if.end11.17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.18:                                      ; preds = %if.end11.17
  %shl12.18 = mul i32 %rate, 1569193984
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12.18)
  %tobool.not.19 = icmp sgt i32 %shl12.18, -1
  br i1 %tobool.not.19, label %if.end11.19, label %if.end11.18.if.then2_crit_edge

if.end11.18.if.then2_crit_edge:                   ; preds = %if.end11.18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.19:                                      ; preds = %if.end11.18
  %shl12.19 = mul i32 %rate, -1156579328
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12.19)
  %tobool.not.20 = icmp sgt i32 %shl12.19, -1
  br i1 %tobool.not.20, label %if.end11.20, label %if.end11.19.if.then2_crit_edge

if.end11.19.if.then2_crit_edge:                   ; preds = %if.end11.19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.20:                                      ; preds = %if.end11.19
  %shl12.20 = mul i32 %rate, 1981808640
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12.20)
  %tobool.not.21 = icmp sgt i32 %shl12.20, -1
  br i1 %tobool.not.21, label %if.end11.21, label %if.end11.20.if.then2_crit_edge

if.end11.20.if.then2_crit_edge:                   ; preds = %if.end11.20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.21:                                      ; preds = %if.end11.20
  %shl12.21 = mul i32 %rate, -331350016
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12.21)
  %tobool.not.22 = icmp sgt i32 %shl12.21, -1
  br i1 %tobool.not.22, label %if.end11.22, label %if.end11.21.if.then2_crit_edge

if.end11.21.if.then2_crit_edge:                   ; preds = %if.end11.21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.22:                                      ; preds = %if.end11.21
  %shl12.22 = mul i32 %rate, -662700032
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12.22)
  %tobool.not.23 = icmp sgt i32 %shl12.22, -1
  br i1 %tobool.not.23, label %if.end11.23, label %if.end11.22.if.then2_crit_edge

if.end11.22.if.then2_crit_edge:                   ; preds = %if.end11.22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.23:                                      ; preds = %if.end11.22
  %shl12.23 = mul i32 %rate, -1325400064
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12.23)
  %tobool.not.24 = icmp sgt i32 %shl12.23, -1
  br i1 %tobool.not.24, label %if.end11.24, label %if.end11.23.if.then2_crit_edge

if.end11.23.if.then2_crit_edge:                   ; preds = %if.end11.23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.24:                                      ; preds = %if.end11.23
  %shl12.24 = mul i32 %rate, 1644167168
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12.24)
  %tobool.not.25 = icmp sgt i32 %shl12.24, -1
  br i1 %tobool.not.25, label %if.end11.25, label %if.end11.24.if.then2_crit_edge

if.end11.24.if.then2_crit_edge:                   ; preds = %if.end11.24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.25:                                      ; preds = %if.end11.24
  %shl12.25 = mul i32 %rate, -1006632960
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12.25)
  %tobool.not.26 = icmp sgt i32 %shl12.25, -1
  br i1 %tobool.not.26, label %if.end11.26, label %if.end11.25.if.then2_crit_edge

if.end11.25.if.then2_crit_edge:                   ; preds = %if.end11.25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.26:                                      ; preds = %if.end11.25
  %shl12.26 = mul i32 %rate, -2013265920
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12.26)
  %tobool.not.27 = icmp sgt i32 %shl12.26, -1
  br i1 %tobool.not.27, label %if.end11.27, label %if.end11.26.if.then2_crit_edge

if.end11.26.if.then2_crit_edge:                   ; preds = %if.end11.26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.27:                                      ; preds = %if.end11.26
  %shl12.27 = shl i32 %rate, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12.27)
  %tobool.not.28 = icmp sgt i32 %shl12.27, -1
  br i1 %tobool.not.28, label %if.end11.28, label %if.end11.27.if.then2_crit_edge

if.end11.27.if.then2_crit_edge:                   ; preds = %if.end11.27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.28:                                      ; preds = %if.end11.27
  %shl12.28 = shl i32 %rate, 29
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12.28)
  %tobool.not.29 = icmp sgt i32 %shl12.28, -1
  br i1 %tobool.not.29, label %if.end11.29, label %if.end11.28.if.then2_crit_edge

if.end11.28.if.then2_crit_edge:                   ; preds = %if.end11.28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.29:                                      ; preds = %if.end11.28
  %shl12.29 = shl i32 %rate, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %shl12.29)
  %tobool.not.30 = icmp sgt i32 %shl12.29, -1
  br i1 %tobool.not.30, label %if.end11.29.cleanup_crit_edge, label %if.end11.29.if.then2_crit_edge

if.end11.29.if.then2_crit_edge:                   ; preds = %if.end11.29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end11.29.cleanup_crit_edge:                    ; preds = %if.end11.29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11.29.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add10, %if.then2 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end11.29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__ksymtab_snd_emu10k1_ptr_read, !1, !"__ksymtab_snd_emu10k1_ptr_read", i1 false, i1 false}
!1 = !{!"../sound/pci/emu10k1/io.c", i32 52, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/emu10k1/io.c", i32 60, i32 6}
!4 = !{ptr @__ksymtab_snd_emu10k1_ptr_write, !5, !"__ksymtab_snd_emu10k1_ptr_write", i1 false, i1 false}
!5 = !{!"../sound/pci/emu10k1/io.c", i32 86, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/emu10k1/io.c", i32 185, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @snd_emu10k1_i2c_write._entry, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @snd_emu10k1_i2c_write._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/pci/emu10k1/io.c", i32 213, i32 5}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @snd_emu10k1_i2c_write._entry.5, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @snd_emu10k1_i2c_write._entry_ptr.8, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/pci/emu10k1/io.c", i32 225, i32 3}
!20 = !{ptr @snd_emu10k1_i2c_write._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @snd_emu10k1_i2c_write._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/emu10k1/io.c", i32 226, i32 3}
!24 = !{ptr @snd_emu10k1_i2c_write._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @snd_emu10k1_i2c_write._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @snd_emu10k1_rate_to_pitch.logMagTable, !27, !"logMagTable", i1 false, i1 false}
!27 = !{!"../sound/pci/emu10k1/io.c", i32 513, i32 19}
!28 = !{ptr @snd_emu10k1_rate_to_pitch.logSlopeTable, !29, !"logSlopeTable", i1 false, i1 false}
!29 = !{!"../sound/pci/emu10k1/io.c", i32 531, i32 20}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 2154451681}
!40 = !{i64 6569052}
!41 = !{i64 6569470}
!42 = !{i64 2154452586}
!43 = !{i64 2154453207}
!44 = !{i64 2154454112}
!45 = !{!"branch_weights", i32 1, i32 2000}
!46 = !{i64 2154456822}
!47 = !{i64 2154457727}
!48 = !{i64 2154457986}
!49 = !{i64 2154458829}
!50 = !{i64 2154459314}
!51 = !{i64 2154461731}
!52 = !{i64 2154462671}
!53 = !{i64 2154463299}
!54 = !{i64 2154463798}
!55 = !{i64 2154473186}
!56 = !{i64 2154474213}
!57 = !{i64 2154475249}
!58 = !{i64 2154476282}
!59 = !{i64 2154477138}
!60 = !{i64 2154478165}
!61 = !{i64 2154479620}
!62 = !{i64 2154480659}
!63 = !{i64 2154480920}
!64 = !{i64 2154482185}
!65 = !{i64 2154482446}
!66 = !{i64 2154484215}
!67 = !{i64 2154485398}
!68 = !{i64 2154485656}
!69 = !{i64 2154487419}
!70 = !{i64 2154488602}
!71 = !{i64 2154488860}
!72 = !{i64 2154490711}
!73 = !{i64 2154492484}
!74 = !{i64 2154493667}
!75 = !{i64 2154493925}
!76 = !{i64 2154495688}
!77 = !{i64 2154496871}
!78 = !{i64 2154497129}
!79 = !{i64 2154498980}
!80 = !{i64 2154500753}
!81 = !{i64 2154501936}
!82 = !{i64 2154502194}
!83 = !{i64 2154503957}
!84 = !{i64 2154505140}
!85 = !{i64 2154505398}
!86 = !{i64 2154506297}
!87 = !{i64 2154506976}
!88 = !{i64 2154507558}
!89 = !{i64 6568855}
!90 = !{i64 6568632}
!91 = !{i64 2154508362}
!92 = !{i64 2154508944}
!93 = !{i64 2154509328}
!94 = !{i64 6568432}
