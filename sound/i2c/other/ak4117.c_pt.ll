; ModuleID = '/llk/IR_all_yes/sound/i2c/other/ak4117.c_pt.bc'
source_filename = "../sound/i2c/other/ak4117.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_ak4117_create\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_ak4117_create\09\09\09\09"
module asm "\09.long\09__crc_snd_ak4117_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ak4117_create:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ak4117_create\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ak4117_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_ak4117_reg_write\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_ak4117_reg_write\09\09\09\09"
module asm "\09.long\09__crc_snd_ak4117_reg_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ak4117_reg_write:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ak4117_reg_write\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ak4117_reg_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_ak4117_reinit\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_ak4117_reinit\09\09\09\09"
module asm "\09.long\09__crc_snd_ak4117_reinit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ak4117_reinit:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ak4117_reinit\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ak4117_reinit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_ak4117_build\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_ak4117_build\09\09\09\09"
module asm "\09.long\09__crc_snd_ak4117_build\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ak4117_build:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ak4117_build\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ak4117_build:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_ak4117_external_rate\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_ak4117_external_rate\09\09\09\09"
module asm "\09.long\09__crc_snd_ak4117_external_rate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ak4117_external_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ak4117_external_rate\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ak4117_external_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_ak4117_check_rate_and_errors\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_ak4117_check_rate_and_errors\09\09\09\09"
module asm "\09.long\09__crc_snd_ak4117_check_rate_and_errors\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_ak4117_check_rate_and_errors:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_ak4117_check_rate_and_errors\22\09\09\09\09\09"
module asm "__kstrtabns_snd_ak4117_check_rate_and_errors:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.82, i32 }
%union.anon.82 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ak4117 = type { ptr, ptr, ptr, ptr, i8, %struct.spinlock, [5 x i8], [13 x ptr], ptr, [4 x i32], i8, i8, i8, %struct.timer_list, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.81, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.81 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.72, [64 x i8] }
%union.anon.72 = type { %struct.anon.75, [40 x i8] }
%struct.anon.75 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.76, [128 x i8] }
%union.anon.76 = type { %union.anon.78 }
%union.anon.78 = type { [64 x i64] }

@__UNIQUE_ID_author234 = internal constant [51 x i8] c"snd_ak4117.author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description235 = internal constant [70 x i8] c"snd_ak4117.description=AK4117 IEC958 (S/PDIF) receiver by Asahi Kasei\00", section ".modinfo", align 1
@__UNIQUE_ID_file236 = internal constant [43 x i8] c"snd_ak4117.file=sound/i2c/other/snd-ak4117\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [23 x i8] c"snd_ak4117.license=GPL\00", section ".modinfo", align 1
@snd_ak4117_create.ops = internal constant { %struct.snd_device_ops, [20 x i8] } { %struct.snd_device_ops { ptr @snd_ak4117_dev_free, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@snd_ak4117_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@snd_ak4117_create.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&chip->timer)\00", [17 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/i2c/other/ak4117.c\00", [39 x i8] zeroinitializer }, align 32
@snd_ak4117_iec958_controls = internal constant { [13 x %struct.snd_kcontrol_new], [144 x i8] } { [13 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.4, i32 0, i32 5, i32 0, ptr @snd_ak4117_in_error_info, ptr @snd_ak4117_in_error_get, ptr null, %union.anon.82 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.5, i32 0, i32 5, i32 0, ptr @snd_ak4117_in_error_info, ptr @snd_ak4117_in_error_get, ptr null, %union.anon.82 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.6, i32 0, i32 5, i32 0, ptr @snd_ak4117_in_error_info, ptr @snd_ak4117_in_error_get, ptr null, %union.anon.82 zeroinitializer, i32 3 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.7, i32 0, i32 5, i32 0, ptr @snd_ak4117_in_error_info, ptr @snd_ak4117_in_error_get, ptr null, %union.anon.82 zeroinitializer, i32 2 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.8, i32 0, i32 5, i32 0, ptr @snd_ak4117_rate_info, ptr @snd_ak4117_rate_get, ptr null, %union.anon.82 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.9, i32 0, i32 1, i32 0, ptr @snd_ak4117_spdif_mask_info, ptr @snd_ak4117_spdif_mask_get, ptr null, %union.anon.82 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.10, i32 0, i32 5, i32 0, ptr @snd_ak4117_spdif_info, ptr @snd_ak4117_spdif_get, ptr null, %union.anon.82 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.11, i32 0, i32 5, i32 0, ptr @snd_ak4117_spdif_pinfo, ptr @snd_ak4117_spdif_pget, ptr null, %union.anon.82 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.12, i32 0, i32 5, i32 0, ptr @snd_ak4117_spdif_qinfo, ptr @snd_ak4117_spdif_qget, ptr null, %union.anon.82 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.13, i32 0, i32 5, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ak4117_in_bit_get, ptr null, %union.anon.82 zeroinitializer, i32 -2147482875 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.14, i32 0, i32 5, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ak4117_in_bit_get, ptr null, %union.anon.82 zeroinitializer, i32 1286 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.15, i32 0, i32 5, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_ak4117_in_bit_get, ptr null, %union.anon.82 zeroinitializer, i32 1542 }, %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.16, i32 0, i32 3, i32 0, ptr @snd_ak4117_rx_info, ptr @snd_ak4117_rx_get, ptr @snd_ak4117_rx_put, %union.anon.82 zeroinitializer, i32 0 }], [144 x i8] zeroinitializer }, align 32
@__kstrtab_snd_ak4117_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ak4117_create = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ak4117_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ak4117_create to i32), ptr @__kstrtab_snd_ak4117_create, ptr @__kstrtabns_snd_ak4117_create }, section "___ksymtab+snd_ak4117_create", align 4
@__kstrtab_snd_ak4117_reg_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ak4117_reg_write = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ak4117_reg_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ak4117_reg_write to i32), ptr @__kstrtab_snd_ak4117_reg_write, ptr @__kstrtabns_snd_ak4117_reg_write }, section "___ksymtab+snd_ak4117_reg_write", align 4
@__kstrtab_snd_ak4117_reinit = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ak4117_reinit = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ak4117_reinit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ak4117_reinit to i32), ptr @__kstrtab_snd_ak4117_reinit, ptr @__kstrtabns_snd_ak4117_reinit }, section "___ksymtab+snd_ak4117_reinit", align 4
@__kstrtab_snd_ak4117_build = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ak4117_build = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ak4117_build = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ak4117_build to i32), ptr @__kstrtab_snd_ak4117_build, ptr @__kstrtabns_snd_ak4117_build }, section "___ksymtab+snd_ak4117_build", align 4
@__kstrtab_snd_ak4117_external_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ak4117_external_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ak4117_external_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ak4117_external_rate to i32), ptr @__kstrtab_snd_ak4117_external_rate, ptr @__kstrtabns_snd_ak4117_external_rate }, section "___ksymtab+snd_ak4117_external_rate", align 4
@__kstrtab_snd_ak4117_check_rate_and_errors = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_ak4117_check_rate_and_errors = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_ak4117_check_rate_and_errors = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_ak4117_check_rate_and_errors to i32), ptr @__kstrtab_snd_ak4117_check_rate_and_errors, ptr @__kstrtabns_snd_ak4117_check_rate_and_errors }, section "___ksymtab+snd_ak4117_check_rate_and_errors", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IEC958 Parity Errors\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IEC958 V-Bit Errors\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IEC958 C-CRC Errors\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IEC958 Q-CRC Errors\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IEC958 External Rate\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IEC958 Capture Mask\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"IEC958 Capture Default\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"IEC958 Preamble Capture Default\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"IEC958 Q-subcode Capture Default\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IEC958 Audio\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IEC958 Non-PCM Bitstream\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IEC958 DTS Bitstream\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AK4117 Input Select\00", [44 x i8] zeroinitializer }, align 32
@switch.table.snd_ak4117_external_rate = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 44100, i32 0, i32 48000, i32 32000, i32 0, i32 0, i32 0, i32 0, i32 88200, i32 0, i32 96000, i32 0, i32 176400, i32 0, i32 192000], [36 x i8] zeroinitializer }, align 32
@switch.table.snd_ak4117_check_rate_and_errors = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 44100, i32 0, i32 48000, i32 32000, i32 0, i32 0, i32 0, i32 0, i32 88200, i32 0, i32 96000, i32 0, i32 176400, i32 0, i32 192000], [36 x i8] zeroinitializer }, align 32
@switch.table.snd_ak4117_rate_get = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 44100, i32 0, i32 48000, i32 32000, i32 0, i32 0, i32 0, i32 0, i32 88200, i32 0, i32 96000, i32 0, i32 176400, i32 0, i32 192000], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@___asan_gen_.17 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 67, i32 37 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 74, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 79, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 417, i32 6 }
@___asan_gen_.35 = private unnamed_addr constant [27 x i8] c"snd_ak4117_iec958_controls\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 309, i32 38 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 312, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 320, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 328, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 336, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 344, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 351, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 358, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 365, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 372, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 379, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 387, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 395, i32 11 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private constant [28 x i8] c"../sound/i2c/other/ak4117.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 403, i32 11 }
@___asan_gen_.77 = private unnamed_addr constant [38 x i8] c"switch.table.snd_ak4117_external_rate\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [46 x i8] c"switch.table.snd_ak4117_check_rate_and_errors\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [33 x i8] c"switch.table.snd_ak4117_rate_get\00", align 1
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__ksymtab_snd_ak4117_build, ptr @__ksymtab_snd_ak4117_check_rate_and_errors, ptr @__ksymtab_snd_ak4117_create, ptr @__ksymtab_snd_ak4117_external_rate, ptr @__ksymtab_snd_ak4117_reg_write, ptr @__ksymtab_snd_ak4117_reinit, ptr @snd_ak4117_create.ops, ptr @snd_ak4117_create.__key, ptr @.str, ptr @snd_ak4117_create.__key.1, ptr @.str.2, ptr @.str.3, ptr @snd_ak4117_iec958_controls, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @switch.table.snd_ak4117_external_rate, ptr @switch.table.snd_ak4117_check_rate_and_errors, ptr @switch.table.snd_ak4117_rate_get], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ak4117_create.ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ak4117_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ak4117_create.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ak4117_iec958_controls to i32), i32 624, i32 768, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_ak4117_external_rate to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_ak4117_check_rate_and_errors to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_ak4117_rate_get to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ak4117_create(ptr noundef %card, ptr noundef %read, ptr noundef %write, ptr nocapture noundef readonly %pgm, ptr noundef %private_data, ptr noundef writeonly %r_ak4117) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 204) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.ak4117, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @snd_ak4117_create.__key, i16 noundef signext 3) #6
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %card, ptr %call7.i.i, align 8
  %read3 = getelementptr inbounds %struct.ak4117, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %read3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %read, ptr %read3, align 8
  %write4 = getelementptr inbounds %struct.ak4117, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %write4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %write, ptr %write4, align 4
  %private_data5 = getelementptr inbounds %struct.ak4117, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %private_data5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %private_data, ptr %private_data5, align 4
  %timer = getelementptr inbounds %struct.ak4117, ptr %call7.i.i, i32 0, i32 13
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @snd_ak4117_timer, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @snd_ak4117_create.__key.1) #6
  %uglygep = getelementptr i8, ptr %call7.i.i, i32 64
  %5 = call ptr @memcpy(ptr %uglygep, ptr %pgm, i32 5)
  tail call void @snd_ak4117_reinit(ptr noundef nonnull %call7.i.i)
  %6 = ptrtoint ptr %read3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read3, align 8
  %8 = ptrtoint ptr %private_data5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data5, align 4
  %call.i = tail call zeroext i8 %7(ptr noundef %9, i8 noundef zeroext 5) #6
  %10 = and i8 %call.i, -8
  %rcs0 = getelementptr inbounds %struct.ak4117, ptr %call7.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %rcs0 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %rcs0, align 8
  %12 = ptrtoint ptr %read3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read3, align 8
  %14 = ptrtoint ptr %private_data5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private_data5, align 4
  %call.i52 = tail call zeroext i8 %13(ptr noundef %15, i8 noundef zeroext 6) #6
  %rcs1 = getelementptr inbounds %struct.ak4117, ptr %call7.i.i, i32 0, i32 11
  %16 = ptrtoint ptr %rcs1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %call.i52, ptr %rcs1, align 1
  %17 = ptrtoint ptr %read3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read3, align 8
  %19 = ptrtoint ptr %private_data5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private_data5, align 4
  %call.i55 = tail call zeroext i8 %18(ptr noundef %20, i8 noundef zeroext 7) #6
  %rcs2 = getelementptr inbounds %struct.ak4117, ptr %call7.i.i, i32 0, i32 12
  %21 = ptrtoint ptr %rcs2 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call.i55, ptr %rcs2, align 2
  %call18 = tail call i32 @snd_device_new(ptr noundef %card, i32 noundef 3, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @snd_ak4117_create.ops) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %__fail, label %if.end22

if.end22:                                         ; preds = %do.body
  %tobool.not = icmp eq ptr %r_ak4117, null
  br i1 %tobool.not, label %if.end22.cleanup_crit_edge, label %if.then23

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then23:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %r_ak4117 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %r_ak4117, align 4
  br label %cleanup

__fail:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call.i56 = tail call i32 @del_timer_sync(ptr noundef %timer) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %__fail, %if.then23, %if.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %__fail ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then23 ], [ 0, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ak4117_dev_free(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device_data = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %timer.i = getelementptr inbounds %struct.ak4117, ptr %1, i32 0, i32 13
  %call.i = tail call i32 @del_timer_sync(ptr noundef %timer.i) #6
  tail call void @kfree(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ak4117_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %init = getelementptr i8, ptr %t, i32 -132
  %0 = ptrtoint ptr %init to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %init, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %t, i32 -148
  %call = tail call i32 @snd_ak4117_check_rate_and_errors(ptr noundef %add.ptr, i32 noundef 0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %1, 1
  %call1 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_ak4117_reinit(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr %struct.ak4117, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %regmap, align 4
  %timer = getelementptr inbounds %struct.ak4117, ptr %chip, i32 0, i32 13
  %call = tail call i32 @del_timer(ptr noundef %timer) #6
  %init = getelementptr inbounds %struct.ak4117, ptr %chip, i32 0, i32 4
  %2 = ptrtoint ptr %init to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %init, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %init, align 4
  %write.i = getelementptr inbounds %struct.ak4117, ptr %chip, i32 0, i32 1
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %private_data.i = getelementptr inbounds %struct.ak4117, ptr %chip, i32 0, i32 3
  %5 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data.i, align 4
  tail call void %4(ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %regmap, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 42949600) #6
  %9 = and i8 %1, -4
  %and = or i8 %9, 1
  %10 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i, align 4
  %12 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data.i, align 4
  tail call void %11(ptr noundef %13, i8 noundef zeroext 0, i8 noundef zeroext %and) #6
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %and, ptr %regmap, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 42949600) #6
  %arrayidx5 = getelementptr %struct.ak4117, ptr %chip, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx5, align 1
  %18 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write.i, align 4
  %20 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %private_data.i, align 4
  tail call void %19(ptr noundef %21, i8 noundef zeroext 1, i8 noundef zeroext %17) #6
  %22 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %17, ptr %arrayidx5, align 1
  %arrayidx5.1 = getelementptr %struct.ak4117, ptr %chip, i32 0, i32 6, i32 2
  %23 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx5.1, align 1
  %25 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write.i, align 4
  %27 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %private_data.i, align 4
  tail call void %26(ptr noundef %28, i8 noundef zeroext 2, i8 noundef zeroext %24) #6
  %29 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %24, ptr %arrayidx5.1, align 1
  %arrayidx5.2 = getelementptr %struct.ak4117, ptr %chip, i32 0, i32 6, i32 3
  %30 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx5.2, align 1
  %32 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write.i, align 4
  %34 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %private_data.i, align 4
  tail call void %33(ptr noundef %35, i8 noundef zeroext 3, i8 noundef zeroext %31) #6
  %36 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %31, ptr %arrayidx5.2, align 1
  %arrayidx5.3 = getelementptr %struct.ak4117, ptr %chip, i32 0, i32 6, i32 4
  %37 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx5.3, align 1
  %39 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write.i, align 4
  %41 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %private_data.i, align 4
  tail call void %40(ptr noundef %42, i8 noundef zeroext 4, i8 noundef zeroext %38) #6
  %43 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %38, ptr %arrayidx5.3, align 1
  %44 = or i8 %1, 3
  %45 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write.i, align 4
  %47 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %private_data.i, align 4
  tail call void %46(ptr noundef %48, i8 noundef zeroext 0, i8 noundef zeroext %44) #6
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %44, ptr %regmap, align 1
  %50 = ptrtoint ptr %init to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load11 = load i8, ptr %init, align 4
  %bf.clear12 = and i8 %bf.load11, 127
  store i8 %bf.clear12, ptr %init, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %51, 1
  %call15 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_ak4117_reg_write(ptr nocapture noundef %chip, i8 noundef zeroext %reg, i8 noundef zeroext %mask, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %reg)
  %cmp = icmp ugt i8 %reg, 4
  br i1 %cmp, label %entry.return_crit_edge, label %reg_write.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

reg_write.exit:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %reg to i32
  %arrayidx = getelementptr %struct.ak4117, ptr %chip, i32 0, i32 6, i32 %conv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %neg = xor i8 %mask, -1
  %and = and i8 %1, %neg
  %or = or i8 %and, %val
  %write.i = getelementptr inbounds %struct.ak4117, ptr %chip, i32 0, i32 1
  %2 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write.i, align 4
  %private_data.i = getelementptr inbounds %struct.ak4117, ptr %chip, i32 0, i32 3
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  tail call void %3(ptr noundef %5, i8 noundef zeroext %reg, i8 noundef zeroext %or) #6
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %or, ptr %arrayidx, align 1
  br label %return

return:                                           ; preds = %reg_write.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ak4117_build(ptr noundef %ak4117, ptr noundef %cap_substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cap_substream, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !66

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 417, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %substream = getelementptr inbounds %struct.ak4117, ptr %ak4117, i32 0, i32 8
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %cap_substream, ptr %substream, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %cap_substream, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end32.for.body_crit_edge, %if.end23
  %idx.051 = phi i32 [ 0, %if.end23 ], [ %inc, %if.end32.for.body_crit_edge ]
  %arrayidx = getelementptr [13 x %struct.snd_kcontrol_new], ptr @snd_ak4117_iec958_controls, i32 0, i32 %idx.051
  %call = tail call ptr @snd_ctl_new1(ptr noundef %arrayidx, ptr noundef %ak4117) #6
  %cmp24 = icmp eq ptr %call, null
  br i1 %cmp24, label %for.body.cleanup_crit_edge, label %if.end26

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %for.body
  %1 = ptrtoint ptr %cap_substream to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cap_substream, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %device, align 4
  %device27 = getelementptr inbounds %struct.snd_kcontrol, ptr %call, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %device27 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %device27, align 4
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number, align 4
  %subdevice = getelementptr inbounds %struct.snd_kcontrol, ptr %call, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %subdevice to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %subdevice, align 4
  %9 = ptrtoint ptr %ak4117 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ak4117, align 4
  %call29 = tail call i32 @snd_ctl_add(ptr noundef %10, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end26.cleanup_crit_edge, label %if.end32

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.end26
  %arrayidx33 = getelementptr %struct.ak4117, ptr %ak4117, i32 0, i32 7, i32 %idx.051
  %11 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %arrayidx33, align 4
  %inc = add nuw nsw i32 %idx.051, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %if.end32.cleanup_crit_edge, label %if.end32.for.body_crit_edge

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end32.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end32.cleanup_crit_edge ], [ %call29, %if.end26.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ak4117_external_rate(ptr nocapture noundef readonly %ak4117) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %read.i = getelementptr inbounds %struct.ak4117, ptr %ak4117, i32 0, i32 2
  %0 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read.i, align 4
  %private_data.i = getelementptr inbounds %struct.ak4117, ptr %ak4117, i32 0, i32 3
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call.i = tail call zeroext i8 %1(ptr noundef %3, i8 noundef zeroext 6) #6
  %4 = and i8 %call.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %4)
  %.not = icmp eq i8 %4, 15
  br i1 %.not, label %entry.external_rate.exit_crit_edge, label %switch.lookup

entry.external_rate.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %external_rate.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = zext i8 %4 to i32
  %switch.gep = getelementptr inbounds [15 x i32], ptr @switch.table.snd_ak4117_external_rate, i32 0, i32 %and.i
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %external_rate.exit

external_rate.exit:                               ; preds = %switch.lookup, %entry.external_rate.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.external_rate.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ak4117_check_rate_and_errors(ptr noundef %ak4117, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %substream = getelementptr inbounds %struct.ak4117, ptr %ak4117, i32 0, i32 8
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %read.i = getelementptr inbounds %struct.ak4117, ptr %ak4117, i32 0, i32 2
  %4 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read.i, align 4
  %private_data.i = getelementptr inbounds %struct.ak4117, ptr %ak4117, i32 0, i32 3
  %6 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i, align 4
  %call.i = tail call zeroext i8 %5(ptr noundef %7, i8 noundef zeroext 6) #6
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end, label %cond.end.__rate_crit_edge

cond.end.__rate_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %__rate

if.end:                                           ; preds = %cond.end
  %8 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i, align 4
  %10 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data.i, align 4
  %call.i260 = tail call zeroext i8 %9(ptr noundef %11, i8 noundef zeroext 5) #6
  %12 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read.i, align 4
  %14 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private_data.i, align 4
  %call.i263 = tail call zeroext i8 %13(ptr noundef %15, i8 noundef zeroext 7) #6
  %lock = getelementptr inbounds %struct.ak4117, ptr %ak4117, i32 0, i32 5
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %conv11 = zext i8 %call.i260 to i32
  %and12 = and i32 %conv11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end.if.end15_crit_edge, label %if.then14

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %errors = getelementptr inbounds %struct.ak4117, ptr %ak4117, i32 0, i32 9
  %16 = ptrtoint ptr %errors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %errors, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %errors, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end.if.end15_crit_edge
  %and17 = and i32 %conv11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.if.end23_crit_edge, label %if.then19

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx21 = getelementptr %struct.ak4117, ptr %ak4117, i32 0, i32 9, i32 1
  %18 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx21, align 4
  %inc22 = add i32 %19, 1
  store i32 %inc22, ptr %arrayidx21, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end15.if.end23_crit_edge
  %conv24 = zext i8 %call.i263 to i32
  %and25 = and i32 %conv24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end23.if.end31_crit_edge, label %if.then27

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx29 = getelementptr %struct.ak4117, ptr %ak4117, i32 0, i32 9, i32 3
  %20 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx29, align 4
  %inc30 = add i32 %21, 1
  store i32 %inc30, ptr %arrayidx29, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end23.if.end31_crit_edge
  %and33 = and i32 %conv24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end31.if.end39_crit_edge, label %if.then35

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx37 = getelementptr %struct.ak4117, ptr %ak4117, i32 0, i32 9, i32 2
  %22 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx37, align 4
  %inc38 = add i32 %23, 1
  store i32 %inc38, ptr %arrayidx37, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.end31.if.end39_crit_edge
  %rcs040 = getelementptr inbounds %struct.ak4117, ptr %ak4117, i32 0, i32 10
  %24 = ptrtoint ptr %rcs040 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rcs040, align 4
  %and44254 = xor i8 %25, %call.i260
  %xor = and i8 %and44254, -81
  %rcs146 = getelementptr inbounds %struct.ak4117, ptr %ak4117, i32 0, i32 11
  %26 = ptrtoint ptr %rcs146 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rcs146, align 1
  %28 = xor i8 %27, %call.i
  %xor51255 = and i8 %28, 127
  %and54 = and i8 %call.i260, -8
  store i8 %and54, ptr %rcs040, align 4
  store i8 %call.i, ptr %rcs146, align 1
  %rcs258 = getelementptr inbounds %struct.ak4117, ptr %ak4117, i32 0, i32 12
  %29 = ptrtoint ptr %rcs258 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %call.i263, ptr %rcs258, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #6
  br i1 %tobool13.not, label %if.end39.if.end65_crit_edge, label %if.then63

if.end39.if.end65_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then63:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %ak4117 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ak4117, align 4
  %kctls = getelementptr inbounds %struct.ak4117, ptr %ak4117, i32 0, i32 7
  %32 = ptrtoint ptr %kctls to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %kctls, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %33, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %31, i32 noundef 1, ptr noundef %id) #6
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end39.if.end65_crit_edge
  br i1 %tobool18.not, label %if.end65.if.end74_crit_edge, label %if.then69

if.end65.if.end74_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.then69:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %ak4117 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ak4117, align 4
  %arrayidx72 = getelementptr %struct.ak4117, ptr %ak4117, i32 0, i32 7, i32 1
  %36 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx72, align 4
  %id73 = getelementptr inbounds %struct.snd_kcontrol, ptr %37, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %35, i32 noundef 1, ptr noundef %id73) #6
  br label %if.end74

if.end74:                                         ; preds = %if.then69, %if.end65.if.end74_crit_edge
  br i1 %tobool26.not, label %if.end74.if.end83_crit_edge, label %if.then78

if.end74.if.end83_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %ak4117 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ak4117, align 4
  %arrayidx81 = getelementptr %struct.ak4117, ptr %ak4117, i32 0, i32 7, i32 2
  %40 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx81, align 4
  %id82 = getelementptr inbounds %struct.snd_kcontrol, ptr %41, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %39, i32 noundef 1, ptr noundef %id82) #6
  br label %if.end83

if.end83:                                         ; preds = %if.then78, %if.end74.if.end83_crit_edge
  br i1 %tobool34.not, label %if.end83.if.end92_crit_edge, label %if.then87

if.end83.if.end92_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.then87:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %ak4117 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ak4117, align 4
  %arrayidx90 = getelementptr %struct.ak4117, ptr %ak4117, i32 0, i32 7, i32 3
  %44 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx90, align 4
  %id91 = getelementptr inbounds %struct.snd_kcontrol, ptr %45, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %43, i32 noundef 1, ptr noundef %id91) #6
  br label %if.end92

if.end92:                                         ; preds = %if.then87, %if.end83.if.end92_crit_edge
  %conv93 = zext i8 %xor51255 to i32
  %and94 = and i32 %conv93, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end92.if.end101_crit_edge, label %if.then96

if.end92.if.end101_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

if.then96:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %ak4117 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ak4117, align 4
  %arrayidx99 = getelementptr %struct.ak4117, ptr %ak4117, i32 0, i32 7, i32 4
  %48 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx99, align 4
  %id100 = getelementptr inbounds %struct.snd_kcontrol, ptr %49, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %47, i32 noundef 1, ptr noundef %id100) #6
  br label %if.end101

if.end101:                                        ; preds = %if.then96, %if.end92.if.end101_crit_edge
  %and103 = and i32 %conv93, 16
  %conv104 = zext i8 %xor to i32
  %and105 = and i32 %conv104, 2
  %or = or i32 %and103, %and105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool106.not = icmp eq i32 %or, 0
  br i1 %tobool106.not, label %if.end101.if.end112_crit_edge, label %if.then107

if.end101.if.end112_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

if.then107:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %ak4117 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ak4117, align 4
  %arrayidx110 = getelementptr %struct.ak4117, ptr %ak4117, i32 0, i32 7, i32 6
  %52 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx110, align 4
  %id111 = getelementptr inbounds %struct.snd_kcontrol, ptr %53, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %51, i32 noundef 1, ptr noundef %id111) #6
  br label %if.end112

if.end112:                                        ; preds = %if.then107, %if.end101.if.end112_crit_edge
  %and114 = and i32 %conv104, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.end112.if.end121_crit_edge, label %if.then116

if.end112.if.end121_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end121

if.then116:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %ak4117 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ak4117, align 4
  %arrayidx119 = getelementptr %struct.ak4117, ptr %ak4117, i32 0, i32 7, i32 8
  %56 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx119, align 4
  %id120 = getelementptr inbounds %struct.snd_kcontrol, ptr %57, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %55, i32 noundef 1, ptr noundef %id120) #6
  br label %if.end121

if.end121:                                        ; preds = %if.then116, %if.end112.if.end121_crit_edge
  %and123 = and i32 %conv104, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %if.end121.if.end130_crit_edge, label %if.then125

if.end121.if.end130_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130

if.then125:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %ak4117 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ak4117, align 4
  %arrayidx128 = getelementptr %struct.ak4117, ptr %ak4117, i32 0, i32 7, i32 9
  %60 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx128, align 4
  %id129 = getelementptr inbounds %struct.snd_kcontrol, ptr %61, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %59, i32 noundef 1, ptr noundef %id129) #6
  br label %if.end130

if.end130:                                        ; preds = %if.then125, %if.end121.if.end130_crit_edge
  %and132 = and i32 %conv93, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %if.end130.if.end139_crit_edge, label %if.then134

if.end130.if.end139_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end139

if.then134:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %ak4117 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ak4117, align 4
  %arrayidx137 = getelementptr %struct.ak4117, ptr %ak4117, i32 0, i32 7, i32 10
  %64 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx137, align 4
  %id138 = getelementptr inbounds %struct.snd_kcontrol, ptr %65, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %63, i32 noundef 1, ptr noundef %id138) #6
  br label %if.end139

if.end139:                                        ; preds = %if.then134, %if.end130.if.end139_crit_edge
  %and141 = and i32 %conv93, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %if.end139.if.end148_crit_edge, label %if.then143

if.end139.if.end148_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end148

if.then143:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %ak4117 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ak4117, align 4
  %arrayidx146 = getelementptr %struct.ak4117, ptr %ak4117, i32 0, i32 7, i32 11
  %68 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx146, align 4
  %id147 = getelementptr inbounds %struct.snd_kcontrol, ptr %69, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %67, i32 noundef 1, ptr noundef %id147) #6
  br label %if.end148

if.end148:                                        ; preds = %if.then143, %if.end139.if.end148_crit_edge
  %change_callback = getelementptr inbounds %struct.ak4117, ptr %ak4117, i32 0, i32 15
  %70 = ptrtoint ptr %change_callback to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %change_callback, align 4
  %tobool149.not = icmp eq ptr %71, null
  %or152256 = or i8 %xor51255, %xor
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or152256)
  %cmp153.not = icmp eq i8 %or152256, 0
  %or.cond = select i1 %tobool149.not, i1 true, i1 %cmp153.not
  br i1 %or.cond, label %if.end148.__rate_crit_edge, label %if.then155

if.end148.__rate_crit_edge:                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #8
  br label %__rate

if.then155:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %71(ptr noundef %ak4117, i8 noundef zeroext %xor, i8 noundef zeroext %xor51255) #6
  br label %__rate

__rate:                                           ; preds = %if.then155, %if.end148.__rate_crit_edge, %cond.end.__rate_crit_edge
  %72 = and i8 %call.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %72)
  %.not = icmp eq i8 %72, 15
  br i1 %.not, label %__rate.external_rate.exit_crit_edge, label %switch.lookup

__rate.external_rate.exit_crit_edge:              ; preds = %__rate
  call void @__sanitizer_cov_trace_pc() #8
  br label %external_rate.exit

switch.lookup:                                    ; preds = %__rate
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = zext i8 %72 to i32
  %switch.gep = getelementptr inbounds [15 x i32], ptr @switch.table.snd_ak4117_check_rate_and_errors, i32 0, i32 %and.i
  %73 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %73)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %external_rate.exit

external_rate.exit:                               ; preds = %switch.lookup, %__rate.external_rate.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %__rate.external_rate.exit_crit_edge ]
  %and159 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159)
  %tobool160.not = icmp ne i32 %and159, 0
  %tobool162.not = icmp eq ptr %cond, null
  %or.cond257 = select i1 %tobool160.not, i1 true, i1 %tobool162.not
  br i1 %or.cond257, label %external_rate.exit.if.end185_crit_edge, label %land.lhs.true163

external_rate.exit.if.end185_crit_edge:           ; preds = %external_rate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end185

land.lhs.true163:                                 ; preds = %external_rate.exit
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %cond, i32 0, i32 14
  %74 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %retval.0.i)
  %cmp164.not = icmp eq i32 %75, %retval.0.i
  br i1 %cmp164.not, label %land.lhs.true163.if.end185_crit_edge, label %do.body167

land.lhs.true163.if.end185_crit_edge:             ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end185

do.body167:                                       ; preds = %land.lhs.true163
  %76 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %substream, align 4
  %call174 = tail call i32 @_snd_pcm_stream_lock_irqsave(ptr noundef %77) #6
  %78 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %substream, align 4
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %79, i32 0, i32 11
  %80 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %runtime.i, align 4
  %status.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %81, i32 0, i32 37
  %82 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %status.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 8
  %86 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values)
  switch i32 %85, label %do.body167.if.end183_crit_edge [
    i32 3, label %do.body167.if.then180_crit_edge
    i32 5, label %snd_pcm_running.exit
  ]

do.body167.if.then180_crit_edge:                  ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then180

do.body167.if.end183_crit_edge:                   ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end183

snd_pcm_running.exit:                             ; preds = %do.body167
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %79, i32 0, i32 5
  %87 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp5.i.not = icmp eq i32 %88, 0
  br i1 %cmp5.i.not, label %snd_pcm_running.exit.if.then180_crit_edge, label %snd_pcm_running.exit.if.end183_crit_edge

snd_pcm_running.exit.if.end183_crit_edge:         ; preds = %snd_pcm_running.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end183

snd_pcm_running.exit.if.then180_crit_edge:        ; preds = %snd_pcm_running.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then180

if.then180:                                       ; preds = %snd_pcm_running.exit.if.then180_crit_edge, %do.body167.if.then180_crit_edge
  %call182 = tail call i32 @snd_pcm_stop(ptr noundef %79, i32 noundef 5) #6
  %sleep = getelementptr inbounds %struct.snd_pcm_runtime, ptr %cond, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %sleep, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %if.end183

if.end183:                                        ; preds = %if.then180, %snd_pcm_running.exit.if.end183_crit_edge, %do.body167.if.end183_crit_edge
  %res.0 = phi i32 [ 1, %if.then180 ], [ %retval.0.i, %snd_pcm_running.exit.if.end183_crit_edge ], [ %retval.0.i, %do.body167.if.end183_crit_edge ]
  %89 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %substream, align 4
  tail call void @snd_pcm_stream_unlock_irqrestore(ptr noundef %90, i32 noundef %call174) #6
  br label %if.end185

if.end185:                                        ; preds = %if.end183, %land.lhs.true163.if.end185_crit_edge, %external_rate.exit.if.end185_crit_edge
  %res.1 = phi i32 [ %retval.0.i, %external_rate.exit.if.end185_crit_edge ], [ %res.0, %if.end183 ], [ %retval.0.i, %land.lhs.true163.if.end185_crit_edge ]
  ret i32 %res.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_pcm_stream_lock_irqsave(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_ak4117_in_error_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  store i32 2147483647, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ak4117_in_error_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.ak4117, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %arrayidx = getelementptr %struct.ak4117, ptr %1, i32 0, i32 9, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  %7 = load i32, ptr %private_value, align 4
  %arrayidx4 = getelementptr %struct.ak4117, ptr %1, i32 0, i32 9, i32 %7
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx4, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_ak4117_rate_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  store i32 192000, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ak4117_rate_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %read.i = getelementptr inbounds %struct.ak4117, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read.i, align 4
  %private_data.i = getelementptr inbounds %struct.ak4117, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %call.i = tail call zeroext i8 %3(ptr noundef %5, i8 noundef zeroext 6) #6
  %6 = and i8 %call.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %6)
  %.not = icmp eq i8 %6, 15
  br i1 %.not, label %entry.external_rate.exit_crit_edge, label %switch.lookup

entry.external_rate.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %external_rate.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = zext i8 %6 to i32
  %switch.gep = getelementptr inbounds [15 x i32], ptr @switch.table.snd_ak4117_rate_get, i32 0, i32 %and.i
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %external_rate.exit

external_rate.exit:                               ; preds = %switch.lookup, %entry.external_rate.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.external_rate.exit_crit_edge ]
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %retval.0.i, ptr %value, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_ak4117_spdif_mask_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
define internal i32 @snd_ak4117_spdif_mask_get(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = call ptr @memset(ptr %value, i32 255, i32 5)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_ak4117_spdif_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
define internal i32 @snd_ak4117_spdif_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %read.i = getelementptr inbounds %struct.ak4117, ptr %1, i32 0, i32 2
  %private_data.i = getelementptr inbounds %struct.ak4117, ptr %1, i32 0, i32 3
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read.i, align 4
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %call.i = tail call zeroext i8 %3(ptr noundef %5, i8 noundef zeroext 8) #6
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call.i, ptr %value, align 1
  %7 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read.i, align 4
  %9 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data.i, align 4
  %call.i.1 = tail call zeroext i8 %8(ptr noundef %10, i8 noundef zeroext 9) #6
  %arrayidx.1 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call.i.1, ptr %arrayidx.1, align 1
  %12 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read.i, align 4
  %14 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private_data.i, align 4
  %call.i.2 = tail call zeroext i8 %13(ptr noundef %15, i8 noundef zeroext 10) #6
  %arrayidx.2 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %call.i.2, ptr %arrayidx.2, align 1
  %17 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read.i, align 4
  %19 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private_data.i, align 4
  %call.i.3 = tail call zeroext i8 %18(ptr noundef %20, i8 noundef zeroext 11) #6
  %arrayidx.3 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call.i.3, ptr %arrayidx.3, align 1
  %22 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read.i, align 4
  %24 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private_data.i, align 4
  %call.i.4 = tail call zeroext i8 %23(ptr noundef %25, i8 noundef zeroext 12) #6
  %arrayidx.4 = getelementptr [24 x i8], ptr %value, i32 0, i32 4
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %call.i.4, ptr %arrayidx.4, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_ak4117_spdif_pinfo(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %2 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 65535, ptr %max, align 4
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %count, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ak4117_spdif_pget(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 63730, ptr %value, align 8
  %arrayidx2 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 19999, ptr %arrayidx2, align 4
  %read.i = getelementptr inbounds %struct.ak4117, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read.i, align 4
  %private_data.i = getelementptr inbounds %struct.ak4117, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i, align 4
  %call.i = tail call zeroext i8 %5(ptr noundef %7, i8 noundef zeroext 13) #6
  %conv = zext i8 %call.i to i32
  %8 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i, align 4
  %10 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data.i, align 4
  %call.i28 = tail call zeroext i8 %9(ptr noundef %11, i8 noundef zeroext 14) #6
  %conv4 = zext i8 %call.i28 to i32
  %shl = shl nuw nsw i32 %conv4, 8
  %or = or i32 %shl, %conv
  %arrayidx8 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %arrayidx8, align 8
  %13 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read.i, align 4
  %15 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private_data.i, align 4
  %call.i31 = tail call zeroext i8 %14(ptr noundef %16, i8 noundef zeroext 15) #6
  %conv10 = zext i8 %call.i31 to i32
  %17 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read.i, align 4
  %19 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private_data.i, align 4
  %call.i34 = tail call zeroext i8 %18(ptr noundef %20, i8 noundef zeroext 16) #6
  %conv12 = zext i8 %call.i34 to i32
  %shl13 = shl nuw nsw i32 %conv12, 8
  %or14 = or i32 %shl13, %conv10
  %arrayidx18 = getelementptr [128 x i32], ptr %value, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or14, ptr %arrayidx18, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_ak4117_spdif_qinfo(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
define internal i32 @snd_ak4117_spdif_qget(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %read.i = getelementptr inbounds %struct.ak4117, ptr %1, i32 0, i32 2
  %private_data.i = getelementptr inbounds %struct.ak4117, ptr %1, i32 0, i32 3
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read.i, align 4
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %call.i = tail call zeroext i8 %3(ptr noundef %5, i8 noundef zeroext 17) #6
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call.i, ptr %value, align 1
  %7 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read.i, align 4
  %9 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data.i, align 4
  %call.i.1 = tail call zeroext i8 %8(ptr noundef %10, i8 noundef zeroext 18) #6
  %arrayidx.1 = getelementptr [512 x i8], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call.i.1, ptr %arrayidx.1, align 1
  %12 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read.i, align 4
  %14 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private_data.i, align 4
  %call.i.2 = tail call zeroext i8 %13(ptr noundef %15, i8 noundef zeroext 19) #6
  %arrayidx.2 = getelementptr [512 x i8], ptr %value, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %call.i.2, ptr %arrayidx.2, align 1
  %17 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read.i, align 4
  %19 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private_data.i, align 4
  %call.i.3 = tail call zeroext i8 %18(ptr noundef %20, i8 noundef zeroext 20) #6
  %arrayidx.3 = getelementptr [512 x i8], ptr %value, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call.i.3, ptr %arrayidx.3, align 1
  %22 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read.i, align 4
  %24 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private_data.i, align 4
  %call.i.4 = tail call zeroext i8 %23(ptr noundef %25, i8 noundef zeroext 21) #6
  %arrayidx.4 = getelementptr [512 x i8], ptr %value, i32 0, i32 4
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %call.i.4, ptr %arrayidx.4, align 1
  %27 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read.i, align 4
  %29 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %private_data.i, align 4
  %call.i.5 = tail call zeroext i8 %28(ptr noundef %30, i8 noundef zeroext 22) #6
  %arrayidx.5 = getelementptr [512 x i8], ptr %value, i32 0, i32 5
  %31 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %call.i.5, ptr %arrayidx.5, align 1
  %32 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read.i, align 4
  %34 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %private_data.i, align 4
  %call.i.6 = tail call zeroext i8 %33(ptr noundef %35, i8 noundef zeroext 23) #6
  %arrayidx.6 = getelementptr [512 x i8], ptr %value, i32 0, i32 6
  %36 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %call.i.6, ptr %arrayidx.6, align 1
  %37 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read.i, align 4
  %39 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %private_data.i, align 4
  %call.i.7 = tail call zeroext i8 %38(ptr noundef %40, i8 noundef zeroext 24) #6
  %arrayidx.7 = getelementptr [512 x i8], ptr %value, i32 0, i32 7
  %41 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %call.i.7, ptr %arrayidx.7, align 1
  %42 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read.i, align 4
  %44 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %private_data.i, align 4
  %call.i.8 = tail call zeroext i8 %43(ptr noundef %45, i8 noundef zeroext 25) #6
  %arrayidx.8 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %call.i.8, ptr %arrayidx.8, align 1
  %47 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read.i, align 4
  %49 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %private_data.i, align 4
  %call.i.9 = tail call zeroext i8 %48(ptr noundef %50, i8 noundef zeroext 26) #6
  %arrayidx.9 = getelementptr [512 x i8], ptr %value, i32 0, i32 9
  %51 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %call.i.9, ptr %arrayidx.9, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ak4117_in_bit_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %conv = trunc i32 %3 to i8
  %shr = lshr i32 %3, 8
  %shr5 = lshr i32 %3, 31
  %read.i = getelementptr inbounds %struct.ak4117, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read.i, align 4
  %private_data.i = getelementptr inbounds %struct.ak4117, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i, align 4
  %call.i = tail call zeroext i8 %5(ptr noundef %7, i8 noundef zeroext %conv) #6
  %conv8 = zext i8 %call.i to i32
  %conv9 = and i32 %shr, 255
  %8 = lshr i32 %conv8, %conv9
  %9 = and i32 %8, 1
  %xor = xor i32 %9, %shr5
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %xor, ptr %value, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_ak4117_rx_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  store i32 1, ptr %max, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ak4117_rx_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %arrayidx = getelementptr %struct.ak4117, ptr %1, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 2
  %.lobit = lshr i8 %3, 7
  %4 = zext i8 %.lobit to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ak4117_rx_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.ak4117, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  %arrayidx = getelementptr %struct.ak4117, ptr %1, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 2
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool = icmp ne i32 %5, 0
  %lnot.ext = zext i1 %tobool to i32
  %6 = lshr i8 %3, 7
  %and.lobit = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.lobit, i32 %lnot.ext)
  %.not = icmp eq i32 %and.lobit, %lnot.ext
  br i1 %.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and7 = and i8 %3, 127
  %cond11 = select i1 %tobool, i8 -128, i8 0
  %or = or i8 %cond11, %and7
  %write.i = getelementptr inbounds %struct.ak4117, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write.i, align 4
  %private_data.i = getelementptr inbounds %struct.ak4117, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data.i, align 4
  tail call void %8(ptr noundef %10, i8 noundef zeroext 2, i8 noundef zeroext %or) #6
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %or, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = xor i32 %lnot.ext, %and.lobit
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__UNIQUE_ID_author234, !1, !"__UNIQUE_ID_author234", i1 false, i1 false}
!1 = !{!"../sound/i2c/other/ak4117.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_description235, !3, !"__UNIQUE_ID_description235", i1 false, i1 false}
!3 = !{!"../sound/i2c/other/ak4117.c", i32 18, i32 1}
!4 = !{ptr @__UNIQUE_ID_file236, !5, !"__UNIQUE_ID_file236", i1 false, i1 false}
!5 = !{!"../sound/i2c/other/ak4117.c", i32 19, i32 1}
!6 = !{ptr @__UNIQUE_ID_license237, !5, !"__UNIQUE_ID_license237", i1 false, i1 false}
!7 = !{ptr @snd_ak4117_create.ops, !8, !"ops", i1 false, i1 false}
!8 = !{!"../sound/i2c/other/ak4117.c", i32 67, i32 37}
!9 = !{ptr @snd_ak4117_create.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../sound/i2c/other/ak4117.c", i32 74, i32 2}
!11 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @snd_ak4117_create.__key.1, !13, !"__key", i1 false, i1 false}
!13 = !{!"../sound/i2c/other/ak4117.c", i32 79, i32 2}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/i2c/other/ak4117.c", i32 417, i32 6}
!17 = !{ptr @__ksymtab_snd_ak4117_create, !18, !"__ksymtab_snd_ak4117_create", i1 false, i1 false}
!18 = !{!"../sound/i2c/other/ak4117.c", i32 528, i32 1}
!19 = !{ptr @__ksymtab_snd_ak4117_reg_write, !20, !"__ksymtab_snd_ak4117_reg_write", i1 false, i1 false}
!20 = !{!"../sound/i2c/other/ak4117.c", i32 529, i32 1}
!21 = !{ptr @__ksymtab_snd_ak4117_reinit, !22, !"__ksymtab_snd_ak4117_reinit", i1 false, i1 false}
!22 = !{!"../sound/i2c/other/ak4117.c", i32 530, i32 1}
!23 = !{ptr @__ksymtab_snd_ak4117_build, !24, !"__ksymtab_snd_ak4117_build", i1 false, i1 false}
!24 = !{!"../sound/i2c/other/ak4117.c", i32 531, i32 1}
!25 = !{ptr @__ksymtab_snd_ak4117_external_rate, !26, !"__ksymtab_snd_ak4117_external_rate", i1 false, i1 false}
!26 = !{!"../sound/i2c/other/ak4117.c", i32 532, i32 1}
!27 = !{ptr @__ksymtab_snd_ak4117_check_rate_and_errors, !28, !"__ksymtab_snd_ak4117_check_rate_and_errors", i1 false, i1 false}
!28 = !{!"../sound/i2c/other/ak4117.c", i32 533, i32 1}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/i2c/other/ak4117.c", i32 312, i32 11}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/i2c/other/ak4117.c", i32 320, i32 11}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/i2c/other/ak4117.c", i32 328, i32 11}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/i2c/other/ak4117.c", i32 336, i32 11}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/i2c/other/ak4117.c", i32 344, i32 11}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/i2c/other/ak4117.c", i32 351, i32 11}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/i2c/other/ak4117.c", i32 358, i32 11}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/i2c/other/ak4117.c", i32 365, i32 11}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/i2c/other/ak4117.c", i32 372, i32 11}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/i2c/other/ak4117.c", i32 379, i32 11}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/i2c/other/ak4117.c", i32 387, i32 11}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/i2c/other/ak4117.c", i32 395, i32 11}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/i2c/other/ak4117.c", i32 403, i32 11}
!55 = !{ptr @snd_ak4117_iec958_controls, !56, !"snd_ak4117_iec958_controls", i1 false, i1 false}
!56 = !{!"../sound/i2c/other/ak4117.c", i32 309, i32 38}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"branch_weights", i32 1, i32 2000}
