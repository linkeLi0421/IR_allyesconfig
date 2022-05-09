; ModuleID = '/llk/IR_all_yes/sound/i2c/cs8427.c_pt.bc'
source_filename = "../sound/i2c/cs8427.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_cs8427_reg_write\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_cs8427_reg_write\09\09\09\09"
module asm "\09.long\09__crc_snd_cs8427_reg_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_cs8427_reg_write:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_cs8427_reg_write\22\09\09\09\09\09"
module asm "__kstrtabns_snd_cs8427_reg_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_cs8427_init\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_cs8427_init\09\09\09\09"
module asm "\09.long\09__crc_snd_cs8427_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_cs8427_init:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_cs8427_init\22\09\09\09\09\09"
module asm "__kstrtabns_snd_cs8427_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_cs8427_create\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_cs8427_create\09\09\09\09"
module asm "\09.long\09__crc_snd_cs8427_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_cs8427_create:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_cs8427_create\22\09\09\09\09\09"
module asm "__kstrtabns_snd_cs8427_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_cs8427_iec958_build\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_cs8427_iec958_build\09\09\09\09"
module asm "\09.long\09__crc_snd_cs8427_iec958_build\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_cs8427_iec958_build:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_cs8427_iec958_build\22\09\09\09\09\09"
module asm "__kstrtabns_snd_cs8427_iec958_build:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_cs8427_iec958_active\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_cs8427_iec958_active\09\09\09\09"
module asm "\09.long\09__crc_snd_cs8427_iec958_active\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_cs8427_iec958_active:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_cs8427_iec958_active\22\09\09\09\09\09"
module asm "__kstrtabns_snd_cs8427_iec958_active:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_cs8427_iec958_pcm\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_cs8427_iec958_pcm\09\09\09\09"
module asm "\09.long\09__crc_snd_cs8427_iec958_pcm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_cs8427_iec958_pcm:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_cs8427_iec958_pcm\22\09\09\09\09\09"
module asm "__kstrtabns_snd_cs8427_iec958_pcm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_i2c_device = type { %struct.list_head, ptr, [32 x i8], i16, i16, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_i2c_bus = type { ptr, [32 x i8], %struct.mutex, ptr, %struct.list_head, %struct.list_head, %union.anon.68, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.68 = type { ptr }
%struct.cs8427 = type { [20 x i8], i32, i32, %struct.cs8427_stream, %struct.cs8427_stream }
%struct.cs8427_stream = type { ptr, [24 x i8], [24 x i8], [24 x i8], [32 x i8], ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.73, [64 x i8] }
%union.anon.73 = type { %struct.anon.76, [40 x i8] }
%struct.anon.76 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }

@__UNIQUE_ID_author234 = internal constant [51 x i8] c"snd_cs8427.author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description235 = internal constant [78 x i8] c"snd_cs8427.description=IEC958 (S/PDIF) receiver & transmitter by Cirrus Logic\00", section ".modinfo", align 1
@__UNIQUE_ID_file236 = internal constant [37 x i8] c"snd_cs8427.file=sound/i2c/snd-cs8427\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [23 x i8] c"snd_cs8427.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sound/i2c/cs8427.c\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013unable to send bytes 0x%02x:0x%02x to CS8427 (%i)\0A\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_snd_cs8427_reg_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_cs8427_reg_write = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_cs8427_reg_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_cs8427_reg_write to i32), ptr @__kstrtab_snd_cs8427_reg_write, ptr @__kstrtabns_snd_cs8427_reg_write }, section "___ksymtab+snd_cs8427_reg_write", align 4
@snd_cs8427_init.initvals1 = internal global { [7 x i8], [25 x i8] } { [7 x i8] c"\81\81\00\0C\00\05\05", [25 x i8] zeroinitializer }, align 32
@snd_cs8427_init.initvals2 = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\91\FF\18\12", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014invalid CS8427 signature 0x%x: let me try again...\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013unable to find CS8427 signature (expected 0x%x, read 0x%x),\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013   initialization is not completed\0A\00", [58 x i8] zeroinitializer }, align 32
@__kstrtab_snd_cs8427_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_cs8427_init = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_cs8427_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_cs8427_init to i32), ptr @__kstrtab_snd_cs8427_init, ptr @__kstrtabns_snd_cs8427_init }, section "___ksymtab+snd_cs8427_init", align 4
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CS8427\00", [25 x i8] zeroinitializer }, align 32
@__kstrtab_snd_cs8427_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_cs8427_create = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_cs8427_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_cs8427_create to i32), ptr @__kstrtab_snd_cs8427_create, ptr @__kstrtabns_snd_cs8427_create }, section "___ksymtab+snd_cs8427_create", align 4
@snd_cs8427_iec958_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.9, i32 0, i32 5, i32 0, ptr @snd_cs8427_in_status_info, ptr @snd_cs8427_in_status_get, ptr null, %union.anon.83 zeroinitializer, i32 15 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.10, i32 0, i32 5, i32 0, ptr @snd_cs8427_in_status_info, ptr @snd_cs8427_in_status_get, ptr null, %union.anon.83 zeroinitializer, i32 16 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.11, i32 0, i32 1, i32 0, ptr @snd_cs8427_spdif_mask_info, ptr @snd_cs8427_spdif_mask_get, ptr null, %union.anon.83 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.12, i32 0, i32 0, i32 0, ptr @snd_cs8427_spdif_info, ptr @snd_cs8427_spdif_get, ptr @snd_cs8427_spdif_put, %union.anon.83 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.6, i32 0, i32 259, i32 0, ptr @snd_cs8427_spdif_info, ptr @snd_cs8427_spdif_get, ptr @snd_cs8427_spdif_put, %union.anon.83 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.13, i32 0, i32 5, i32 0, ptr @snd_cs8427_qsubcode_info, ptr @snd_cs8427_qsubcode_get, ptr null, %union.anon.83 zeroinitializer, i32 0 }], [64 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IEC958 Playback PCM Stream\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_snd_cs8427_iec958_build = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_cs8427_iec958_build = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_cs8427_iec958_build = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_cs8427_iec958_build to i32), ptr @__kstrtab_snd_cs8427_iec958_build, ptr @__kstrtabns_snd_cs8427_iec958_build }, section "___ksymtab+snd_cs8427_iec958_build", align 4
@__kstrtab_snd_cs8427_iec958_active = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_cs8427_iec958_active = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_cs8427_iec958_active = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_cs8427_iec958_active to i32), ptr @__kstrtab_snd_cs8427_iec958_active, ptr @__kstrtabns_snd_cs8427_iec958_active }, section "___ksymtab+snd_cs8427_iec958_active", align 4
@__kstrtab_snd_cs8427_iec958_pcm = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_cs8427_iec958_pcm = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_cs8427_iec958_pcm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_cs8427_iec958_pcm to i32), ptr @__kstrtab_snd_cs8427_iec958_pcm, ptr @__kstrtabns_snd_cs8427_iec958_pcm }, section "___ksymtab+snd_cs8427_iec958_pcm", align 4
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013unable to send register 0x%x byte to CS8427\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013unable to read register 0x%x byte from CS8427\0A\00", [47 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IEC958 CS8427 Input Status\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IEC958 CS8427 Error Status\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IEC958 Playback Mask\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"IEC958 Q-subcode Capture Default\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013unable to read Q-subcode bytes from CS8427\0A\00", [50 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 32000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 32000, i64 48000]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 55, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant [10 x i8] c"initvals1\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 145, i32 23 }
@___asan_gen_.25 = private unnamed_addr constant [10 x i8] c"initvals2\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 168, i32 23 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 198, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 204, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 207, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 265, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant [27 x i8] c"snd_cs8427_iec958_controls\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 470, i32 38 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 544, i32 9 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 71, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 77, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 474, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 483, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 492, i32 11 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 498, i32 11 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 517, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [22 x i8] c"../sound/i2c/cs8427.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 402, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__ksymtab_snd_cs8427_create, ptr @__ksymtab_snd_cs8427_iec958_active, ptr @__ksymtab_snd_cs8427_iec958_build, ptr @__ksymtab_snd_cs8427_iec958_pcm, ptr @__ksymtab_snd_cs8427_init, ptr @__ksymtab_snd_cs8427_reg_write, ptr @.str, ptr @.str.1, ptr @snd_cs8427_init.initvals1, ptr @snd_cs8427_init.initvals2, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @snd_cs8427_iec958_controls, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs8427_init.initvals1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs8427_init.initvals2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs8427_iec958_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_cs8427_reg_write(ptr noundef %device, i8 noundef zeroext %reg, i8 noundef zeroext %val) #0 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #9
  %0 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %1 = and i8 %reg, 127
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %buf, align 1
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %val, ptr %0, align 1
  %call = call i32 @snd_i2c_sendbytes(ptr noundef %device, ptr noundef nonnull %buf, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buf, align 1
  %conv5 = zext i8 %5 to i32
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %0, align 1
  %conv7 = zext i8 %7 to i32
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 56, ptr noundef nonnull @.str.1, i32 noundef %conv5, i32 noundef %conv7, i32 noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp8, i32 %call, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_i2c_sendbytes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_printk(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_cs8427_init(ptr noundef %bus, ptr noundef %device) #0 align 64 {
entry:
  %data.i = alloca [32 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  %buf = alloca [24 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_i2c_device, ptr %device, i32 0, i32 6
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buf) #9
  %2 = getelementptr inbounds [24 x i8], ptr %buf, i32 0, i32 4
  %master.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus, i32 0, i32 3
  %3 = call ptr @memset(ptr %buf, i32 255, i32 24)
  %4 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %bus..i = select i1 %tobool.not.i, ptr %bus, ptr %5
  %lock_mutex2.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock_mutex2.i, i32 noundef 0) #9
  %call = tail call fastcc i32 @snd_cs8427_reg_read(ptr noundef %device, i8 noundef zeroext 127)
  call void @__sanitizer_cov_trace_const_cmp4(i32 113, i32 %call)
  %cmp.not = icmp eq i32 %call, 113
  br i1 %cmp.not, label %entry.if.end4_crit_edge, label %if.end

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end:                                           ; preds = %entry
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 199, ptr noundef nonnull @.str.2, i32 noundef %call) #9
  %call1 = tail call fastcc i32 @snd_cs8427_reg_read(ptr noundef %device, i8 noundef zeroext 127)
  call void @__sanitizer_cov_trace_const_cmp4(i32 113, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 113
  br i1 %cmp2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master.i, align 4
  %tobool.not.i83 = icmp eq ptr %7, null
  %bus..i84 = select i1 %tobool.not.i83, ptr %bus, ptr %7
  %lock_mutex2.i85 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i84, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %lock_mutex2.i85) #9
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 206, ptr noundef nonnull @.str.3, i32 noundef 113, i32 noundef %call1) #9
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 207, ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %8 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %buf.i, align 1
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %8, align 1
  %call.i = call i32 @snd_i2c_sendbytes(ptr noundef %device, ptr noundef nonnull %buf.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end8, label %if.then.i

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %buf.i, align 1
  %conv5.i = zext i8 %12 to i32
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %8, align 1
  %conv7.i = zext i8 %14 to i32
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 56, ptr noundef nonnull @.str.1, i32 noundef %conv5.i, i32 noundef %conv7.i, i32 noundef %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8.i = icmp slt i32 %call.i, 0
  %spec.select102 = select i1 %cmp8.i, i32 %call.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  br label %__fail

if.end8:                                          ; preds = %if.end4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  %15 = load i8, ptr @snd_cs8427_init.initvals1, align 1
  %16 = and i8 %15, 127
  %and = zext i8 %16 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %17 = call ptr @memcpy(ptr %add.ptr, ptr getelementptr inbounds ([7 x i8], ptr @snd_cs8427_init.initvals1, i32 0, i32 1), i32 6)
  %call9 = call i32 @snd_i2c_sendbytes(ptr noundef %device, ptr noundef nonnull @snd_cs8427_init.initvals1, i32 noundef 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 7
  br i1 %cmp10.not, label %if.end15, label %if.then12

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp13 = icmp slt i32 %call9, 0
  %spec.select = select i1 %cmp13, i32 %call9, i32 -5
  br label %__fail

if.end15:                                         ; preds = %if.end8
  %18 = call ptr @memset(ptr %buf, i32 0, i32 7)
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 9, ptr %buf, align 4
  %call18 = call i32 @snd_i2c_sendbytes(ptr noundef %device, ptr noundef nonnull %buf, i32 noundef 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call18)
  %cmp19.not = icmp eq i32 %call18, 7
  br i1 %cmp19.not, label %if.end22, label %if.end15.__fail_crit_edge

if.end15.__fail_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %__fail

if.end22:                                         ; preds = %if.end15
  %20 = load i8, ptr @snd_cs8427_init.initvals2, align 1
  %21 = and i8 %20, 127
  %and26 = zext i8 %21 to i32
  %add.ptr27 = getelementptr i8, ptr %1, i32 %and26
  %22 = call ptr @memcpy(ptr %add.ptr27, ptr getelementptr inbounds ([4 x i8], ptr @snd_cs8427_init.initvals2, i32 0, i32 1), i32 3)
  %call28 = call i32 @snd_i2c_sendbytes(ptr noundef %device, ptr noundef nonnull @snd_cs8427_init.initvals2, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call28)
  %cmp29.not = icmp eq i32 %call28, 4
  br i1 %cmp29.not, label %if.end38, label %if.then31

if.then31:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp32 = icmp slt i32 %call28, 0
  %spec.select81 = select i1 %cmp32, i32 %call28, i32 -5
  br label %__fail

if.end38:                                         ; preds = %if.end22
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8519682, ptr %buf, align 4
  %24 = call ptr @memset(ptr %2, i32 0, i32 20)
  %25 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %private_data, align 4
  %hw_status.i = getelementptr inbounds %struct.cs8427, ptr %26, i32 0, i32 3, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %data.i) #9
  %27 = getelementptr inbounds i8, ptr %data.i, i32 1
  %28 = call ptr @memset(ptr %27, i32 255, i32 31)
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(24) %hw_status.i, ptr noundef nonnull dereferenceable(24) %buf, i32 24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool3.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool3.not.i, label %if.end38.if.end47_crit_edge, label %if.end.i

if.end38.if.end47_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.end.i:                                         ; preds = %if.end38
  %29 = call ptr @memcpy(ptr %hw_status.i, ptr %buf, i32 24)
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -96, ptr %data.i, align 1
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %buf, align 4
  %idxprom.i.i = zext i8 %32 to i32
  %arrayidx.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx63.i = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx63.i, align 1
  %arrayidx33.i.1 = getelementptr inbounds i8, ptr %buf, i32 1
  %36 = ptrtoint ptr %arrayidx33.i.1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx33.i.1, align 1
  %idxprom.i.i.1 = zext i8 %37 to i32
  %arrayidx.i.i.1 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.1
  %38 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i.i.1, align 1
  %arrayidx63.i.1 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 2
  %40 = ptrtoint ptr %arrayidx63.i.1 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx63.i.1, align 1
  %arrayidx33.i.2 = getelementptr inbounds i8, ptr %buf, i32 2
  %41 = ptrtoint ptr %arrayidx33.i.2 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx33.i.2, align 2
  %idxprom.i.i.2 = zext i8 %42 to i32
  %arrayidx.i.i.2 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.2
  %43 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i.i.2, align 1
  %arrayidx63.i.2 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 3
  %45 = ptrtoint ptr %arrayidx63.i.2 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx63.i.2, align 1
  %arrayidx33.i.3 = getelementptr inbounds i8, ptr %buf, i32 3
  %46 = ptrtoint ptr %arrayidx33.i.3 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx33.i.3, align 1
  %idxprom.i.i.3 = zext i8 %47 to i32
  %arrayidx.i.i.3 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.3
  %48 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i.i.3, align 1
  %arrayidx63.i.3 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 4
  %50 = ptrtoint ptr %arrayidx63.i.3 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx63.i.3, align 1
  %arrayidx33.i.4 = getelementptr inbounds i8, ptr %buf, i32 4
  %51 = ptrtoint ptr %arrayidx33.i.4 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx33.i.4, align 4
  %idxprom.i.i.4 = zext i8 %52 to i32
  %arrayidx.i.i.4 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.4
  %53 = ptrtoint ptr %arrayidx.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i.i.4, align 1
  %arrayidx63.i.4 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 5
  %55 = ptrtoint ptr %arrayidx63.i.4 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx63.i.4, align 1
  %arrayidx33.i.5 = getelementptr inbounds i8, ptr %buf, i32 5
  %56 = ptrtoint ptr %arrayidx33.i.5 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx33.i.5, align 1
  %idxprom.i.i.5 = zext i8 %57 to i32
  %arrayidx.i.i.5 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.5
  %58 = ptrtoint ptr %arrayidx.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i.i.5, align 1
  %arrayidx63.i.5 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 6
  %60 = ptrtoint ptr %arrayidx63.i.5 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx63.i.5, align 1
  %arrayidx33.i.6 = getelementptr inbounds i8, ptr %buf, i32 6
  %61 = ptrtoint ptr %arrayidx33.i.6 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx33.i.6, align 2
  %idxprom.i.i.6 = zext i8 %62 to i32
  %arrayidx.i.i.6 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.6
  %63 = ptrtoint ptr %arrayidx.i.i.6 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.i.i.6, align 1
  %arrayidx63.i.6 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 7
  %65 = ptrtoint ptr %arrayidx63.i.6 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx63.i.6, align 1
  %arrayidx33.i.7 = getelementptr inbounds i8, ptr %buf, i32 7
  %66 = ptrtoint ptr %arrayidx33.i.7 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx33.i.7, align 1
  %idxprom.i.i.7 = zext i8 %67 to i32
  %arrayidx.i.i.7 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.7
  %68 = ptrtoint ptr %arrayidx.i.i.7 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i.i.7, align 1
  %arrayidx63.i.7 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 8
  %70 = ptrtoint ptr %arrayidx63.i.7 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %arrayidx63.i.7, align 1
  %arrayidx33.i.8 = getelementptr inbounds i8, ptr %buf, i32 8
  %71 = ptrtoint ptr %arrayidx33.i.8 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx33.i.8, align 4
  %idxprom.i.i.8 = zext i8 %72 to i32
  %arrayidx.i.i.8 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.8
  %73 = ptrtoint ptr %arrayidx.i.i.8 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i.i.8, align 1
  %arrayidx63.i.8 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 9
  %75 = ptrtoint ptr %arrayidx63.i.8 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %arrayidx63.i.8, align 1
  %arrayidx33.i.9 = getelementptr inbounds i8, ptr %buf, i32 9
  %76 = ptrtoint ptr %arrayidx33.i.9 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx33.i.9, align 1
  %idxprom.i.i.9 = zext i8 %77 to i32
  %arrayidx.i.i.9 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.9
  %78 = ptrtoint ptr %arrayidx.i.i.9 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.i.i.9, align 1
  %arrayidx63.i.9 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 10
  %80 = ptrtoint ptr %arrayidx63.i.9 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx63.i.9, align 1
  %arrayidx33.i.10 = getelementptr inbounds i8, ptr %buf, i32 10
  %81 = ptrtoint ptr %arrayidx33.i.10 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx33.i.10, align 2
  %idxprom.i.i.10 = zext i8 %82 to i32
  %arrayidx.i.i.10 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.10
  %83 = ptrtoint ptr %arrayidx.i.i.10 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.i.i.10, align 1
  %arrayidx63.i.10 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 11
  %85 = ptrtoint ptr %arrayidx63.i.10 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %arrayidx63.i.10, align 1
  %arrayidx33.i.11 = getelementptr inbounds i8, ptr %buf, i32 11
  %86 = ptrtoint ptr %arrayidx33.i.11 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx33.i.11, align 1
  %idxprom.i.i.11 = zext i8 %87 to i32
  %arrayidx.i.i.11 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.11
  %88 = ptrtoint ptr %arrayidx.i.i.11 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.i.i.11, align 1
  %arrayidx63.i.11 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 12
  %90 = ptrtoint ptr %arrayidx63.i.11 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %arrayidx63.i.11, align 1
  %arrayidx33.i.12 = getelementptr inbounds i8, ptr %buf, i32 12
  %91 = ptrtoint ptr %arrayidx33.i.12 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx33.i.12, align 4
  %idxprom.i.i.12 = zext i8 %92 to i32
  %arrayidx.i.i.12 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.12
  %93 = ptrtoint ptr %arrayidx.i.i.12 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx.i.i.12, align 1
  %arrayidx63.i.12 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 13
  %95 = ptrtoint ptr %arrayidx63.i.12 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %arrayidx63.i.12, align 1
  %arrayidx33.i.13 = getelementptr inbounds i8, ptr %buf, i32 13
  %96 = ptrtoint ptr %arrayidx33.i.13 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx33.i.13, align 1
  %idxprom.i.i.13 = zext i8 %97 to i32
  %arrayidx.i.i.13 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.13
  %98 = ptrtoint ptr %arrayidx.i.i.13 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx.i.i.13, align 1
  %arrayidx63.i.13 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 14
  %100 = ptrtoint ptr %arrayidx63.i.13 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %arrayidx63.i.13, align 1
  %arrayidx33.i.14 = getelementptr inbounds i8, ptr %buf, i32 14
  %101 = ptrtoint ptr %arrayidx33.i.14 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx33.i.14, align 2
  %idxprom.i.i.14 = zext i8 %102 to i32
  %arrayidx.i.i.14 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.14
  %103 = ptrtoint ptr %arrayidx.i.i.14 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx.i.i.14, align 1
  %arrayidx63.i.14 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 15
  %105 = ptrtoint ptr %arrayidx63.i.14 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %arrayidx63.i.14, align 1
  %arrayidx33.i.15 = getelementptr inbounds i8, ptr %buf, i32 15
  %106 = ptrtoint ptr %arrayidx33.i.15 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx33.i.15, align 1
  %idxprom.i.i.15 = zext i8 %107 to i32
  %arrayidx.i.i.15 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.15
  %108 = ptrtoint ptr %arrayidx.i.i.15 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx.i.i.15, align 1
  %arrayidx63.i.15 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 16
  %110 = ptrtoint ptr %arrayidx63.i.15 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %arrayidx63.i.15, align 1
  %arrayidx33.i.16 = getelementptr inbounds i8, ptr %buf, i32 16
  %111 = ptrtoint ptr %arrayidx33.i.16 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx33.i.16, align 4
  %idxprom.i.i.16 = zext i8 %112 to i32
  %arrayidx.i.i.16 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.16
  %113 = ptrtoint ptr %arrayidx.i.i.16 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx.i.i.16, align 1
  %arrayidx63.i.16 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 17
  %115 = ptrtoint ptr %arrayidx63.i.16 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %arrayidx63.i.16, align 1
  %arrayidx33.i.17 = getelementptr inbounds i8, ptr %buf, i32 17
  %116 = ptrtoint ptr %arrayidx33.i.17 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx33.i.17, align 1
  %idxprom.i.i.17 = zext i8 %117 to i32
  %arrayidx.i.i.17 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.17
  %118 = ptrtoint ptr %arrayidx.i.i.17 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx.i.i.17, align 1
  %arrayidx63.i.17 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 18
  %120 = ptrtoint ptr %arrayidx63.i.17 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %arrayidx63.i.17, align 1
  %arrayidx33.i.18 = getelementptr inbounds i8, ptr %buf, i32 18
  %121 = ptrtoint ptr %arrayidx33.i.18 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx33.i.18, align 2
  %idxprom.i.i.18 = zext i8 %122 to i32
  %arrayidx.i.i.18 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.18
  %123 = ptrtoint ptr %arrayidx.i.i.18 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx.i.i.18, align 1
  %arrayidx63.i.18 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 19
  %125 = ptrtoint ptr %arrayidx63.i.18 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %arrayidx63.i.18, align 1
  %arrayidx33.i.19 = getelementptr inbounds i8, ptr %buf, i32 19
  %126 = ptrtoint ptr %arrayidx33.i.19 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx33.i.19, align 1
  %idxprom.i.i.19 = zext i8 %127 to i32
  %arrayidx.i.i.19 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.19
  %128 = ptrtoint ptr %arrayidx.i.i.19 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx.i.i.19, align 1
  %arrayidx63.i.19 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 20
  %130 = ptrtoint ptr %arrayidx63.i.19 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %129, ptr %arrayidx63.i.19, align 1
  %arrayidx33.i.20 = getelementptr inbounds i8, ptr %buf, i32 20
  %131 = ptrtoint ptr %arrayidx33.i.20 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx33.i.20, align 4
  %idxprom.i.i.20 = zext i8 %132 to i32
  %arrayidx.i.i.20 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.20
  %133 = ptrtoint ptr %arrayidx.i.i.20 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx.i.i.20, align 1
  %arrayidx63.i.20 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 21
  %135 = ptrtoint ptr %arrayidx63.i.20 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %arrayidx63.i.20, align 1
  %arrayidx33.i.21 = getelementptr inbounds i8, ptr %buf, i32 21
  %136 = ptrtoint ptr %arrayidx33.i.21 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx33.i.21, align 1
  %idxprom.i.i.21 = zext i8 %137 to i32
  %arrayidx.i.i.21 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.21
  %138 = ptrtoint ptr %arrayidx.i.i.21 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx.i.i.21, align 1
  %arrayidx63.i.21 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 22
  %140 = ptrtoint ptr %arrayidx63.i.21 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %arrayidx63.i.21, align 1
  %arrayidx33.i.22 = getelementptr inbounds i8, ptr %buf, i32 22
  %141 = ptrtoint ptr %arrayidx33.i.22 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx33.i.22, align 2
  %idxprom.i.i.22 = zext i8 %142 to i32
  %arrayidx.i.i.22 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.22
  %143 = ptrtoint ptr %arrayidx.i.i.22 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx.i.i.22, align 1
  %arrayidx63.i.22 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 23
  %145 = ptrtoint ptr %arrayidx63.i.22 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %arrayidx63.i.22, align 1
  %arrayidx33.i.23 = getelementptr inbounds i8, ptr %buf, i32 23
  %146 = ptrtoint ptr %arrayidx33.i.23 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx33.i.23, align 1
  %idxprom.i.i.23 = zext i8 %147 to i32
  %arrayidx.i.i.23 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.23
  %148 = ptrtoint ptr %arrayidx.i.i.23 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx.i.i.23, align 1
  %arrayidx63.i.23 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 24
  %150 = ptrtoint ptr %arrayidx63.i.23 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %arrayidx63.i.23, align 1
  %call66.i = call i32 @snd_i2c_sendbytes(ptr noundef %device, ptr noundef nonnull %data.i, i32 noundef 25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %call66.i)
  %cmp68.not.i = icmp eq i32 %call66.i, 25
  br i1 %cmp68.not.i, label %if.end.i.if.end47_crit_edge, label %snd_cs8427_send_corudata.exit

if.end.i.if.end47_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

snd_cs8427_send_corudata.exit:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %data.i) #9
  br label %__fail

if.end47:                                         ; preds = %if.end.i.if.end47_crit_edge, %if.end38.if.end47_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %data.i) #9
  %def_status = getelementptr inbounds %struct.cs8427, ptr %1, i32 0, i32 3, i32 2
  %151 = call ptr @memcpy(ptr %def_status, ptr %buf, i32 24)
  %pcm_status = getelementptr inbounds %struct.cs8427, ptr %1, i32 0, i32 3, i32 3
  %152 = call ptr @memcpy(ptr %pcm_status, ptr %buf, i32 24)
  %153 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %master.i, align 4
  %tobool.not.i88 = icmp eq ptr %154, null
  %bus..i89 = select i1 %tobool.not.i88, ptr %bus, ptr %154
  %lock_mutex2.i90 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i89, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i90) #9
  call fastcc void @snd_cs8427_reset(ptr noundef %device)
  br label %cleanup

__fail:                                           ; preds = %snd_cs8427_send_corudata.exit, %if.then31, %if.end15.__fail_crit_edge, %if.then12, %if.then.i
  %err.1 = phi i32 [ %spec.select, %if.then12 ], [ %call18, %if.end15.__fail_crit_edge ], [ %spec.select81, %if.then31 ], [ 4, %snd_cs8427_send_corudata.exit ], [ %spec.select102, %if.then.i ]
  %155 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %master.i, align 4
  %tobool.not.i92 = icmp eq ptr %156, null
  %bus..i93 = select i1 %tobool.not.i92, ptr %bus, ptr %156
  %lock_mutex2.i94 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i93, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i94) #9
  br label %cleanup

cleanup:                                          ; preds = %__fail, %if.end47, %if.then3
  %retval.0 = phi i32 [ -14, %if.then3 ], [ %err.1, %__fail ], [ 0, %if.end47 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_cs8427_reg_read(ptr noundef %device, i8 noundef zeroext %reg) unnamed_addr #0 align 64 {
entry:
  %reg.addr = alloca i8, align 1
  %buf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %reg.addr, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #9
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %buf, align 1, !annotation !63
  %call = call i32 @snd_i2c_sendbytes(ptr noundef %device, ptr noundef nonnull %reg.addr, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %reg.addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg.addr, align 1
  %conv = zext i8 %3 to i32
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 72, ptr noundef nonnull @.str.7, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp1, i32 %call, i32 -5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @snd_i2c_readbytes(ptr noundef %device, ptr noundef nonnull %buf, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 1
  br i1 %cmp4.not, label %if.end14, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %reg.addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg.addr, align 1
  %conv7 = zext i8 %5 to i32
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 78, ptr noundef nonnull @.str.8, i32 noundef %conv7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp8 = icmp slt i32 %call3, 0
  %spec.select23 = select i1 %cmp8, i32 %call3, i32 -5
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buf, align 1
  %conv15 = zext i8 %7 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then6, %if.then
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ %spec.select23, %if.then6 ], [ %conv15, %if.end14 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_cs8427_reset(ptr noundef %cs8427) unnamed_addr #0 align 64 {
entry:
  %buf.i119 = alloca [2 x i8], align 1
  %buf.i93 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cs8427, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !64

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 318, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end23:                                         ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_i2c_device, ptr %cs8427, i32 0, i32 6
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %bus = getelementptr inbounds %struct.snd_i2c_device, ptr %cs8427, i32 0, i32 1
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %master.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %bus..i = select i1 %tobool.not.i, ptr %3, ptr %5
  %lock_mutex2.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock_mutex2.i, i32 noundef 0) #9
  %arrayidx = getelementptr [20 x i8], ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 4
  %8 = and i8 %7, 1
  %9 = and i8 %7, -68
  store i8 %9, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %10 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %buf.i, align 1
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %9, ptr %10, align 1
  %call.i = call i32 @snd_i2c_sendbytes(ptr noundef nonnull %cs8427, ptr noundef nonnull %buf.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end23.snd_cs8427_reg_write.exit_crit_edge, label %if.then.i

if.end23.snd_cs8427_reg_write.exit_crit_edge:     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_cs8427_reg_write.exit

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %buf.i, align 1
  %conv5.i = zext i8 %14 to i32
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %10, align 1
  %conv7.i = zext i8 %16 to i32
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 56, ptr noundef nonnull @.str.1, i32 noundef %conv5.i, i32 noundef %conv7.i, i32 noundef %call.i) #9
  br label %snd_cs8427_reg_write.exit

snd_cs8427_reg_write.exit:                        ; preds = %if.then.i, %if.end23.snd_cs8427_reg_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 42949600) #9
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 4
  %20 = or i8 %19, 64
  store i8 %20, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i93) #9
  %21 = getelementptr inbounds [2 x i8], ptr %buf.i93, i32 0, i32 1
  %22 = ptrtoint ptr %buf.i93 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 4, ptr %buf.i93, align 1
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %20, ptr %21, align 1
  %call.i94 = call i32 @snd_i2c_sendbytes(ptr noundef nonnull %cs8427, ptr noundef nonnull %buf.i93, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i94)
  %cmp.not.i95 = icmp eq i32 %call.i94, 2
  br i1 %cmp.not.i95, label %snd_cs8427_reg_write.exit.snd_cs8427_reg_write.exit102_crit_edge, label %if.then.i100

snd_cs8427_reg_write.exit.snd_cs8427_reg_write.exit102_crit_edge: ; preds = %snd_cs8427_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_cs8427_reg_write.exit102

if.then.i100:                                     ; preds = %snd_cs8427_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %buf.i93 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %buf.i93, align 1
  %conv5.i96 = zext i8 %25 to i32
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %21, align 1
  %conv7.i97 = zext i8 %27 to i32
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 56, ptr noundef nonnull @.str.1, i32 noundef %conv5.i96, i32 noundef %conv7.i97, i32 noundef %call.i94) #9
  br label %snd_cs8427_reg_write.exit102

snd_cs8427_reg_write.exit102:                     ; preds = %if.then.i100, %snd_cs8427_reg_write.exit.snd_cs8427_reg_write.exit102_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i93) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 42949600) #9
  %29 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus, align 4
  %master.i103 = getelementptr inbounds %struct.snd_i2c_bus, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %master.i103 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %master.i103, align 4
  %tobool.not.i104 = icmp eq ptr %32, null
  %bus..i105 = select i1 %tobool.not.i104, ptr %30, ptr %32
  %lock_mutex2.i106 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i105, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i106) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %reset_timeout = getelementptr inbounds %struct.cs8427, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %reset_timeout to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reset_timeout, align 4
  %add = add i32 %35, %33
  %36 = load volatile i32, ptr @jiffies, align 128
  %sub134 = sub i32 %add, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub134)
  %cmp42135 = icmp sgt i32 %sub134, -1
  br i1 %cmp42135, label %snd_cs8427_reg_write.exit102.while.body_crit_edge, label %snd_cs8427_reg_write.exit102.while.end_crit_edge

snd_cs8427_reg_write.exit102.while.end_crit_edge: ; preds = %snd_cs8427_reg_write.exit102
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

snd_cs8427_reg_write.exit102.while.body_crit_edge: ; preds = %snd_cs8427_reg_write.exit102
  br label %while.body

while.body:                                       ; preds = %if.end50.while.body_crit_edge, %snd_cs8427_reg_write.exit102.while.body_crit_edge
  %37 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bus, align 4
  %master.i107 = getelementptr inbounds %struct.snd_i2c_bus, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %master.i107 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %master.i107, align 4
  %tobool.not.i108 = icmp eq ptr %40, null
  %bus..i109 = select i1 %tobool.not.i108, ptr %38, ptr %40
  %lock_mutex2.i110 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i109, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock_mutex2.i110, i32 noundef 0) #9
  %call45 = call fastcc i32 @snd_cs8427_reg_read(ptr noundef nonnull %cs8427, i8 noundef zeroext 16)
  %41 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bus, align 4
  %master.i111 = getelementptr inbounds %struct.snd_i2c_bus, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %master.i111 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %master.i111, align 4
  %tobool.not.i112 = icmp eq ptr %44, null
  %bus..i113 = select i1 %tobool.not.i112, ptr %42, ptr %44
  %lock_mutex2.i114 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i113, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i114) #9
  %and47 = and i32 %call45, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %while.body.while.end_crit_edge, label %if.end50

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end50:                                         ; preds = %while.body
  %call51 = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %45
  %cmp42 = icmp sgt i32 %sub, -1
  br i1 %cmp42, label %if.end50.while.body_crit_edge, label %if.end50.while.end_crit_edge

if.end50.while.end_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end50.while.body_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end50.while.end_crit_edge, %while.body.while.end_crit_edge, %snd_cs8427_reg_write.exit102.while.end_crit_edge
  %46 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bus, align 4
  %master.i115 = getelementptr inbounds %struct.snd_i2c_bus, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %master.i115 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %master.i115, align 4
  %tobool.not.i116 = icmp eq ptr %49, null
  %bus..i117 = select i1 %tobool.not.i116, ptr %47, ptr %49
  %lock_mutex2.i118 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i117, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock_mutex2.i118, i32 noundef 0) #9
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx, align 4
  %52 = and i8 %51, -4
  %53 = or i8 %52, %8
  store i8 %53, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i119) #9
  %54 = getelementptr inbounds [2 x i8], ptr %buf.i119, i32 0, i32 1
  %55 = ptrtoint ptr %buf.i119 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 4, ptr %buf.i119, align 1
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %53, ptr %54, align 1
  %call.i120 = call i32 @snd_i2c_sendbytes(ptr noundef nonnull %cs8427, ptr noundef nonnull %buf.i119, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i120)
  %cmp.not.i121 = icmp eq i32 %call.i120, 2
  br i1 %cmp.not.i121, label %while.end.snd_cs8427_reg_write.exit128_crit_edge, label %if.then.i126

while.end.snd_cs8427_reg_write.exit128_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_cs8427_reg_write.exit128

if.then.i126:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %buf.i119 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %buf.i119, align 1
  %conv5.i122 = zext i8 %58 to i32
  %59 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %54, align 1
  %conv7.i123 = zext i8 %60 to i32
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 56, ptr noundef nonnull @.str.1, i32 noundef %conv5.i122, i32 noundef %conv7.i123, i32 noundef %call.i120) #9
  br label %snd_cs8427_reg_write.exit128

snd_cs8427_reg_write.exit128:                     ; preds = %if.then.i126, %while.end.snd_cs8427_reg_write.exit128_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i119) #9
  %61 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %bus, align 4
  %master.i129 = getelementptr inbounds %struct.snd_i2c_bus, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %master.i129 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %master.i129, align 4
  %tobool.not.i130 = icmp eq ptr %64, null
  %bus..i131 = select i1 %tobool.not.i130, ptr %62, ptr %64
  %lock_mutex2.i132 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i131, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i132) #9
  br label %cleanup

cleanup:                                          ; preds = %snd_cs8427_reg_write.exit128, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_cs8427_create(ptr noundef %bus, i8 noundef zeroext %addr, i32 noundef %reset_timeout, ptr noundef writeonly %r_cs8427) #0 align 64 {
entry:
  %device = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %device) #9
  %0 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %device, align 4, !annotation !63
  %1 = and i8 %addr, 7
  %2 = or i8 %1, 16
  %call = call i32 @snd_i2c_device_create(ptr noundef %bus, ptr noundef nonnull @.str.5, i8 noundef zeroext %2, ptr noundef nonnull %device) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 252) #13
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %private_data = getelementptr inbounds %struct.snd_i2c_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %private_data, align 4
  %cmp4 = icmp eq ptr %call7.i.i, null
  br i1 %cmp4, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = call i32 @snd_i2c_device_free(ptr noundef %5) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %private_free = getelementptr inbounds %struct.snd_i2c_device, ptr %5, i32 0, i32 7
  %7 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @snd_cs8427_free, ptr %private_free, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reset_timeout)
  %cmp9 = icmp eq i32 %reset_timeout, 0
  %spec.store.select = select i1 %cmp9, i32 1, i32 %reset_timeout
  %reset_timeout13 = getelementptr inbounds %struct.cs8427, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %reset_timeout13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.store.select, ptr %reset_timeout13, align 8
  %call14 = call i32 @snd_cs8427_init(ptr noundef %bus, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.end16, label %__fail

if.end16:                                         ; preds = %if.end8
  %tobool17.not = icmp eq ptr %r_cs8427, null
  br i1 %tobool17.not, label %if.end16.cleanup_crit_edge, label %if.then18

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device, align 4
  %11 = ptrtoint ptr %r_cs8427 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %r_cs8427, align 4
  br label %cleanup

__fail:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 4
  %call20 = call i32 @snd_i2c_device_free(ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp21 = icmp slt i32 %call14, 0
  %spec.select = select i1 %cmp21, i32 %call14, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %__fail, %if.then18, %if.end16.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then6 ], [ %spec.select, %__fail ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then18 ], [ 0, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_i2c_device_create(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_i2c_device_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_cs8427_free(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_i2c_device, ptr %device, i32 0, i32 6
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_cs8427_iec958_build(ptr noundef %cs8427, ptr noundef %play_substream, ptr noundef %cap_substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_i2c_device, ptr %cs8427, i32 0, i32 6
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %play_substream, null
  %tobool1.not = icmp eq ptr %cap_substream, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %entry.cleanup.sink.split_crit_edge, label %for.cond.preheader, !prof !64

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %entry
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %play_substream, i32 0, i32 3
  %bus = getelementptr inbounds %struct.snd_i2c_device, ptr %cs8427, i32 0, i32 1
  %pcm_ctl = getelementptr inbounds %struct.cs8427, ptr %1, i32 0, i32 3, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %idx.0101 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x %struct.snd_kcontrol_new], ptr @snd_cs8427_iec958_controls, i32 0, i32 %idx.0101
  %call = tail call ptr @snd_ctl_new1(ptr noundef %arrayidx, ptr noundef %cs8427) #9
  %cmp25 = icmp eq ptr %call, null
  br i1 %cmp25, label %for.body.cleanup_crit_edge, label %if.end27

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %for.body
  %2 = ptrtoint ptr %play_substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %play_substream, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device, align 4
  %device28 = getelementptr inbounds %struct.snd_kcontrol, ptr %call, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %device28 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %device28, align 4
  %7 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %number, align 4
  %subdevice = getelementptr inbounds %struct.snd_kcontrol, ptr %call, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %subdevice to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %subdevice, align 4
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call30 = tail call i32 @snd_ctl_add(ptr noundef %13, ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end27.cleanup_crit_edge, label %if.end33

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  %name = getelementptr inbounds %struct.snd_kcontrol, ptr %call, i32 0, i32 1, i32 4
  %call35 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(27) @.str.6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then37, label %if.end33.for.inc_crit_edge

if.end33.for.inc_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %pcm_ctl to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %pcm_ctl, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then37, %if.end33.for.inc_crit_edge
  %inc = add nuw nsw i32 %idx.0101, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %playback39 = getelementptr inbounds %struct.cs8427, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %playback39 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %play_substream, ptr %playback39, align 4
  %capture = getelementptr inbounds %struct.cs8427, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %capture to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cap_substream, ptr %capture, align 4
  %17 = ptrtoint ptr %pcm_ctl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcm_ctl, align 4
  %tobool44.not = icmp eq ptr %18, null
  br i1 %tobool44.not, label %for.end.cleanup.sink.split_crit_edge, label %for.end.cleanup_crit_edge, !prof !64

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 532, %entry.cleanup.sink.split_crit_edge ], [ 550, %for.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %entry.cleanup.sink.split_crit_edge ], [ -5, %for.end.cleanup.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ %call30, %if.end27.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_cs8427_iec958_active(ptr noundef readonly %cs8427, i32 noundef %active) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cs8427, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !64

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 561, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end23:                                         ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_i2c_device, ptr %cs8427, i32 0, i32 6
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active)
  %tobool24.not = icmp eq i32 %active, 0
  br i1 %tobool24.not, label %if.end23.if.end28_crit_edge, label %if.then25

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %pcm_status = getelementptr inbounds %struct.cs8427, ptr %1, i32 0, i32 3, i32 3
  %def_status = getelementptr inbounds %struct.cs8427, ptr %1, i32 0, i32 3, i32 2
  %2 = call ptr @memcpy(ptr %pcm_status, ptr %def_status, i32 24)
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end23.if.end28_crit_edge
  %pcm_ctl = getelementptr inbounds %struct.cs8427, ptr %1, i32 0, i32 3, i32 5
  %3 = ptrtoint ptr %pcm_ctl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcm_ctl, align 4
  %access = getelementptr inbounds %struct.snd_kcontrol, ptr %4, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %access, align 4
  %and = and i32 %6, -257
  store i32 %and, ptr %access, align 4
  %bus = getelementptr inbounds %struct.snd_i2c_device, ptr %cs8427, i32 0, i32 1
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %11 = load ptr, ptr %pcm_ctl, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %11, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %10, i32 noundef 3, ptr noundef %id) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ 0, %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_cs8427_iec958_pcm(ptr noundef %cs8427, i32 noundef %rate) #0 align 64 {
entry:
  %data.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cs8427, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !64

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 582, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end23:                                         ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_i2c_device, ptr %cs8427, i32 0, i32 6
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pcm_status = getelementptr inbounds %struct.cs8427, ptr %1, i32 0, i32 3, i32 3
  %bus = getelementptr inbounds %struct.snd_i2c_device, ptr %cs8427, i32 0, i32 1
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %master.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %bus..i = select i1 %tobool.not.i, ptr %3, ptr %5
  %lock_mutex2.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock_mutex2.i, i32 noundef 0) #9
  %6 = ptrtoint ptr %pcm_status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pcm_status, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool24.not = icmp eq i8 %8, 0
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end23
  %and28 = and i8 %7, 63
  %9 = ptrtoint ptr %pcm_status to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %and28, ptr %pcm_status, align 1
  %10 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rate, label %if.then25.if.end67_crit_edge [
    i32 32000, label %sw.bb
    i32 44100, label %sw.bb33
    i32 48000, label %sw.bb38
  ]

if.then25.if.end67_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

sw.bb:                                            ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %11 = or i8 %7, -64
  %12 = ptrtoint ptr %pcm_status to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %pcm_status, align 1
  br label %if.end67

sw.bb33:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %13 = or i8 %and28, 64
  %14 = ptrtoint ptr %pcm_status to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %pcm_status, align 1
  br label %if.end67

sw.bb38:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %15 = or i8 %and28, -128
  %16 = ptrtoint ptr %pcm_status to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %pcm_status, align 1
  br label %if.end67

if.else:                                          ; preds = %if.end23
  %arrayidx47 = getelementptr %struct.cs8427, ptr %1, i32 0, i32 3, i32 3, i32 3
  %17 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx47, align 1
  %19 = and i8 %18, -16
  store i8 %19, ptr %arrayidx47, align 1
  %20 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %rate, label %if.else.if.end67_crit_edge [
    i32 32000, label %sw.bb51
    i32 48000, label %sw.bb61
  ]

if.else.if.end67_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

sw.bb51:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %21 = or i8 %19, 3
  %22 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx47, align 1
  br label %if.end67

sw.bb61:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %23 = or i8 %19, 2
  %24 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx47, align 1
  br label %if.end67

if.end67:                                         ; preds = %sw.bb61, %sw.bb51, %if.else.if.end67_crit_edge, %sw.bb38, %sw.bb33, %sw.bb, %if.then25.if.end67_crit_edge
  %25 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %private_data, align 4
  %hw_status.i = getelementptr inbounds %struct.cs8427, ptr %26, i32 0, i32 3, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %data.i) #9
  %27 = getelementptr inbounds i8, ptr %data.i, i32 1
  %28 = call ptr @memset(ptr %27, i32 255, i32 31)
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(24) %hw_status.i, ptr noundef dereferenceable(24) %pcm_status, i32 24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool3.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool3.not.i, label %if.end67.snd_cs8427_send_corudata.exit.thread_crit_edge, label %if.end.i

if.end67.snd_cs8427_send_corudata.exit.thread_crit_edge: ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_cs8427_send_corudata.exit.thread

if.end.i:                                         ; preds = %if.end67
  %29 = call ptr @memcpy(ptr %hw_status.i, ptr %pcm_status, i32 24)
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -96, ptr %data.i, align 1
  %31 = ptrtoint ptr %pcm_status to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pcm_status, align 1
  %idxprom.i.i = zext i8 %32 to i32
  %arrayidx.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx63.i = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx63.i, align 1
  %arrayidx33.i.1 = getelementptr %struct.cs8427, ptr %1, i32 0, i32 3, i32 3, i32 1
  %36 = ptrtoint ptr %arrayidx33.i.1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx33.i.1, align 1
  %idxprom.i.i.1 = zext i8 %37 to i32
  %arrayidx.i.i.1 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.1
  %38 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i.i.1, align 1
  %arrayidx63.i.1 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 2
  %40 = ptrtoint ptr %arrayidx63.i.1 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx63.i.1, align 1
  %arrayidx33.i.2 = getelementptr %struct.cs8427, ptr %1, i32 0, i32 3, i32 3, i32 2
  %41 = ptrtoint ptr %arrayidx33.i.2 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx33.i.2, align 1
  %idxprom.i.i.2 = zext i8 %42 to i32
  %arrayidx.i.i.2 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.2
  %43 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i.i.2, align 1
  %arrayidx63.i.2 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 3
  %45 = ptrtoint ptr %arrayidx63.i.2 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx63.i.2, align 1
  %arrayidx33.i.3 = getelementptr %struct.cs8427, ptr %1, i32 0, i32 3, i32 3, i32 3
  %46 = ptrtoint ptr %arrayidx33.i.3 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx33.i.3, align 1
  %idxprom.i.i.3 = zext i8 %47 to i32
  %arrayidx.i.i.3 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.3
  %48 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i.i.3, align 1
  %arrayidx63.i.3 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 4
  %50 = ptrtoint ptr %arrayidx63.i.3 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx63.i.3, align 1
  %arrayidx33.i.4 = getelementptr %struct.cs8427, ptr %1, i32 0, i32 3, i32 3, i32 4
  %51 = ptrtoint ptr %arrayidx33.i.4 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx33.i.4, align 1
  %idxprom.i.i.4 = zext i8 %52 to i32
  %arrayidx.i.i.4 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.4
  %53 = ptrtoint ptr %arrayidx.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i.i.4, align 1
  %arrayidx63.i.4 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 5
  %55 = ptrtoint ptr %arrayidx63.i.4 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx63.i.4, align 1
  %arrayidx33.i.5 = getelementptr %struct.cs8427, ptr %1, i32 0, i32 3, i32 3, i32 5
  %56 = ptrtoint ptr %arrayidx33.i.5 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx33.i.5, align 1
  %idxprom.i.i.5 = zext i8 %57 to i32
  %arrayidx.i.i.5 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.5
  %58 = ptrtoint ptr %arrayidx.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx.i.i.5, align 1
  %arrayidx63.i.5 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 6
  %60 = ptrtoint ptr %arrayidx63.i.5 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %arrayidx63.i.5, align 1
  %arrayidx33.i.6 = getelementptr %struct.cs8427, ptr %1, i32 0, i32 3, i32 3, i32 6
  %61 = ptrtoint ptr %arrayidx33.i.6 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx33.i.6, align 1
  %idxprom.i.i.6 = zext i8 %62 to i32
  %arrayidx.i.i.6 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.6
  %63 = ptrtoint ptr %arrayidx.i.i.6 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.i.i.6, align 1
  %arrayidx63.i.6 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 7
  %65 = ptrtoint ptr %arrayidx63.i.6 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx63.i.6, align 1
  %arrayidx33.i.7 = getelementptr %struct.cs8427, ptr %1, i32 0, i32 3, i32 3, i32 7
  %66 = ptrtoint ptr %arrayidx33.i.7 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx33.i.7, align 1
  %idxprom.i.i.7 = zext i8 %67 to i32
  %arrayidx.i.i.7 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.7
  %68 = ptrtoint ptr %arrayidx.i.i.7 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i.i.7, align 1
  %arrayidx63.i.7 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 8
  %70 = ptrtoint ptr %arrayidx63.i.7 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %arrayidx63.i.7, align 1
  %arrayidx33.i.8 = getelementptr %struct.cs8427, ptr %1, i32 0, i32 3, i32 3, i32 8
  %71 = ptrtoint ptr %arrayidx33.i.8 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx33.i.8, align 1
  %idxprom.i.i.8 = zext i8 %72 to i32
  %arrayidx.i.i.8 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.8
  %73 = ptrtoint ptr %arrayidx.i.i.8 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i.i.8, align 1
  %arrayidx63.i.8 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 9
  %75 = ptrtoint ptr %arrayidx63.i.8 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %arrayidx63.i.8, align 1
  %arrayidx33.i.9 = getelementptr %struct.cs8427, ptr %1, i32 0, i32 3, i32 3, i32 9
  %76 = ptrtoint ptr %arrayidx33.i.9 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx33.i.9, align 1
  %idxprom.i.i.9 = zext i8 %77 to i32
  %arrayidx.i.i.9 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.9
  %78 = ptrtoint ptr %arrayidx.i.i.9 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.i.i.9, align 1
  %arrayidx63.i.9 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 10
  %80 = ptrtoint ptr %arrayidx63.i.9 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx63.i.9, align 1
  %arrayidx33.i.10 = getelementptr %struct.cs8427, ptr %1, i32 0, i32 3, i32 3, i32 10
  %81 = ptrtoint ptr %arrayidx33.i.10 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx33.i.10, align 1
  %idxprom.i.i.10 = zext i8 %82 to i32
  %arrayidx.i.i.10 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.10
  %83 = ptrtoint ptr %arrayidx.i.i.10 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.i.i.10, align 1
  %arrayidx63.i.10 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 11
  %85 = ptrtoint ptr %arrayidx63.i.10 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %arrayidx63.i.10, align 1
  %arrayidx33.i.11 = getelementptr %struct.cs8427, ptr %1, i32 0, i32 3, i32 3, i32 11
  %86 = ptrtoint ptr %arrayidx33.i.11 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx33.i.11, align 1
  %idxprom.i.i.11 = zext i8 %87 to i32
  %arrayidx.i.i.11 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.11
  %88 = ptrtoint ptr %arrayidx.i.i.11 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.i.i.11, align 1
  %arrayidx63.i.11 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 12
  %90 = ptrtoint ptr %arrayidx63.i.11 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %arrayidx63.i.11, align 1
  %arrayidx33.i.12 = getelementptr %struct.cs8427, ptr %1, i32 0, i32 3, i32 3, i32 12
  %91 = ptrtoint ptr %arrayidx33.i.12 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx33.i.12, align 1
  %idxprom.i.i.12 = zext i8 %92 to i32
  %arrayidx.i.i.12 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.12
  %93 = ptrtoint ptr %arrayidx.i.i.12 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx.i.i.12, align 1
  %arrayidx63.i.12 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 13
  %95 = ptrtoint ptr %arrayidx63.i.12 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %arrayidx63.i.12, align 1
  %arrayidx33.i.13 = getelementptr %struct.cs8427, ptr %1, i32 0, i32 3, i32 3, i32 13
  %96 = ptrtoint ptr %arrayidx33.i.13 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx33.i.13, align 1
  %idxprom.i.i.13 = zext i8 %97 to i32
  %arrayidx.i.i.13 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.13
  %98 = ptrtoint ptr %arrayidx.i.i.13 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx.i.i.13, align 1
  %arrayidx63.i.13 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 14
  %100 = ptrtoint ptr %arrayidx63.i.13 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %arrayidx63.i.13, align 1
  %arrayidx33.i.14 = getelementptr %struct.cs8427, ptr %1, i32 0, i32 3, i32 3, i32 14
  %101 = ptrtoint ptr %arrayidx33.i.14 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx33.i.14, align 1
  %idxprom.i.i.14 = zext i8 %102 to i32
  %arrayidx.i.i.14 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.14
  %103 = ptrtoint ptr %arrayidx.i.i.14 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx.i.i.14, align 1
  %arrayidx63.i.14 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 15
  %105 = ptrtoint ptr %arrayidx63.i.14 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %arrayidx63.i.14, align 1
  %arrayidx33.i.15 = getelementptr %struct.cs8427, ptr %1, i32 0, i32 3, i32 3, i32 15
  %106 = ptrtoint ptr %arrayidx33.i.15 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx33.i.15, align 1
  %idxprom.i.i.15 = zext i8 %107 to i32
  %arrayidx.i.i.15 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.15
  %108 = ptrtoint ptr %arrayidx.i.i.15 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx.i.i.15, align 1
  %arrayidx63.i.15 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 16
  %110 = ptrtoint ptr %arrayidx63.i.15 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %arrayidx63.i.15, align 1
  %arrayidx33.i.16 = getelementptr %struct.cs8427, ptr %1, i32 0, i32 3, i32 3, i32 16
  %111 = ptrtoint ptr %arrayidx33.i.16 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx33.i.16, align 1
  %idxprom.i.i.16 = zext i8 %112 to i32
  %arrayidx.i.i.16 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.16
  %113 = ptrtoint ptr %arrayidx.i.i.16 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx.i.i.16, align 1
  %arrayidx63.i.16 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 17
  %115 = ptrtoint ptr %arrayidx63.i.16 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %arrayidx63.i.16, align 1
  %arrayidx33.i.17 = getelementptr %struct.cs8427, ptr %1, i32 0, i32 3, i32 3, i32 17
  %116 = ptrtoint ptr %arrayidx33.i.17 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx33.i.17, align 1
  %idxprom.i.i.17 = zext i8 %117 to i32
  %arrayidx.i.i.17 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.17
  %118 = ptrtoint ptr %arrayidx.i.i.17 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx.i.i.17, align 1
  %arrayidx63.i.17 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 18
  %120 = ptrtoint ptr %arrayidx63.i.17 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %arrayidx63.i.17, align 1
  %arrayidx33.i.18 = getelementptr %struct.cs8427, ptr %1, i32 0, i32 3, i32 3, i32 18
  %121 = ptrtoint ptr %arrayidx33.i.18 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx33.i.18, align 1
  %idxprom.i.i.18 = zext i8 %122 to i32
  %arrayidx.i.i.18 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.18
  %123 = ptrtoint ptr %arrayidx.i.i.18 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx.i.i.18, align 1
  %arrayidx63.i.18 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 19
  %125 = ptrtoint ptr %arrayidx63.i.18 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %arrayidx63.i.18, align 1
  %arrayidx33.i.19 = getelementptr %struct.cs8427, ptr %1, i32 0, i32 3, i32 3, i32 19
  %126 = ptrtoint ptr %arrayidx33.i.19 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx33.i.19, align 1
  %idxprom.i.i.19 = zext i8 %127 to i32
  %arrayidx.i.i.19 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.19
  %128 = ptrtoint ptr %arrayidx.i.i.19 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx.i.i.19, align 1
  %arrayidx63.i.19 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 20
  %130 = ptrtoint ptr %arrayidx63.i.19 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %129, ptr %arrayidx63.i.19, align 1
  %arrayidx33.i.20 = getelementptr %struct.cs8427, ptr %1, i32 0, i32 3, i32 3, i32 20
  %131 = ptrtoint ptr %arrayidx33.i.20 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx33.i.20, align 1
  %idxprom.i.i.20 = zext i8 %132 to i32
  %arrayidx.i.i.20 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.20
  %133 = ptrtoint ptr %arrayidx.i.i.20 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx.i.i.20, align 1
  %arrayidx63.i.20 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 21
  %135 = ptrtoint ptr %arrayidx63.i.20 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %arrayidx63.i.20, align 1
  %arrayidx33.i.21 = getelementptr %struct.cs8427, ptr %1, i32 0, i32 3, i32 3, i32 21
  %136 = ptrtoint ptr %arrayidx33.i.21 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx33.i.21, align 1
  %idxprom.i.i.21 = zext i8 %137 to i32
  %arrayidx.i.i.21 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.21
  %138 = ptrtoint ptr %arrayidx.i.i.21 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx.i.i.21, align 1
  %arrayidx63.i.21 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 22
  %140 = ptrtoint ptr %arrayidx63.i.21 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %arrayidx63.i.21, align 1
  %arrayidx33.i.22 = getelementptr %struct.cs8427, ptr %1, i32 0, i32 3, i32 3, i32 22
  %141 = ptrtoint ptr %arrayidx33.i.22 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx33.i.22, align 1
  %idxprom.i.i.22 = zext i8 %142 to i32
  %arrayidx.i.i.22 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.22
  %143 = ptrtoint ptr %arrayidx.i.i.22 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx.i.i.22, align 1
  %arrayidx63.i.22 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 23
  %145 = ptrtoint ptr %arrayidx63.i.22 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %arrayidx63.i.22, align 1
  %arrayidx33.i.23 = getelementptr %struct.cs8427, ptr %1, i32 0, i32 3, i32 3, i32 23
  %146 = ptrtoint ptr %arrayidx33.i.23 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx33.i.23, align 1
  %idxprom.i.i.23 = zext i8 %147 to i32
  %arrayidx.i.i.23 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.23
  %148 = ptrtoint ptr %arrayidx.i.i.23 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx.i.i.23, align 1
  %arrayidx63.i.23 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 24
  %150 = ptrtoint ptr %arrayidx63.i.23 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %149, ptr %arrayidx63.i.23, align 1
  %call66.i = call i32 @snd_i2c_sendbytes(ptr noundef nonnull %cs8427, ptr noundef nonnull %data.i, i32 noundef 25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %call66.i)
  %cmp68.not.i = icmp eq i32 %call66.i, 25
  br i1 %cmp68.not.i, label %if.then69, label %if.end.i.snd_cs8427_send_corudata.exit.thread_crit_edge

if.end.i.snd_cs8427_send_corudata.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_cs8427_send_corudata.exit.thread

snd_cs8427_send_corudata.exit.thread:             ; preds = %if.end.i.snd_cs8427_send_corudata.exit.thread_crit_edge, %if.end67.snd_cs8427_send_corudata.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -5, %if.end.i.snd_cs8427_send_corudata.exit.thread_crit_edge ], [ 0, %if.end67.snd_cs8427_send_corudata.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %data.i) #9
  br label %if.end72

if.then69:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %data.i) #9
  %151 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %bus, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %152, align 4
  %pcm_ctl = getelementptr inbounds %struct.cs8427, ptr %1, i32 0, i32 3, i32 5
  %155 = ptrtoint ptr %pcm_ctl to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %pcm_ctl, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %156, i32 0, i32 1
  call void @snd_ctl_notify(ptr noundef %154, i32 noundef 1, ptr noundef %id) #9
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %snd_cs8427_send_corudata.exit.thread
  %retval.0.i117 = phi i32 [ %retval.0.i.ph, %snd_cs8427_send_corudata.exit.thread ], [ 1, %if.then69 ]
  %rate73 = getelementptr inbounds %struct.cs8427, ptr %1, i32 0, i32 1
  %157 = ptrtoint ptr %rate73 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %rate73, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %158, i32 %rate)
  %cmp74.not = icmp eq i32 %158, %rate
  %159 = ptrtoint ptr %rate73 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %rate, ptr %rate73, align 4
  %160 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %bus, align 4
  %master.i111 = getelementptr inbounds %struct.snd_i2c_bus, ptr %161, i32 0, i32 3
  %162 = ptrtoint ptr %master.i111 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %master.i111, align 4
  %tobool.not.i112 = icmp eq ptr %163, null
  %bus..i113 = select i1 %tobool.not.i112, ptr %161, ptr %163
  %lock_mutex2.i114 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i113, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i114) #9
  br i1 %cmp74.not, label %if.end72.if.end80_crit_edge, label %if.then79

if.end72.if.end80_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then79:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @snd_cs8427_reset(ptr noundef nonnull %cs8427)
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.end72.if.end80_crit_edge
  %164 = call i32 @llvm.smin.i32(i32 %retval.0.i117, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ %164, %if.end80 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_i2c_readbytes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_cs8427_in_status_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 255, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs8427_in_status_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %bus = getelementptr inbounds %struct.snd_i2c_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 4
  %master.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %bus..i = select i1 %tobool.not.i, ptr %3, ptr %5
  %lock_mutex2.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock_mutex2.i, i32 noundef 0) #9
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %conv = trunc i32 %7 to i8
  %call = tail call fastcc i32 @snd_cs8427_reg_read(ptr noundef %1, i8 noundef zeroext %conv)
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 4
  %master.i9 = getelementptr inbounds %struct.snd_i2c_bus, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %master.i9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master.i9, align 4
  %tobool.not.i10 = icmp eq ptr %11, null
  %bus..i11 = select i1 %tobool.not.i10, ptr %9, ptr %11
  %lock_mutex2.i12 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i11, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %lock_mutex2.i12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call, ptr %value, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_cs8427_spdif_mask_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_cs8427_spdif_mask_get(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = call ptr @memset(ptr %value, i32 255, i32 24)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_cs8427_spdif_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs8427_spdif_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_data1 = getelementptr inbounds %struct.snd_i2c_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data1, align 4
  %bus = getelementptr inbounds %struct.snd_i2c_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus, align 4
  %master.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %bus..i = select i1 %tobool.not.i, ptr %5, ptr %7
  %lock_mutex2.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock_mutex2.i, i32 noundef 0) #9
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %def_status = getelementptr inbounds %struct.cs8427, ptr %3, i32 0, i32 3, i32 2
  %8 = call ptr @memcpy(ptr %value, ptr %def_status, i32 24)
  %9 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus, align 4
  %master.i6 = getelementptr inbounds %struct.snd_i2c_bus, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %master.i6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %master.i6, align 4
  %tobool.not.i7 = icmp eq ptr %12, null
  %bus..i8 = select i1 %tobool.not.i7, ptr %10, ptr %12
  %lock_mutex2.i9 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i8, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %lock_mutex2.i9) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs8427_spdif_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  %data.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_data1 = getelementptr inbounds %struct.snd_i2c_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data1, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %pcm_status = getelementptr inbounds %struct.cs8427, ptr %3, i32 0, i32 3, i32 3
  %def_status = getelementptr inbounds %struct.cs8427, ptr %3, i32 0, i32 3, i32 2
  %cond = select i1 %tobool.not, ptr %def_status, ptr %pcm_status
  %playback4 = getelementptr inbounds %struct.cs8427, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %playback4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %playback4, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %entry.cond.end11_crit_edge, label %cond.true6

entry.cond.end11_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end11

cond.true6:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %runtime9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %runtime9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime9, align 4
  br label %cond.end11

cond.end11:                                       ; preds = %cond.true6, %entry.cond.end11_crit_edge
  %cond12 = phi ptr [ %9, %cond.true6 ], [ null, %entry.cond.end11_crit_edge ]
  %bus = getelementptr inbounds %struct.snd_i2c_device, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus, align 4
  %master.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  %bus..i = select i1 %tobool.not.i, ptr %11, ptr %13
  %lock_mutex2.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock_mutex2.i, i32 noundef 0) #9
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(24) %value, ptr noundef dereferenceable(24) %cond, i32 24) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp ne i32 %bcmp, 0
  %conv = zext i1 %cmp to i32
  %14 = call ptr @memcpy(ptr %cond, ptr %value, i32 24)
  br i1 %cmp, label %land.lhs.true, label %cond.end11.if.end31_crit_edge

cond.end11.if.end31_crit_edge:                    ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

land.lhs.true:                                    ; preds = %cond.end11
  %15 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool20.not = icmp eq i32 %16, 0
  %cmp25 = icmp eq ptr %cond12, null
  br i1 %tobool20.not, label %cond.false24, label %cond.true21

cond.true21:                                      ; preds = %land.lhs.true
  br i1 %cmp25, label %cond.true21.if.end31_crit_edge, label %cond.true21.if.then_crit_edge

cond.true21.if.then_crit_edge:                    ; preds = %cond.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

cond.true21.if.end31_crit_edge:                   ; preds = %cond.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

cond.false24:                                     ; preds = %land.lhs.true
  br i1 %cmp25, label %cond.false24.if.then_crit_edge, label %cond.false24.if.end31_crit_edge

cond.false24.if.end31_crit_edge:                  ; preds = %cond.false24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

cond.false24.if.then_crit_edge:                   ; preds = %cond.false24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %cond.false24.if.then_crit_edge, %cond.true21.if.then_crit_edge
  %17 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private_data1, align 4
  %hw_status.i = getelementptr inbounds %struct.cs8427, ptr %18, i32 0, i32 3, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %data.i) #9
  %19 = getelementptr inbounds i8, ptr %data.i, i32 1
  %20 = call ptr @memset(ptr %19, i32 255, i32 31)
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(24) %hw_status.i, ptr noundef dereferenceable(24) %cond, i32 24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool3.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool3.not.i, label %if.then.snd_cs8427_send_corudata.exit.thread_crit_edge, label %if.end.i

if.then.snd_cs8427_send_corudata.exit.thread_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_cs8427_send_corudata.exit.thread

if.end.i:                                         ; preds = %if.then
  %21 = call ptr @memmove(ptr %hw_status.i, ptr %value, i32 24)
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -96, ptr %data.i, align 1
  %23 = ptrtoint ptr %cond to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cond, align 1
  %idxprom.i.i = zext i8 %24 to i32
  %arrayidx.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx63.i = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx63.i, align 1
  %arrayidx33.i.1 = getelementptr i8, ptr %cond, i32 1
  %28 = ptrtoint ptr %arrayidx33.i.1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx33.i.1, align 1
  %idxprom.i.i.1 = zext i8 %29 to i32
  %arrayidx.i.i.1 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.1
  %30 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i.i.1, align 1
  %arrayidx63.i.1 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 2
  %32 = ptrtoint ptr %arrayidx63.i.1 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx63.i.1, align 1
  %arrayidx33.i.2 = getelementptr i8, ptr %cond, i32 2
  %33 = ptrtoint ptr %arrayidx33.i.2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx33.i.2, align 1
  %idxprom.i.i.2 = zext i8 %34 to i32
  %arrayidx.i.i.2 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.2
  %35 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i.i.2, align 1
  %arrayidx63.i.2 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 3
  %37 = ptrtoint ptr %arrayidx63.i.2 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx63.i.2, align 1
  %arrayidx33.i.3 = getelementptr i8, ptr %cond, i32 3
  %38 = ptrtoint ptr %arrayidx33.i.3 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx33.i.3, align 1
  %idxprom.i.i.3 = zext i8 %39 to i32
  %arrayidx.i.i.3 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.3
  %40 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i.i.3, align 1
  %arrayidx63.i.3 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 4
  %42 = ptrtoint ptr %arrayidx63.i.3 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx63.i.3, align 1
  %arrayidx33.i.4 = getelementptr i8, ptr %cond, i32 4
  %43 = ptrtoint ptr %arrayidx33.i.4 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx33.i.4, align 1
  %idxprom.i.i.4 = zext i8 %44 to i32
  %arrayidx.i.i.4 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.4
  %45 = ptrtoint ptr %arrayidx.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i.i.4, align 1
  %arrayidx63.i.4 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 5
  %47 = ptrtoint ptr %arrayidx63.i.4 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx63.i.4, align 1
  %arrayidx33.i.5 = getelementptr i8, ptr %cond, i32 5
  %48 = ptrtoint ptr %arrayidx33.i.5 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx33.i.5, align 1
  %idxprom.i.i.5 = zext i8 %49 to i32
  %arrayidx.i.i.5 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.5
  %50 = ptrtoint ptr %arrayidx.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i.i.5, align 1
  %arrayidx63.i.5 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 6
  %52 = ptrtoint ptr %arrayidx63.i.5 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %arrayidx63.i.5, align 1
  %arrayidx33.i.6 = getelementptr i8, ptr %cond, i32 6
  %53 = ptrtoint ptr %arrayidx33.i.6 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx33.i.6, align 1
  %idxprom.i.i.6 = zext i8 %54 to i32
  %arrayidx.i.i.6 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.6
  %55 = ptrtoint ptr %arrayidx.i.i.6 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i.i.6, align 1
  %arrayidx63.i.6 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 7
  %57 = ptrtoint ptr %arrayidx63.i.6 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %arrayidx63.i.6, align 1
  %arrayidx33.i.7 = getelementptr i8, ptr %cond, i32 7
  %58 = ptrtoint ptr %arrayidx33.i.7 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx33.i.7, align 1
  %idxprom.i.i.7 = zext i8 %59 to i32
  %arrayidx.i.i.7 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.7
  %60 = ptrtoint ptr %arrayidx.i.i.7 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.i.i.7, align 1
  %arrayidx63.i.7 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 8
  %62 = ptrtoint ptr %arrayidx63.i.7 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %arrayidx63.i.7, align 1
  %arrayidx33.i.8 = getelementptr i8, ptr %cond, i32 8
  %63 = ptrtoint ptr %arrayidx33.i.8 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx33.i.8, align 1
  %idxprom.i.i.8 = zext i8 %64 to i32
  %arrayidx.i.i.8 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.8
  %65 = ptrtoint ptr %arrayidx.i.i.8 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i.i.8, align 1
  %arrayidx63.i.8 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 9
  %67 = ptrtoint ptr %arrayidx63.i.8 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %arrayidx63.i.8, align 1
  %arrayidx33.i.9 = getelementptr i8, ptr %cond, i32 9
  %68 = ptrtoint ptr %arrayidx33.i.9 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx33.i.9, align 1
  %idxprom.i.i.9 = zext i8 %69 to i32
  %arrayidx.i.i.9 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.9
  %70 = ptrtoint ptr %arrayidx.i.i.9 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.i.i.9, align 1
  %arrayidx63.i.9 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 10
  %72 = ptrtoint ptr %arrayidx63.i.9 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %arrayidx63.i.9, align 1
  %arrayidx33.i.10 = getelementptr i8, ptr %cond, i32 10
  %73 = ptrtoint ptr %arrayidx33.i.10 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx33.i.10, align 1
  %idxprom.i.i.10 = zext i8 %74 to i32
  %arrayidx.i.i.10 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.10
  %75 = ptrtoint ptr %arrayidx.i.i.10 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i.i.10, align 1
  %arrayidx63.i.10 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 11
  %77 = ptrtoint ptr %arrayidx63.i.10 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %arrayidx63.i.10, align 1
  %arrayidx33.i.11 = getelementptr i8, ptr %cond, i32 11
  %78 = ptrtoint ptr %arrayidx33.i.11 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx33.i.11, align 1
  %idxprom.i.i.11 = zext i8 %79 to i32
  %arrayidx.i.i.11 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.11
  %80 = ptrtoint ptr %arrayidx.i.i.11 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i.i.11, align 1
  %arrayidx63.i.11 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 12
  %82 = ptrtoint ptr %arrayidx63.i.11 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %arrayidx63.i.11, align 1
  %arrayidx33.i.12 = getelementptr i8, ptr %cond, i32 12
  %83 = ptrtoint ptr %arrayidx33.i.12 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx33.i.12, align 1
  %idxprom.i.i.12 = zext i8 %84 to i32
  %arrayidx.i.i.12 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.12
  %85 = ptrtoint ptr %arrayidx.i.i.12 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.i.i.12, align 1
  %arrayidx63.i.12 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 13
  %87 = ptrtoint ptr %arrayidx63.i.12 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %arrayidx63.i.12, align 1
  %arrayidx33.i.13 = getelementptr i8, ptr %cond, i32 13
  %88 = ptrtoint ptr %arrayidx33.i.13 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx33.i.13, align 1
  %idxprom.i.i.13 = zext i8 %89 to i32
  %arrayidx.i.i.13 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.13
  %90 = ptrtoint ptr %arrayidx.i.i.13 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.i.i.13, align 1
  %arrayidx63.i.13 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 14
  %92 = ptrtoint ptr %arrayidx63.i.13 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %arrayidx63.i.13, align 1
  %arrayidx33.i.14 = getelementptr i8, ptr %cond, i32 14
  %93 = ptrtoint ptr %arrayidx33.i.14 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx33.i.14, align 1
  %idxprom.i.i.14 = zext i8 %94 to i32
  %arrayidx.i.i.14 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.14
  %95 = ptrtoint ptr %arrayidx.i.i.14 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.i.i.14, align 1
  %arrayidx63.i.14 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 15
  %97 = ptrtoint ptr %arrayidx63.i.14 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %arrayidx63.i.14, align 1
  %arrayidx33.i.15 = getelementptr i8, ptr %cond, i32 15
  %98 = ptrtoint ptr %arrayidx33.i.15 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx33.i.15, align 1
  %idxprom.i.i.15 = zext i8 %99 to i32
  %arrayidx.i.i.15 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.15
  %100 = ptrtoint ptr %arrayidx.i.i.15 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx.i.i.15, align 1
  %arrayidx63.i.15 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 16
  %102 = ptrtoint ptr %arrayidx63.i.15 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %arrayidx63.i.15, align 1
  %arrayidx33.i.16 = getelementptr i8, ptr %cond, i32 16
  %103 = ptrtoint ptr %arrayidx33.i.16 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx33.i.16, align 1
  %idxprom.i.i.16 = zext i8 %104 to i32
  %arrayidx.i.i.16 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.16
  %105 = ptrtoint ptr %arrayidx.i.i.16 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx.i.i.16, align 1
  %arrayidx63.i.16 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 17
  %107 = ptrtoint ptr %arrayidx63.i.16 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %arrayidx63.i.16, align 1
  %arrayidx33.i.17 = getelementptr i8, ptr %cond, i32 17
  %108 = ptrtoint ptr %arrayidx33.i.17 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx33.i.17, align 1
  %idxprom.i.i.17 = zext i8 %109 to i32
  %arrayidx.i.i.17 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.17
  %110 = ptrtoint ptr %arrayidx.i.i.17 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx.i.i.17, align 1
  %arrayidx63.i.17 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 18
  %112 = ptrtoint ptr %arrayidx63.i.17 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %arrayidx63.i.17, align 1
  %arrayidx33.i.18 = getelementptr i8, ptr %cond, i32 18
  %113 = ptrtoint ptr %arrayidx33.i.18 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx33.i.18, align 1
  %idxprom.i.i.18 = zext i8 %114 to i32
  %arrayidx.i.i.18 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.18
  %115 = ptrtoint ptr %arrayidx.i.i.18 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx.i.i.18, align 1
  %arrayidx63.i.18 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 19
  %117 = ptrtoint ptr %arrayidx63.i.18 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %arrayidx63.i.18, align 1
  %arrayidx33.i.19 = getelementptr i8, ptr %cond, i32 19
  %118 = ptrtoint ptr %arrayidx33.i.19 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx33.i.19, align 1
  %idxprom.i.i.19 = zext i8 %119 to i32
  %arrayidx.i.i.19 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.19
  %120 = ptrtoint ptr %arrayidx.i.i.19 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx.i.i.19, align 1
  %arrayidx63.i.19 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 20
  %122 = ptrtoint ptr %arrayidx63.i.19 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %arrayidx63.i.19, align 1
  %arrayidx33.i.20 = getelementptr i8, ptr %cond, i32 20
  %123 = ptrtoint ptr %arrayidx33.i.20 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx33.i.20, align 1
  %idxprom.i.i.20 = zext i8 %124 to i32
  %arrayidx.i.i.20 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.20
  %125 = ptrtoint ptr %arrayidx.i.i.20 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx.i.i.20, align 1
  %arrayidx63.i.20 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 21
  %127 = ptrtoint ptr %arrayidx63.i.20 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %126, ptr %arrayidx63.i.20, align 1
  %arrayidx33.i.21 = getelementptr i8, ptr %cond, i32 21
  %128 = ptrtoint ptr %arrayidx33.i.21 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx33.i.21, align 1
  %idxprom.i.i.21 = zext i8 %129 to i32
  %arrayidx.i.i.21 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.21
  %130 = ptrtoint ptr %arrayidx.i.i.21 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx.i.i.21, align 1
  %arrayidx63.i.21 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 22
  %132 = ptrtoint ptr %arrayidx63.i.21 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %arrayidx63.i.21, align 1
  %arrayidx33.i.22 = getelementptr i8, ptr %cond, i32 22
  %133 = ptrtoint ptr %arrayidx33.i.22 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx33.i.22, align 1
  %idxprom.i.i.22 = zext i8 %134 to i32
  %arrayidx.i.i.22 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.22
  %135 = ptrtoint ptr %arrayidx.i.i.22 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx.i.i.22, align 1
  %arrayidx63.i.22 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 23
  %137 = ptrtoint ptr %arrayidx63.i.22 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %arrayidx63.i.22, align 1
  %arrayidx33.i.23 = getelementptr i8, ptr %cond, i32 23
  %138 = ptrtoint ptr %arrayidx33.i.23 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx33.i.23, align 1
  %idxprom.i.i.23 = zext i8 %139 to i32
  %arrayidx.i.i.23 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.i.23
  %140 = ptrtoint ptr %arrayidx.i.i.23 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx.i.i.23, align 1
  %arrayidx63.i.23 = getelementptr inbounds [32 x i8], ptr %data.i, i32 0, i32 24
  %142 = ptrtoint ptr %arrayidx63.i.23 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %arrayidx63.i.23, align 1
  %call66.i = call i32 @snd_i2c_sendbytes(ptr noundef %1, ptr noundef nonnull %data.i, i32 noundef 25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %call66.i)
  %cmp68.not.i = icmp eq i32 %call66.i, 25
  br i1 %cmp68.not.i, label %if.end.i.snd_cs8427_send_corudata.exit.thread_crit_edge, label %143

if.end.i.snd_cs8427_send_corudata.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_cs8427_send_corudata.exit.thread

snd_cs8427_send_corudata.exit.thread:             ; preds = %if.end.i.snd_cs8427_send_corudata.exit.thread_crit_edge, %if.then.snd_cs8427_send_corudata.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %data.i) #9
  br label %if.end31

143:                                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %data.i) #9
  br label %if.end31

if.end31:                                         ; preds = %143, %snd_cs8427_send_corudata.exit.thread, %cond.false24.if.end31_crit_edge, %cond.true21.if.end31_crit_edge, %cond.end11.if.end31_crit_edge
  %change.0 = phi i32 [ 1, %cond.true21.if.end31_crit_edge ], [ 1, %cond.false24.if.end31_crit_edge ], [ 0, %cond.end11.if.end31_crit_edge ], [ -5, %143 ], [ %conv, %snd_cs8427_send_corudata.exit.thread ]
  %144 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %bus, align 4
  %master.i47 = getelementptr inbounds %struct.snd_i2c_bus, ptr %145, i32 0, i32 3
  %146 = ptrtoint ptr %master.i47 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %master.i47, align 4
  %tobool.not.i48 = icmp eq ptr %147, null
  %bus..i49 = select i1 %tobool.not.i48, ptr %145, ptr %147
  %lock_mutex2.i50 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i49, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i50) #9
  ret i32 %change.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_cs8427_qsubcode_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 10, ptr %count, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs8427_qsubcode_get(ptr nocapture noundef readonly %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #9
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 20, ptr %reg, align 1
  %bus = getelementptr inbounds %struct.snd_i2c_device, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bus, align 4
  %master.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  %bus..i = select i1 %tobool.not.i, ptr %4, ptr %6
  %lock_mutex2.i = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock_mutex2.i, i32 noundef 0) #9
  %call = call i32 @snd_i2c_sendbytes(ptr noundef %1, ptr noundef nonnull %reg, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %reg, align 1
  %conv = zext i8 %8 to i32
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 396, ptr noundef nonnull @.str.7, i32 noundef %conv) #9
  %9 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus, align 4
  %master.i30 = getelementptr inbounds %struct.snd_i2c_bus, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %master.i30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %master.i30, align 4
  %tobool.not.i31 = icmp eq ptr %12, null
  %bus..i32 = select i1 %tobool.not.i31, ptr %10, ptr %12
  %lock_mutex2.i33 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i32, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i33) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp2, i32 %call, i32 -5
  br label %cleanup

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %call4 = call i32 @snd_i2c_readbytes(ptr noundef %1, ptr noundef %value, i32 noundef 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 10
  br i1 %cmp5.not, label %if.end15, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 403, ptr noundef nonnull @.str.14) #9
  %13 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus, align 4
  %master.i34 = getelementptr inbounds %struct.snd_i2c_bus, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %master.i34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %master.i34, align 4
  %tobool.not.i35 = icmp eq ptr %16, null
  %bus..i36 = select i1 %tobool.not.i35, ptr %14, ptr %16
  %lock_mutex2.i37 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i36, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i37) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp9 = icmp slt i32 %call4, 0
  %spec.select29 = select i1 %cmp9, i32 %call4, i32 -5
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus, align 4
  %master.i38 = getelementptr inbounds %struct.snd_i2c_bus, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %master.i38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %master.i38, align 4
  %tobool.not.i39 = icmp eq ptr %20, null
  %bus..i40 = select i1 %tobool.not.i39, ptr %18, ptr %20
  %lock_mutex2.i41 = getelementptr inbounds %struct.snd_i2c_bus, ptr %bus..i40, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %lock_mutex2.i41) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then7, %if.then
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ %spec.select29, %if.then7 ], [ 0, %if.end15 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__UNIQUE_ID_author234, !1, !"__UNIQUE_ID_author234", i1 false, i1 false}
!1 = !{!"../sound/i2c/cs8427.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_description235, !3, !"__UNIQUE_ID_description235", i1 false, i1 false}
!3 = !{!"../sound/i2c/cs8427.c", i32 23, i32 1}
!4 = !{ptr @__UNIQUE_ID_file236, !5, !"__UNIQUE_ID_file236", i1 false, i1 false}
!5 = !{!"../sound/i2c/cs8427.c", i32 24, i32 1}
!6 = !{ptr @__UNIQUE_ID_license237, !5, !"__UNIQUE_ID_license237", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../sound/i2c/cs8427.c", i32 55, i32 3}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__ksymtab_snd_cs8427_reg_write, !11, !"__ksymtab_snd_cs8427_reg_write", i1 false, i1 false}
!11 = !{!"../sound/i2c/cs8427.c", i32 62, i32 1}
!12 = !{ptr @snd_cs8427_init.initvals1, !13, !"initvals1", i1 false, i1 false}
!13 = !{!"../sound/i2c/cs8427.c", i32 145, i32 23}
!14 = !{ptr @snd_cs8427_init.initvals2, !15, !"initvals2", i1 false, i1 false}
!15 = !{!"../sound/i2c/cs8427.c", i32 168, i32 23}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/i2c/cs8427.c", i32 198, i32 3}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/i2c/cs8427.c", i32 204, i32 3}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/i2c/cs8427.c", i32 207, i32 3}
!22 = !{ptr @__ksymtab_snd_cs8427_init, !23, !"__ksymtab_snd_cs8427_init", i1 false, i1 false}
!23 = !{!"../sound/i2c/cs8427.c", i32 254, i32 1}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/i2c/cs8427.c", i32 265, i32 35}
!26 = !{ptr @__ksymtab_snd_cs8427_create, !27, !"__ksymtab_snd_cs8427_create", i1 false, i1 false}
!27 = !{!"../sound/i2c/cs8427.c", i32 305, i32 1}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/i2c/cs8427.c", i32 544, i32 9}
!30 = !{ptr @__ksymtab_snd_cs8427_iec958_build, !31, !"__ksymtab_snd_cs8427_iec958_build", i1 false, i1 false}
!31 = !{!"../sound/i2c/cs8427.c", i32 555, i32 1}
!32 = !{ptr @__ksymtab_snd_cs8427_iec958_active, !33, !"__ksymtab_snd_cs8427_iec958_active", i1 false, i1 false}
!33 = !{!"../sound/i2c/cs8427.c", i32 574, i32 1}
!34 = !{ptr @__ksymtab_snd_cs8427_iec958_pcm, !35, !"__ksymtab_snd_cs8427_iec958_pcm", i1 false, i1 false}
!35 = !{!"../sound/i2c/cs8427.c", i32 616, i32 1}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/i2c/cs8427.c", i32 71, i32 3}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/i2c/cs8427.c", i32 77, i32 3}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/i2c/cs8427.c", i32 474, i32 11}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/i2c/cs8427.c", i32 483, i32 11}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/i2c/cs8427.c", i32 492, i32 11}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/i2c/cs8427.c", i32 498, i32 11}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/i2c/cs8427.c", i32 517, i32 11}
!50 = !{ptr @snd_cs8427_iec958_controls, !51, !"snd_cs8427_iec958_controls", i1 false, i1 false}
!51 = !{!"../sound/i2c/cs8427.c", i32 470, i32 38}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/i2c/cs8427.c", i32 402, i32 3}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"auto-init"}
!64 = !{!"branch_weights", i32 1, i32 2000}
