; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/sigmadsp.c_pt.bc'
source_filename = "../sound/soc/codecs/sigmadsp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+devm_sigmadsp_init\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_sigmadsp_init\09\09\09\09"
module asm "\09.long\09__crc_devm_sigmadsp_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_sigmadsp_init:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_sigmadsp_init\22\09\09\09\09\09"
module asm "__kstrtabns_devm_sigmadsp_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sigmadsp_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_sigmadsp_attach\09\09\09\09"
module asm "\09.long\09__crc_sigmadsp_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sigmadsp_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22sigmadsp_attach\22\09\09\09\09\09"
module asm "__kstrtabns_sigmadsp_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sigmadsp_setup\22, \22a\22\09"
module asm "\09.weak\09__crc_sigmadsp_setup\09\09\09\09"
module asm "\09.long\09__crc_sigmadsp_setup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sigmadsp_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22sigmadsp_setup\22\09\09\09\09\09"
module asm "__kstrtabns_sigmadsp_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sigmadsp_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_sigmadsp_reset\09\09\09\09"
module asm "\09.long\09__crc_sigmadsp_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sigmadsp_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22sigmadsp_reset\22\09\09\09\09\09"
module asm "__kstrtabns_sigmadsp_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sigmadsp_restrict_params\22, \22a\22\09"
module asm "\09.weak\09__crc_sigmadsp_restrict_params\09\09\09\09"
module asm "\09.long\09__crc_sigmadsp_restrict_params\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sigmadsp_restrict_params:\09\09\09\09\09"
module asm "\09.asciz \09\22sigmadsp_restrict_params\22\09\09\09\09\09"
module asm "__kstrtabns_sigmadsp_restrict_params:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sigmadsp = type { ptr, %struct.list_head, %struct.list_head, %struct.snd_pcm_hw_constraint_list, i32, ptr, ptr, %struct.mutex, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sigmadsp_control = type { %struct.list_head, i32, i32, i32, ptr, ptr, i8, i8, [0 x i8] }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.94, i32 }
%union.anon.94 = type { ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.93, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.93 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sigmadsp_data = type { %struct.list_head, i32, i32, i32, [0 x i8] }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.sigma_firmware_header = type { [7 x i8], i8, i32 }
%struct.sigma_action = type { i8, i8, i16, i16, [0 x i8] }
%struct.sigma_fw_chunk = type { i32, i32, i32 }
%struct.sigma_fw_chunk_data = type <{ %struct.sigma_fw_chunk, i16, [0 x i8] }>
%struct.sigma_fw_chunk_control = type <{ %struct.sigma_fw_chunk, i16, i16, i16, [0 x i8] }>
%struct.sigma_fw_chunk_samplerate = type { %struct.sigma_fw_chunk, [0 x i32] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.84, [64 x i8] }
%union.anon.84 = type { %struct.anon.87, [40 x i8] }
%struct.anon.87 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.88, [128 x i8] }
%union.anon.88 = type { %union.anon.90 }
%union.anon.90 = type { [64 x i64] }

@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"devm_sigmadsp_release\00", [42 x i8] zeroinitializer }, align 32
@__kstrtab_devm_sigmadsp_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_sigmadsp_init = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_sigmadsp_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_sigmadsp_init to i32), ptr @__kstrtab_devm_sigmadsp_init, ptr @__kstrtabns_devm_sigmadsp_init }, section "___ksymtab_gpl+devm_sigmadsp_init", align 4
@__kstrtab_sigmadsp_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_sigmadsp_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_sigmadsp_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sigmadsp_attach to i32), ptr @__kstrtab_sigmadsp_attach, ptr @__kstrtabns_sigmadsp_attach }, section "___ksymtab_gpl+sigmadsp_attach", align 4
@__kstrtab_sigmadsp_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_sigmadsp_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_sigmadsp_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sigmadsp_setup to i32), ptr @__kstrtab_sigmadsp_setup, ptr @__kstrtabns_sigmadsp_setup }, section "___ksymtab_gpl+sigmadsp_setup", align 4
@__kstrtab_sigmadsp_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_sigmadsp_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_sigmadsp_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sigmadsp_reset to i32), ptr @__kstrtab_sigmadsp_reset, ptr @__kstrtabns_sigmadsp_reset }, section "___ksymtab_gpl+sigmadsp_reset", align 4
@__kstrtab_sigmadsp_restrict_params = external dso_local constant [0 x i8], align 1
@__kstrtabns_sigmadsp_restrict_params = external dso_local constant [0 x i8], align 1
@__ksymtab_sigmadsp_restrict_params = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sigmadsp_restrict_params to i32), ptr @__kstrtab_sigmadsp_restrict_params, ptr @__kstrtabns_sigmadsp_restrict_params }, section "___ksymtab_gpl+sigmadsp_restrict_params", align 4
@__UNIQUE_ID_file298 = internal constant [56 x i8] c"snd_soc_sigmadsp.file=sound/soc/codecs/snd-soc-sigmadsp\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [29 x i8] c"snd_soc_sigmadsp.license=GPL\00", section ".modinfo", align 1
@sigmadsp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&sigmadsp->lock\00", [16 x i8] zeroinitializer }, align 32
@sigmadsp_firmware_load.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_soc_sigmadsp\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sigmadsp_firmware_load\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/soc/codecs/sigmadsp.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: request_firmware() failed with %i\0A\00", [57 x i8] zeroinitializer }, align 32
@sigmadsp_firmware_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 513, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to load firmware: Invalid size\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sigmadsp_firmware_load._entry_ptr = internal global ptr @sigmadsp_firmware_load._entry, section ".printk_index", align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADISIGM\00", [24 x i8] zeroinitializer }, align 32
@sigmadsp_firmware_load._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 519, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to load firmware: Invalid magic\0A\00", [56 x i8] zeroinitializer }, align 32
@sigmadsp_firmware_load._entry_ptr.12 = internal global ptr @sigmadsp_firmware_load._entry.10, section ".printk_index", align 4
@sigmadsp_firmware_load.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.13, i8 0, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: crc=%x\0A\00", [20 x i8] zeroinitializer }, align 32
@sigmadsp_firmware_load._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 528, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Failed to load firmware: Wrong crc checksum: expected %x got %x\0A\00", [63 x i8] zeroinitializer }, align 32
@sigmadsp_firmware_load._entry_ptr.16 = internal global ptr @sigmadsp_firmware_load._entry.14, section ".printk_index", align 4
@sigmadsp_firmware_load._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 542, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"Failed to load firmware: Invalid version %d. Supported firmware versions: 1, 2\0A\00", [48 x i8] zeroinitializer }, align 32
@sigmadsp_firmware_load._entry_ptr.19 = internal global ptr @sigmadsp_firmware_load._entry.17, section ".printk_index", align 4
@sigmadsp_fw_load_v1.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.20, ptr @.str.4, ptr @.str.21, i8 0, i8 113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sigmadsp_fw_load_v1\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: action returned %i\0A\00", [40 x i8] zeroinitializer }, align 32
@process_sigma_action.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.22, ptr @.str.4, ptr @.str.23, i8 0, i8 102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"process_sigma_action\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: instr:%i addr:%#x len:%zu\0A\00", [33 x i8] zeroinitializer }, align 32
@sigmadsp_fw_load_v2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 356, ptr @.str.26, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unknown chunk type: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sigmadsp_fw_load_v2\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sigmadsp_fw_load_v2._entry_ptr = internal global ptr @sigmadsp_fw_load_v2._entry, section ".printk_index", align 4
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ReadBack\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 585, i32 13 }
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 564, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 499, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 513, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 518, i32 31 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 519, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 525, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 527, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 540, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 455, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 408, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 355, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private constant [31 x i8] c"../sound/soc/codecs/sigmadsp.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 244, i32 40 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__ksymtab_devm_sigmadsp_init, ptr @__ksymtab_sigmadsp_attach, ptr @__ksymtab_sigmadsp_reset, ptr @__ksymtab_sigmadsp_restrict_params, ptr @__ksymtab_sigmadsp_setup, ptr @sigmadsp_firmware_load._entry, ptr @sigmadsp_firmware_load._entry.10, ptr @sigmadsp_firmware_load._entry.14, ptr @sigmadsp_firmware_load._entry.17, ptr @sigmadsp_firmware_load._entry_ptr, ptr @sigmadsp_firmware_load._entry_ptr.12, ptr @sigmadsp_firmware_load._entry_ptr.16, ptr @sigmadsp_firmware_load._entry_ptr.19, ptr @sigmadsp_fw_load_v2._entry, ptr @sigmadsp_fw_load_v2._entry_ptr, ptr @.str, ptr @sigmadsp_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sigmadsp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sigmadsp_firmware_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sigmadsp_firmware_load._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sigmadsp_firmware_load._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sigmadsp_firmware_load._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sigmadsp_fw_load_v2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_sigmadsp_init(ptr noundef %dev, ptr noundef %ops, ptr noundef %firmware_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_sigmadsp_release, i32 noundef 148, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ops, ptr %call, align 4
  %dev2.i = getelementptr inbounds %struct.sigmadsp, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %dev2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev2.i, align 4
  %ctrl_list.i = getelementptr inbounds %struct.sigmadsp, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %ctrl_list.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %ctrl_list.i, ptr %ctrl_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.sigmadsp, ptr %call, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ctrl_list.i, ptr %prev.i.i, align 4
  %data_list.i = getelementptr inbounds %struct.sigmadsp, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %data_list.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %data_list.i, ptr %data_list.i, align 4
  %prev.i8.i = getelementptr inbounds %struct.sigmadsp, ptr %call, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data_list.i, ptr %prev.i8.i, align 4
  %lock.i = getelementptr inbounds %struct.sigmadsp, ptr %call, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @sigmadsp_init.__key) #10
  %call.i = tail call fastcc i32 @sigmadsp_firmware_load(ptr noundef nonnull %call, ptr noundef %firmware_name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @devres_free(ptr noundef nonnull %call) #10
  %6 = inttoptr i32 %call.i to ptr
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %6, %if.then4 ], [ %call, %if.end6 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_sigmadsp_release(ptr nocapture noundef readnone %dev, ptr noundef %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_list.i = getelementptr inbounds %struct.sigmadsp, ptr %res, i32 0, i32 1
  %0 = ptrtoint ptr %ctrl_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_list.i, align 4
  %cmp.not49.i = icmp eq ptr %1, %ctrl_list.i
  br i1 %cmp.not49.i, label %entry.for.end.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %ctrl.050.i = phi ptr [ %_ctrl.0.i, %for.body.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %ctrl.050.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %_ctrl.0.i = load ptr, ptr %ctrl.050.i, align 4
  %name.i = getelementptr inbounds %struct.sigmadsp_control, ptr %ctrl.050.i, i32 0, i32 4
  %3 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name.i, align 4
  tail call void @kfree(ptr noundef %4) #10
  tail call void @kfree(ptr noundef %ctrl.050.i) #10
  %cmp.not.i = icmp eq ptr %_ctrl.0.i, %ctrl_list.i
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %data_list.i = getelementptr inbounds %struct.sigmadsp, ptr %res, i32 0, i32 2
  %5 = ptrtoint ptr %data_list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data_list.i, align 4
  %cmp24.not51.i = icmp eq ptr %6, %data_list.i
  br i1 %cmp24.not51.i, label %for.end.i.sigmadsp_firmware_release.exit_crit_edge, label %for.end.i.for.body26.i_crit_edge

for.end.i.for.body26.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body26.i

for.end.i.sigmadsp_firmware_release.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sigmadsp_firmware_release.exit

for.body26.i:                                     ; preds = %for.body26.i.for.body26.i_crit_edge, %for.end.i.for.body26.i_crit_edge
  %data.052.i = phi ptr [ %_data.0.i, %for.body26.i.for.body26.i_crit_edge ], [ %6, %for.end.i.for.body26.i_crit_edge ]
  %7 = ptrtoint ptr %data.052.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %_data.0.i = load ptr, ptr %data.052.i, align 4
  tail call void @kfree(ptr noundef %data.052.i) #10
  %cmp24.not.i = icmp eq ptr %_data.0.i, %data_list.i
  br i1 %cmp24.not.i, label %for.body26.i.sigmadsp_firmware_release.exit_crit_edge, label %for.body26.i.for.body26.i_crit_edge

for.body26.i.for.body26.i_crit_edge:              ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body26.i

for.body26.i.sigmadsp_firmware_release.exit_crit_edge: ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sigmadsp_firmware_release.exit

sigmadsp_firmware_release.exit:                   ; preds = %for.body26.i.sigmadsp_firmware_release.exit_crit_edge, %for.end.i.sigmadsp_firmware_release.exit_crit_edge
  %8 = ptrtoint ptr %ctrl_list.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %ctrl_list.i, ptr %ctrl_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.sigmadsp, ptr %res, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ctrl_list.i, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %data_list.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %data_list.i, ptr %data_list.i, align 4
  %prev.i48.i = getelementptr inbounds %struct.sigmadsp, ptr %res, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i48.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %data_list.i, ptr %prev.i48.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sigmadsp_attach(ptr noundef %sigmadsp, ptr noundef %component) #0 align 64 {
entry:
  %template.i = alloca %struct.snd_kcontrol_new, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 5
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %component, ptr %component1, align 4
  %current_samplerate = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 4
  %1 = ptrtoint ptr %current_samplerate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %current_samplerate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %entry.sigmadsp_get_samplerate_mask.exit_crit_edge, label %if.end.i

entry.sigmadsp_get_samplerate_mask.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sigmadsp_get_samplerate_mask.exit

if.end.i:                                         ; preds = %entry
  %count.i = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end.i.sigmadsp_get_samplerate_mask.exit_crit_edge, label %for.body.lr.ph.i.i

if.end.i.sigmadsp_get_samplerate_mask.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sigmadsp_get_samplerate_mask.exit

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %rate_constraints.i.i = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 3
  %5 = ptrtoint ptr %rate_constraints.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rate_constraints.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.08.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr %6, i32 %i.08.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %2)
  %cmp2.i.i = icmp eq i32 %8, %2
  br i1 %cmp2.i.i, label %sigmadsp_rate_to_index.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.08.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %4
  br i1 %exitcond.not.i.i, label %for.inc.i.i.sigmadsp_rate_to_index.exit.thread.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.sigmadsp_rate_to_index.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sigmadsp_rate_to_index.exit.thread.i

sigmadsp_rate_to_index.exit.i:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.08.i.i)
  %cmp2.i = icmp slt i32 %i.08.i.i, 0
  %shl.i = shl nuw i32 1, %i.08.i.i
  br i1 %cmp2.i, label %sigmadsp_rate_to_index.exit.i.sigmadsp_rate_to_index.exit.thread.i_crit_edge, label %sigmadsp_rate_to_index.exit.i.sigmadsp_get_samplerate_mask.exit_crit_edge

sigmadsp_rate_to_index.exit.i.sigmadsp_get_samplerate_mask.exit_crit_edge: ; preds = %sigmadsp_rate_to_index.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sigmadsp_get_samplerate_mask.exit

sigmadsp_rate_to_index.exit.i.sigmadsp_rate_to_index.exit.thread.i_crit_edge: ; preds = %sigmadsp_rate_to_index.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sigmadsp_rate_to_index.exit.thread.i

sigmadsp_rate_to_index.exit.thread.i:             ; preds = %sigmadsp_rate_to_index.exit.i.sigmadsp_rate_to_index.exit.thread.i_crit_edge, %for.inc.i.i.sigmadsp_rate_to_index.exit.thread.i_crit_edge
  br label %sigmadsp_get_samplerate_mask.exit

sigmadsp_get_samplerate_mask.exit:                ; preds = %sigmadsp_rate_to_index.exit.thread.i, %sigmadsp_rate_to_index.exit.i.sigmadsp_get_samplerate_mask.exit_crit_edge, %if.end.i.sigmadsp_get_samplerate_mask.exit_crit_edge, %entry.sigmadsp_get_samplerate_mask.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.sigmadsp_get_samplerate_mask.exit_crit_edge ], [ -1, %if.end.i.sigmadsp_get_samplerate_mask.exit_crit_edge ], [ 0, %sigmadsp_rate_to_index.exit.thread.i ], [ %shl.i, %sigmadsp_rate_to_index.exit.i.sigmadsp_get_samplerate_mask.exit_crit_edge ]
  %ctrl_list = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 1
  %9 = getelementptr inbounds i8, ptr %template.i, i32 4
  %name1.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %template.i, i32 0, i32 3
  %info.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %template.i, i32 0, i32 7
  %get.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %template.i, i32 0, i32 8
  %put.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %template.i, i32 0, i32 9
  %private_value.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %template.i, i32 0, i32 11
  %access.i = getelementptr inbounds %struct.snd_kcontrol_new, ptr %template.i, i32 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %sigmadsp_alloc_control.exit.for.cond_crit_edge, %sigmadsp_get_samplerate_mask.exit
  %ctrl.0.in = phi ptr [ %ctrl_list, %sigmadsp_get_samplerate_mask.exit ], [ %ctrl.0, %sigmadsp_alloc_control.exit.for.cond_crit_edge ]
  %10 = ptrtoint ptr %ctrl.0.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %ctrl.0 = load ptr, ptr %ctrl.0.in, align 4
  %cmp.not = icmp eq ptr %ctrl.0, %ctrl_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %template.i) #10
  %11 = call ptr @memset(ptr %9, i32 0, i32 40)
  %12 = ptrtoint ptr %template.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %template.i, align 4
  %name.i = getelementptr inbounds %struct.sigmadsp_control, ptr %ctrl.0, i32 0, i32 4
  %13 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name.i, align 4
  %15 = ptrtoint ptr %name1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %name1.i, align 4
  %16 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @sigmadsp_ctrl_info, ptr %info.i, align 4
  %17 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sigmadsp_ctrl_get, ptr %get.i, align 4
  %18 = ptrtoint ptr %put.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @sigmadsp_ctrl_put, ptr %put.i, align 4
  %19 = ptrtoint ptr %ctrl.0 to i32
  %20 = ptrtoint ptr %private_value.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %private_value.i, align 4
  %samplerates.i = getelementptr inbounds %struct.sigmadsp_control, ptr %ctrl.0, i32 0, i32 1
  %21 = ptrtoint ptr %samplerates.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %samplerates.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i = icmp eq i32 %22, 0
  %and.i.i = and i32 %22, %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.i.i = icmp ne i32 %and.i.i, 0
  %retval.0.i.i = or i1 %tobool.not.i.i, %tobool1.i.i
  %spec.store.select.i = select i1 %retval.0.i.i, i32 3, i32 259
  %23 = ptrtoint ptr %access.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.store.select.i, ptr %access.i, align 4
  %call3.i = call ptr @snd_ctl_new1(ptr noundef nonnull %template.i, ptr noundef %sigmadsp) #10
  %tobool.not.i19 = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i19, label %sigmadsp_alloc_control.exit.thread, label %sigmadsp_alloc_control.exit

sigmadsp_alloc_control.exit.thread:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %template.i) #10
  br label %cleanup

sigmadsp_alloc_control.exit:                      ; preds = %for.body
  %private_free.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call3.i, i32 0, i32 9
  %24 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @sigmadsp_control_free, ptr %private_free.i, align 4
  %kcontrol6.i = getelementptr inbounds %struct.sigmadsp_control, ptr %ctrl.0, i32 0, i32 5
  %25 = ptrtoint ptr %kcontrol6.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call3.i, ptr %kcontrol6.i, align 4
  %26 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %component1, align 4
  %card.i = getelementptr inbounds %struct.snd_soc_component, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card.i, align 4
  %snd_card.i = getelementptr inbounds %struct.snd_soc_card, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %snd_card.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %snd_card.i, align 4
  %call7.i = call i32 @snd_ctl_add(ptr noundef %31, ptr noundef nonnull %call3.i) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %template.i) #10
  %tobool.not = icmp eq i32 %call7.i, 0
  br i1 %tobool.not, label %sigmadsp_alloc_control.exit.for.cond_crit_edge, label %sigmadsp_alloc_control.exit.cleanup_crit_edge

sigmadsp_alloc_control.exit.cleanup_crit_edge:    ; preds = %sigmadsp_alloc_control.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sigmadsp_alloc_control.exit.for.cond_crit_edge:   ; preds = %sigmadsp_alloc_control.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

cleanup:                                          ; preds = %sigmadsp_alloc_control.exit.cleanup_crit_edge, %sigmadsp_alloc_control.exit.thread, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %sigmadsp_alloc_control.exit.thread ], [ 0, %for.cond.cleanup_crit_edge ], [ %call7.i, %sigmadsp_alloc_control.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sigmadsp_setup(ptr noundef %sigmadsp, i32 noundef %samplerate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %current_samplerate = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 4
  %0 = ptrtoint ptr %current_samplerate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_samplerate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %samplerate)
  %cmp = icmp eq i32 %1, %samplerate
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %samplerate)
  %cmp.i = icmp eq i32 %samplerate, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %count.i = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i.if.end3_crit_edge, label %for.body.lr.ph.i.i

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %rate_constraints.i.i = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 3
  %4 = ptrtoint ptr %rate_constraints.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rate_constraints.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.08.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr %5, i32 %i.08.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %samplerate)
  %cmp2.i.i = icmp eq i32 %7, %samplerate
  br i1 %cmp2.i.i, label %sigmadsp_rate_to_index.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.08.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %3
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sigmadsp_rate_to_index.exit.i:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.08.i.i)
  %cmp2.i = icmp slt i32 %i.08.i.i, 0
  %shl.i = shl nuw i32 1, %i.08.i.i
  br i1 %cmp2.i, label %sigmadsp_rate_to_index.exit.i.cleanup_crit_edge, label %sigmadsp_rate_to_index.exit.i.if.end3_crit_edge

sigmadsp_rate_to_index.exit.i.if.end3_crit_edge:  ; preds = %sigmadsp_rate_to_index.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

sigmadsp_rate_to_index.exit.i.cleanup_crit_edge:  ; preds = %sigmadsp_rate_to_index.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %sigmadsp_rate_to_index.exit.i.if.end3_crit_edge, %if.end.i.if.end3_crit_edge
  %retval.0.i = phi i32 [ -1, %if.end.i.if.end3_crit_edge ], [ %shl.i, %sigmadsp_rate_to_index.exit.i.if.end3_crit_edge ]
  %data_list = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 2
  %8 = ptrtoint ptr %data_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %data.065 = load ptr, ptr %data_list, align 4
  %cmp5.not66 = icmp eq ptr %data.065, %data_list
  br i1 %cmp5.not66, label %if.end3.for.end_crit_edge, label %for.body.lr.ph

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end3
  %write.i = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 9
  %control_data.i = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %data.067 = phi ptr [ %data.065, %for.body.lr.ph ], [ %data.0, %for.inc.for.body_crit_edge ]
  %samplerates = getelementptr inbounds %struct.sigmadsp_data, ptr %data.067, i32 0, i32 1
  %9 = ptrtoint ptr %samplerates to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %samplerates, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i60 = icmp eq i32 %10, 0
  %and.i = and i32 %10, %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.i = icmp ne i32 %and.i, 0
  %retval.0.i61 = or i1 %tobool.not.i60, %tobool1.i
  br i1 %retval.0.i61, label %if.end8, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %addr = getelementptr inbounds %struct.sigmadsp_data, ptr %data.067, i32 0, i32 2
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr, align 4
  %data9 = getelementptr inbounds %struct.sigmadsp_data, ptr %data.067, i32 0, i32 4
  %length = getelementptr inbounds %struct.sigmadsp_data, ptr %data.067, i32 0, i32 3
  %13 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length, align 4
  %15 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write.i, align 4
  %17 = ptrtoint ptr %control_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %control_data.i, align 4
  %call.i = tail call i32 %16(ptr noundef %18, i32 noundef %12, ptr noundef %data9, i32 noundef %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end8.for.inc_crit_edge, label %err

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.end8.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %19 = ptrtoint ptr %data.067 to i32
  call void @__asan_load4_noabort(i32 %19)
  %data.0 = load ptr, ptr %data.067, align 4
  %cmp5.not = icmp eq ptr %data.0, %data_list
  br i1 %cmp5.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end3.for.end_crit_edge
  %ctrl_list = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 1
  %20 = ptrtoint ptr %ctrl_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %ctrl.068 = load ptr, ptr %ctrl_list, align 4
  %cmp25.not69 = icmp eq ptr %ctrl.068, %ctrl_list
  br i1 %cmp25.not69, label %for.end.cleanup.sink.split_crit_edge, label %for.end.for.body27_crit_edge

for.end.for.body27_crit_edge:                     ; preds = %for.end
  br label %for.body27

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.body27:                                       ; preds = %for.body27.for.body27_crit_edge, %for.end.for.body27_crit_edge
  %ctrl.070 = phi ptr [ %ctrl.0, %for.body27.for.body27_crit_edge ], [ %ctrl.068, %for.end.for.body27_crit_edge ]
  tail call fastcc void @sigmadsp_activate_ctrl(ptr noundef %sigmadsp, ptr noundef %ctrl.070, i32 noundef %retval.0.i)
  %21 = ptrtoint ptr %ctrl.070 to i32
  call void @__asan_load4_noabort(i32 %21)
  %ctrl.0 = load ptr, ptr %ctrl.070, align 4
  %cmp25.not = icmp eq ptr %ctrl.0, %ctrl_list
  br i1 %cmp25.not, label %for.body27.cleanup.sink.split_crit_edge, label %for.body27.for.body27_crit_edge

for.body27.for.body27_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body27

for.body27.cleanup.sink.split_crit_edge:          ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

err:                                              ; preds = %if.end8
  %ctrl_list.i = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 1
  %22 = ptrtoint ptr %ctrl_list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %ctrl.012.i = load ptr, ptr %ctrl_list.i, align 4
  %cmp.not13.i = icmp eq ptr %ctrl.012.i, %ctrl_list.i
  br i1 %cmp.not13.i, label %err.cleanup.sink.split_crit_edge, label %err.for.body.i_crit_edge

err.for.body.i_crit_edge:                         ; preds = %err
  br label %for.body.i

err.cleanup.sink.split_crit_edge:                 ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %err.for.body.i_crit_edge
  %ctrl.014.i = phi ptr [ %ctrl.0.i, %for.body.i.for.body.i_crit_edge ], [ %ctrl.012.i, %err.for.body.i_crit_edge ]
  tail call fastcc void @sigmadsp_activate_ctrl(ptr noundef %sigmadsp, ptr noundef %ctrl.014.i, i32 noundef 0) #10
  %23 = ptrtoint ptr %ctrl.014.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %ctrl.0.i = load ptr, ptr %ctrl.014.i, align 4
  %cmp.not.i = icmp eq ptr %ctrl.0.i, %ctrl_list.i
  br i1 %cmp.not.i, label %for.body.i.cleanup.sink.split_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.cleanup.sink.split_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.body.i.cleanup.sink.split_crit_edge, %err.cleanup.sink.split_crit_edge, %for.body27.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %samplerate, %for.end.cleanup.sink.split_crit_edge ], [ 0, %err.cleanup.sink.split_crit_edge ], [ %samplerate, %for.body27.cleanup.sink.split_crit_edge ], [ 0, %for.body.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %for.end.cleanup.sink.split_crit_edge ], [ %call.i, %err.cleanup.sink.split_crit_edge ], [ 0, %for.body27.cleanup.sink.split_crit_edge ], [ %call.i, %for.body.i.cleanup.sink.split_crit_edge ]
  %24 = ptrtoint ptr %current_samplerate to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink, ptr %current_samplerate, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sigmadsp_rate_to_index.exit.i.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sigmadsp_rate_to_index.exit.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ -22, %for.inc.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sigmadsp_activate_ctrl(ptr noundef %sigmadsp, ptr noundef %ctrl, i32 noundef %samplerate_mask) unnamed_addr #0 align 64 {
entry:
  %id = alloca %struct.snd_ctl_elem_id, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 5
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %card1 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  %snd_card = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %snd_card, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id) #10
  %samplerates = getelementptr inbounds %struct.sigmadsp_control, ptr %ctrl, i32 0, i32 1
  %6 = ptrtoint ptr %samplerates to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %samplerates, align 4
  %controls_rwsem = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 14
  tail call void @down_write(ptr noundef %controls_rwsem) #10
  %kcontrol = getelementptr inbounds %struct.sigmadsp_control, ptr %ctrl, i32 0, i32 5
  %8 = ptrtoint ptr %kcontrol to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kcontrol, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @up_write(ptr noundef %controls_rwsem) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i = and i32 %7, %samplerate_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  %retval.0.i = or i1 %tobool.not.i, %tobool1.i
  %id4 = getelementptr inbounds %struct.snd_kcontrol, ptr %9, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %id, ptr %id4, i32 64)
  %access = getelementptr inbounds %struct.snd_kcontrol, ptr %9, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %access, align 4
  %13 = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  %cmp = xor i1 %retval.0.i, %14
  br i1 %cmp, label %if.end13, label %if.end25

if.end13:                                         ; preds = %if.end
  %xor = xor i32 %12, 256
  %15 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %xor, ptr %access, align 4
  tail call void @up_write(ptr noundef %controls_rwsem) #10
  %16 = select i1 %retval.0.i, i1 %cmp, i1 false
  br i1 %16, label %if.then19, label %if.end13.if.then27_crit_edge

if.end13.if.then27_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then27

if.then19:                                        ; preds = %if.end13
  %lock = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %cached = getelementptr inbounds %struct.sigmadsp_control, ptr %ctrl, i32 0, i32 7
  %17 = ptrtoint ptr %cached to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %cached, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool20.not = icmp eq i8 %18, 0
  br i1 %tobool20.not, label %if.then19.if.end23_crit_edge, label %if.then21

if.then19.if.end23_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then21:                                        ; preds = %if.then19
  %cache = getelementptr inbounds %struct.sigmadsp_control, ptr %ctrl, i32 0, i32 8
  %num_bytes.i = getelementptr inbounds %struct.sigmadsp_control, ptr %ctrl, i32 0, i32 3
  %19 = ptrtoint ptr %num_bytes.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %20)
  %cmp.i = icmp ult i32 %20, 21
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then21.if.else.i_crit_edge

if.then21.if.else.i_crit_edge:                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then21
  %21 = ptrtoint ptr %sigmadsp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sigmadsp, align 4
  %tobool.not.i48 = icmp eq ptr %22, null
  br i1 %tobool.not.i48, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true1.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %tobool3.not.i = icmp eq ptr %24, null
  br i1 %tobool3.not.i, label %land.lhs.true1.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true1.i.if.else.i_crit_edge:             ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #12
  %addr.i = getelementptr inbounds %struct.sigmadsp_control, ptr %ctrl, i32 0, i32 2
  %25 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr.i, align 4
  %call.i = tail call i32 %24(ptr noundef %sigmadsp, i32 noundef %26, ptr noundef %cache, i32 noundef %20) #10
  br label %if.end23

if.else.i:                                        ; preds = %land.lhs.true1.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then21.if.else.i_crit_edge
  %addr7.i = getelementptr inbounds %struct.sigmadsp_control, ptr %ctrl, i32 0, i32 2
  %27 = ptrtoint ptr %addr7.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %addr7.i, align 4
  %write.i.i = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 9
  %29 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write.i.i, align 4
  %control_data.i.i = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 8
  %31 = ptrtoint ptr %control_data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %control_data.i.i, align 4
  %call.i.i = tail call i32 %30(ptr noundef %32, i32 noundef %28, ptr noundef %cache, i32 noundef %20) #10
  br label %if.end23

if.end23:                                         ; preds = %if.else.i, %if.then.i, %if.then19.if.end23_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %if.then27

if.end25:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @up_write(ptr noundef %controls_rwsem) #10
  br label %cleanup

if.then27:                                        ; preds = %if.end23, %if.end13.if.then27_crit_edge
  call void @snd_ctl_notify(ptr noundef %5, i32 noundef 2, ptr noundef nonnull %id) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end25, %if.then
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sigmadsp_reset(ptr noundef %sigmadsp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_list = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 1
  %0 = ptrtoint ptr %ctrl_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %ctrl.012 = load ptr, ptr %ctrl_list, align 4
  %cmp.not13 = icmp eq ptr %ctrl.012, %ctrl_list
  br i1 %cmp.not13, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %ctrl.014 = phi ptr [ %ctrl.0, %for.body.for.body_crit_edge ], [ %ctrl.012, %entry.for.body_crit_edge ]
  tail call fastcc void @sigmadsp_activate_ctrl(ptr noundef %sigmadsp, ptr noundef %ctrl.014, i32 noundef 0)
  %1 = ptrtoint ptr %ctrl.014 to i32
  call void @__asan_load4_noabort(i32 %1)
  %ctrl.0 = load ptr, ptr %ctrl.014, align 4
  %cmp.not = icmp eq ptr %ctrl.0, %ctrl_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %current_samplerate = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 4
  %2 = ptrtoint ptr %current_samplerate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %current_samplerate, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sigmadsp_restrict_params(ptr noundef %sigmadsp, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rate_constraints = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 3
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime, align 4
  %call = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef %rate_constraints) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sigmadsp_firmware_load(ptr noundef %sigmadsp, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #10
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !73
  %dev = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 6
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %name, ptr noundef %2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sigmadsp_firmware_load.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sigmadsp_firmware_load, %if.then5)) #10
          to label %done [label %if.then5], !srcloc !74

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sigmadsp_firmware_load.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef %call) #10
  br label %done

if.end6:                                          ; preds = %entry
  %3 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %7 = add i32 %6, -67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 -67108852, i32 %7)
  %8 = icmp ult i32 %7, -67108852
  br i1 %8, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.6) #13
  br label %done

if.end14:                                         ; preds = %if.end6
  %data = getelementptr inbounds %struct.firmware, ptr %4, i32 0, i32 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(7) %12, ptr noundef nonnull dereferenceable(7) @.str.9, i32 7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool16.not = icmp eq i32 %bcmp, 0
  br i1 %tobool16.not, label %if.end22, label %do.end20

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.11) #13
  br label %done

if.end22:                                         ; preds = %if.end14
  %add.ptr = getelementptr i8, ptr %12, i32 12
  %sub = add nsw i32 %6, -12
  %call25 = call i32 @crc32_le(i32 noundef 0, ptr noundef %add.ptr, i32 noundef %sub) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sigmadsp_firmware_load.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sigmadsp_firmware_load, %if.then38)) #10
          to label %do.end41 [label %if.then38], !srcloc !74

if.then38:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sigmadsp_firmware_load.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.3, i32 noundef %call25) #10
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %if.end22
  %crc42 = getelementptr inbounds %struct.sigma_firmware_header, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %crc42 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %crc42, align 1
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  call void @__sanitizer_cov_trace_cmp4(i32 %call25, i32 %17)
  %cmp43.not = icmp eq i32 %call25, %17
  br i1 %cmp43.not, label %if.end50, label %do.end47

do.end47:                                         ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.15, i32 noundef %17, i32 noundef %call25) #13
  br label %done

if.end50:                                         ; preds = %do.end41
  %version = getelementptr inbounds %struct.sigma_firmware_header, ptr %12, i32 0, i32 1
  %20 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %version, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i8 %21, label %do.end56 [
    i8 1, label %sw.bb
    i8 2, label %sw.bb52
  ]

sw.bb:                                            ; preds = %if.end50
  %23 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fw, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %24, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end.i.while.cond.i_crit_edge, %sw.bb
  %pos.0.i = phi i32 [ 12, %sw.bb ], [ %add2.pre-phi.i, %do.end.i.while.cond.i_crit_edge ]
  %add.i = add i32 %pos.0.i, 6
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %26)
  %cmp.not.i = icmp ugt i32 %add.i, %26
  br i1 %cmp.not.i, label %while.cond.i.while.end.i_crit_edge, label %while.body.i

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 %pos.0.i
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %30)
  %switch.i.i = icmp ult i8 %30, 3
  br i1 %switch.i.i, label %sw.bb.i.i, label %while.body.i.sigma_action_size.exit.i_crit_edge

while.body.i.sigma_action_size.exit.i_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sigma_action_size.exit.i

sw.bb.i.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %len_hi.i.i.i = getelementptr inbounds %struct.sigma_action, ptr %add.ptr.i, i32 0, i32 1
  %31 = ptrtoint ptr %len_hi.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %len_hi.i.i.i, align 1
  %conv.i.i.i = zext i8 %32 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 16
  %len.i.i.i = getelementptr inbounds %struct.sigma_action, ptr %add.ptr.i, i32 0, i32 2
  %33 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 2)
  %34 = load i16, ptr %len.i.i.i, align 1
  %35 = call i16 @llvm.bswap.i16(i16 %34) #10
  %conv1.i.i.i = zext i16 %35 to i32
  %or.i.i.i = or i32 %shl.i.i.i, 7
  %36 = add nuw nsw i32 %or.i.i.i, %conv1.i.i.i
  %phi.bo5.i.i = and i32 %36, 33554430
  %.pre.i = add i32 %phi.bo5.i.i, %pos.0.i
  br label %sigma_action_size.exit.i

sigma_action_size.exit.i:                         ; preds = %sw.bb.i.i, %while.body.i.sigma_action_size.exit.i_crit_edge
  %add2.pre-phi.i = phi i32 [ %add.i, %while.body.i.sigma_action_size.exit.i_crit_edge ], [ %.pre.i, %sw.bb.i.i ]
  %payload.0.i.i = phi i32 [ 6, %while.body.i.sigma_action_size.exit.i_crit_edge ], [ %phi.bo5.i.i, %sw.bb.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add2.pre-phi.i, i32 %26)
  %cmp4.i = icmp ugt i32 %add2.pre-phi.i, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %payload.0.i.i)
  %cmp5.i = icmp eq i32 %payload.0.i.i, 0
  %or.cond.i = or i1 %cmp4.i, %cmp5.i
  br i1 %or.cond.i, label %sigma_action_size.exit.i.while.end.i_crit_edge, label %if.end.i

sigma_action_size.exit.i.while.end.i_crit_edge:   ; preds = %sigma_action_size.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end.i:                                         ; preds = %sigma_action_size.exit.i
  %call6.i = call fastcc i32 @process_sigma_action(ptr noundef %sigmadsp, ptr noundef %add.ptr.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sigmadsp_fw_load_v1.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sigmadsp_firmware_load, %if.then10.i)) #10
          to label %do.end.i [label %if.then10.i], !srcloc !74

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sigmadsp_fw_load_v1.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef %call6.i) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then10.i, %if.end.i
  %cmp12.i = icmp slt i32 %call6.i, 1
  br i1 %cmp12.i, label %sw.epilog, label %do.end.i.while.cond.i_crit_edge

do.end.i.while.cond.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

while.end.i:                                      ; preds = %sigma_action_size.exit.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %pos.1.i = phi i32 [ %add2.pre-phi.i, %sigma_action_size.exit.i.while.end.i_crit_edge ], [ %pos.0.i, %while.cond.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.1.i, i32 %26)
  %cmp16.not.i = icmp eq i32 %pos.1.i, %26
  br i1 %cmp16.not.i, label %while.end.i.done_crit_edge, label %while.end.i.if.then61_crit_edge

while.end.i.if.then61_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61

while.end.i.done_crit_edge:                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

sw.bb52:                                          ; preds = %if.end50
  %37 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fw, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %40)
  %41 = icmp ugt i32 %40, 24
  br i1 %41, label %while.body.lr.ph.i, label %sw.bb52.done_crit_edge

sw.bb52.done_crit_edge:                           ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

while.body.lr.ph.i:                               ; preds = %sw.bb52
  %data.i84 = getelementptr inbounds %struct.firmware, ptr %38, i32 0, i32 1
  %rate_constraints.i.i = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 3
  %count.i.i = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 3, i32 1
  %ctrl_list.i.i = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 1
  %prev.i.i76.i = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 1, i32 1
  %data_list.i.i = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 2
  %prev.i.i.i = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 2, i32 1
  br label %while.body.i87

while.body.i87:                                   ; preds = %if.end16.i.while.body.i87_crit_edge, %while.body.lr.ph.i
  %42 = phi i32 [ %40, %while.body.lr.ph.i ], [ %113, %if.end16.i.while.body.i87_crit_edge ]
  %pos.092.i = phi i32 [ 12, %while.body.lr.ph.i ], [ %add17.i, %if.end16.i.while.body.i87_crit_edge ]
  %43 = ptrtoint ptr %data.i84 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i84, align 4
  %add.ptr.i85 = getelementptr i8, ptr %44, i32 %pos.092.i
  %45 = ptrtoint ptr %add.ptr.i85 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %add.ptr.i85, align 1
  %47 = call i32 @llvm.bswap.i32(i32 %46) #10
  %sub5.i = sub i32 %42, %pos.092.i
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %sub5.i)
  %cmp6.i = icmp ugt i32 %47, %sub5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %47)
  %cmp7.i = icmp ult i32 %47, 12
  %or.cond.i86 = or i1 %cmp6.i, %cmp7.i
  br i1 %or.cond.i86, label %while.body.i87.if.then61_crit_edge, label %if.end9.i

while.body.i87.if.then61_crit_edge:               ; preds = %while.body.i87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61

if.end9.i:                                        ; preds = %while.body.i87
  %tag.i = getelementptr inbounds %struct.sigma_fw_chunk, ptr %add.ptr.i85, i32 0, i32 1
  %48 = ptrtoint ptr %tag.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %tag.i, align 1
  %50 = call i32 @llvm.bswap.i32(i32 %49) #10
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %50, label %do.end.i88 [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb10.i
    i32 2, label %sw.bb12.i
  ]

sw.bb.i:                                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %47)
  %cmp.i.i = icmp ult i32 %47, 15
  br i1 %cmp.i.i, label %sw.bb.i.if.then61_crit_edge, label %if.end8.i.i.i.i

sw.bb.i.if.then61_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61

if.end8.i.i.i.i:                                  ; preds = %sw.bb.i
  %add.i.i = add i32 %47, 6
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 3520) #16
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end8.i.i.i.i.if.then61_crit_edge, label %if.end2.i.i

if.end8.i.i.i.i.if.then61_crit_edge:              ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61

if.end2.i.i:                                      ; preds = %if.end8.i.i.i.i
  %sub.i.i = add i32 %47, -14
  %addr.i.i = getelementptr inbounds %struct.sigma_fw_chunk_data, ptr %add.ptr.i85, i32 0, i32 1
  %52 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %addr.i.i, align 1
  %54 = call i16 @llvm.bswap.i16(i16 %53) #10
  %conv.i.i = zext i16 %54 to i32
  %addr3.i.i = getelementptr inbounds %struct.sigmadsp_data, ptr %call9.i.i.i.i, i32 0, i32 2
  %55 = ptrtoint ptr %addr3.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv.i.i, ptr %addr3.i.i, align 4
  %length4.i.i = getelementptr inbounds %struct.sigmadsp_data, ptr %call9.i.i.i.i, i32 0, i32 3
  %56 = ptrtoint ptr %length4.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub.i.i, ptr %length4.i.i, align 16
  %samplerates.i.i = getelementptr inbounds %struct.sigma_fw_chunk, ptr %add.ptr.i85, i32 0, i32 2
  %57 = ptrtoint ptr %samplerates.i.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %samplerates.i.i, align 1
  %59 = call i32 @llvm.bswap.i32(i32 %58) #10
  %samplerates5.i.i = getelementptr inbounds %struct.sigmadsp_data, ptr %call9.i.i.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %samplerates5.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %samplerates5.i.i, align 8
  %data6.i.i = getelementptr inbounds %struct.sigmadsp_data, ptr %call9.i.i.i.i, i32 0, i32 4
  %data7.i.i = getelementptr inbounds %struct.sigma_fw_chunk_data, ptr %add.ptr.i85, i32 0, i32 2
  %61 = call ptr @memcpy(ptr %data6.i.i, ptr %data7.i.i, i32 %sub.i.i)
  %62 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i.i, ptr noundef %63, ptr noundef %data_list.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i21.i.i, label %if.end2.i.i.if.end16.i_crit_edge

if.end2.i.i.if.end16.i_crit_edge:                 ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.end.i.i21.i.i:                                 ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call9.i.i.i.i, ptr %prev.i.i.i, align 4
  %65 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %data_list.i.i, ptr %call9.i.i.i.i, align 128
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev3.i.i.i.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %call9.i.i.i.i, ptr %63, align 4
  br label %if.end16.i

sw.bb10.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %47)
  %cmp.i41.i = icmp ult i32 %47, 19
  br i1 %cmp.i41.i, label %sw.bb10.i.if.then61_crit_edge, label %if.end.i43.i

sw.bb10.i.if.then61_crit_edge:                    ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61

if.end.i43.i:                                     ; preds = %sw.bb10.i
  %sub.i42.i = add i32 %47, -18
  %68 = call i32 @llvm.umin.i32(i32 %sub.i42.i, i32 43) #10
  %name4.i.i = getelementptr inbounds %struct.sigma_fw_chunk_control, ptr %add.ptr.i85, i32 0, i32 4
  %69 = ptrtoint ptr %name4.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %name4.i.i, align 1
  %71 = add i8 %70, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -95, i8 %71)
  %72 = icmp ult i8 %71, -95
  br i1 %72, label %if.end.i43.i.if.then61_crit_edge, label %if.end.i43.i.for.cond.i.i.i_crit_edge

if.end.i43.i.for.cond.i.i.i_crit_edge:            ; preds = %if.end.i43.i
  br label %for.cond.i.i.i

if.end.i43.i.if.then61_crit_edge:                 ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.end.i43.i.for.cond.i.i.i_crit_edge
  %i.012.i86.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ], [ 0, %if.end.i43.i.for.cond.i.i.i_crit_edge ]
  %inc.i.i.i = add nuw nsw i32 %i.012.i86.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %68)
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %68
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.if.end6.i.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.if.end6.i.i_crit_edge:             ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %arrayidx.i.i.i = getelementptr i8, ptr %name4.i.i, i32 %inc.i.i.i
  %73 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i.i.i, align 1
  %75 = add i8 %74, -127
  %76 = icmp ult i8 %75, -95
  br i1 %76, label %sigma_fw_validate_control_name.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i.i

sigma_fw_validate_control_name.exit.i.i:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %68)
  %cmp.i.le.i.i = icmp ult i32 %inc.i.i.i, %68
  br i1 %cmp.i.le.i.i, label %sigma_fw_validate_control_name.exit.i.i.if.then61_crit_edge, label %sigma_fw_validate_control_name.exit.i.i.if.end6.i.i_crit_edge

sigma_fw_validate_control_name.exit.i.i.if.end6.i.i_crit_edge: ; preds = %sigma_fw_validate_control_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i.i

sigma_fw_validate_control_name.exit.i.i.if.then61_crit_edge: ; preds = %sigma_fw_validate_control_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61

if.end6.i.i:                                      ; preds = %sigma_fw_validate_control_name.exit.i.i.if.end6.i.i_crit_edge, %for.cond.i.i.i.if.end6.i.i_crit_edge
  %num_bytes7.i.i = getelementptr inbounds %struct.sigma_fw_chunk_control, ptr %add.ptr.i85, i32 0, i32 3
  %77 = ptrtoint ptr %num_bytes7.i.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %78 = load i16, ptr %num_bytes7.i.i, align 1
  %79 = call i16 @llvm.bswap.i16(i16 %78) #10
  %conv.i44.i = zext i16 %79 to i32
  %add.i45.i = add nuw nsw i32 %conv.i44.i, 32
  %call9.i.i.i69.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i45.i, i32 noundef 3520) #16
  %tobool.not.i72.i = icmp eq ptr %call9.i.i.i69.i, null
  br i1 %tobool.not.i72.i, label %if.end6.i.i.if.then61_crit_edge, label %if.end8.i.i81.i.i

if.end6.i.i.if.then61_crit_edge:                  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61

if.end8.i.i81.i.i:                                ; preds = %if.end6.i.i
  %add11.i.i = add nuw nsw i32 %68, 1
  %call9.i.i80.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add11.i.i, i32 noundef 3520) #16
  %tobool13.not.i.i = icmp eq ptr %call9.i.i80.i.i, null
  br i1 %tobool13.not.i.i, label %if.then14.i.i, label %if.end15.i.i

if.then14.i.i:                                    ; preds = %if.end8.i.i81.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call9.i.i.i69.i) #10
  br label %if.then61

if.end15.i.i:                                     ; preds = %if.end8.i.i81.i.i
  %80 = call ptr @memcpy(ptr %call9.i.i80.i.i, ptr %name4.i.i, i32 %68)
  %arrayidx.i.i = getelementptr i8, ptr %call9.i.i80.i.i, i32 %68
  %81 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %arrayidx.i.i, align 1
  %name18.i.i = getelementptr inbounds %struct.sigmadsp_control, ptr %call9.i.i.i69.i, i32 0, i32 4
  %82 = ptrtoint ptr %name18.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call9.i.i80.i.i, ptr %name18.i.i, align 4
  %call22.i.i = call i32 @strncmp(ptr noundef nonnull %call9.i.i80.i.i, ptr noundef nonnull dereferenceable(9) @.str.27, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %cmp23.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %cmp23.i.i, label %if.then25.i.i, label %if.end15.i.i.if.end26.i.i_crit_edge

if.end15.i.i.if.end26.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i.i

if.then25.i.i:                                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %is_readback.i.i = getelementptr inbounds %struct.sigmadsp_control, ptr %call9.i.i.i69.i, i32 0, i32 6
  %83 = ptrtoint ptr %is_readback.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %is_readback.i.i, align 4
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.then25.i.i, %if.end15.i.i.if.end26.i.i_crit_edge
  %addr.i74.i = getelementptr inbounds %struct.sigma_fw_chunk_control, ptr %add.ptr.i85, i32 0, i32 2
  %84 = ptrtoint ptr %addr.i74.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %85 = load i16, ptr %addr.i74.i, align 1
  %86 = call i16 @llvm.bswap.i16(i16 %85) #10
  %conv27.i.i = zext i16 %86 to i32
  %addr28.i.i = getelementptr inbounds %struct.sigmadsp_control, ptr %call9.i.i.i69.i, i32 0, i32 2
  %87 = ptrtoint ptr %addr28.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv27.i.i, ptr %addr28.i.i, align 4
  %num_bytes29.i.i = getelementptr inbounds %struct.sigmadsp_control, ptr %call9.i.i.i69.i, i32 0, i32 3
  %88 = ptrtoint ptr %num_bytes29.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv.i44.i, ptr %num_bytes29.i.i, align 16
  %samplerates.i75.i = getelementptr inbounds %struct.sigma_fw_chunk, ptr %add.ptr.i85, i32 0, i32 2
  %89 = ptrtoint ptr %samplerates.i75.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %samplerates.i75.i, align 1
  %91 = call i32 @llvm.bswap.i32(i32 %90) #10
  %samplerates30.i.i = getelementptr inbounds %struct.sigmadsp_control, ptr %call9.i.i.i69.i, i32 0, i32 1
  %92 = ptrtoint ptr %samplerates30.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %samplerates30.i.i, align 8
  %93 = ptrtoint ptr %prev.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev.i.i76.i, align 4
  %call.i.i.i77.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i.i69.i, ptr noundef %94, ptr noundef %ctrl_list.i.i) #10
  br i1 %call.i.i.i77.i, label %if.end.i.i84.i.i, label %if.end26.i.i.if.end16.i_crit_edge

if.end26.i.i.if.end16.i_crit_edge:                ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.end.i.i84.i.i:                                 ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %prev.i.i76.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call9.i.i.i69.i, ptr %prev.i.i76.i, align 4
  %96 = ptrtoint ptr %call9.i.i.i69.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %ctrl_list.i.i, ptr %call9.i.i.i69.i, align 128
  %prev3.i.i.i78.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i.i69.i, i32 0, i32 1
  %97 = ptrtoint ptr %prev3.i.i.i78.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %prev3.i.i.i78.i, align 4
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %call9.i.i.i69.i, ptr %94, align 4
  br label %if.end16.i

sw.bb12.i:                                        ; preds = %if.end9.i
  %sub.i80.i = add i32 %47, -12
  %div26.i.i = lshr i32 %sub.i80.i, 2
  %99 = add i32 %47, -144
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128, i32 %99)
  %100 = icmp ult i32 %99, -128
  br i1 %100, label %sw.bb12.i.if.then61_crit_edge, label %if.end.i82.i

sw.bb12.i.if.then61_crit_edge:                    ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61

if.end.i82.i:                                     ; preds = %sw.bb12.i
  %101 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.not.i81.i = icmp eq i32 %102, 0
  br i1 %tobool.not.i81.i, label %if.end7.i.i.i.i, label %if.end.i82.i.if.then61_crit_edge

if.end.i82.i.if.then61_crit_edge:                 ; preds = %if.end.i82.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61

if.end7.i.i.i.i:                                  ; preds = %if.end.i82.i
  %103 = and i32 %sub.i80.i, -4
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %103, i32 noundef 3520) #16
  %tobool4.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool4.not.i.i, label %if.end7.i.i.i.i.if.then61_crit_edge, label %for.cond.preheader.i.i

if.end7.i.i.i.i.if.then61_crit_edge:              ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61

for.cond.preheader.i.i:                           ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i80.i)
  %cmp729.not.i.i = icmp ult i32 %sub.i80.i, 4
  br i1 %cmp729.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.body.preheader.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.preheader.i.i:                           ; preds = %for.cond.preheader.i.i
  %umax.i.i = call i32 @llvm.umax.i32(i32 %div26.i.i, i32 1) #10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.030.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %arrayidx.i86.i = getelementptr %struct.sigma_fw_chunk_samplerate, ptr %add.ptr.i85, i32 0, i32 1, i32 %i.030.i.i
  %104 = ptrtoint ptr %arrayidx.i86.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 4)
  %105 = load i32, ptr %arrayidx.i86.i, align 1
  %106 = call i32 @llvm.bswap.i32(i32 %105) #10
  %arrayidx8.i.i = getelementptr i32, ptr %call8.i.i.i.i, i32 %i.030.i.i
  %107 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %arrayidx8.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.030.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %108 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %div26.i.i, ptr %count.i.i, align 4
  %109 = ptrtoint ptr %rate_constraints.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call8.i.i.i.i, ptr %rate_constraints.i.i, align 4
  br label %if.end16.i

do.end.i88:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %110 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %111, ptr noundef nonnull @.str.24, i32 noundef %49) #13
  br label %if.end16.i

if.end16.i:                                       ; preds = %do.end.i88, %for.end.i.i, %if.end.i.i84.i.i, %if.end26.i.i.if.end16.i_crit_edge, %if.end.i.i21.i.i, %if.end2.i.i.if.end16.i_crit_edge
  %add.i89 = add i32 %47, 3
  %and.i = and i32 %add.i89, -4
  %add17.i = add i32 %and.i, %pos.092.i
  %112 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %38, align 4
  %sub.i = add i32 %113, -12
  %cmp2.i = icmp ult i32 %add17.i, %sub.i
  br i1 %cmp2.i, label %if.end16.i.while.body.i87_crit_edge, label %if.end16.i.done_crit_edge

if.end16.i.done_crit_edge:                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end16.i.while.body.i87_crit_edge:              ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i87

do.end56:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %21 to i32
  %114 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.18, i32 noundef %conv) #13
  br label %if.then61

sw.epilog:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool60.not = icmp eq i32 %call6.i, 0
  br i1 %tobool60.not, label %sw.epilog.done_crit_edge, label %sw.epilog.if.then61_crit_edge

sw.epilog.if.then61_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61

sw.epilog.done_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.then61:                                        ; preds = %sw.epilog.if.then61_crit_edge, %do.end56, %if.end7.i.i.i.i.if.then61_crit_edge, %if.end.i82.i.if.then61_crit_edge, %sw.bb12.i.if.then61_crit_edge, %if.then14.i.i, %if.end6.i.i.if.then61_crit_edge, %sigma_fw_validate_control_name.exit.i.i.if.then61_crit_edge, %if.end.i43.i.if.then61_crit_edge, %sw.bb10.i.if.then61_crit_edge, %if.end8.i.i.i.i.if.then61_crit_edge, %sw.bb.i.if.then61_crit_edge, %while.body.i87.if.then61_crit_edge, %while.end.i.if.then61_crit_edge
  %ret.096 = phi i32 [ %call6.i, %sw.epilog.if.then61_crit_edge ], [ -12, %if.then14.i.i ], [ -22, %while.end.i.if.then61_crit_edge ], [ -22, %do.end56 ], [ -22, %while.body.i87.if.then61_crit_edge ], [ -22, %sw.bb.i.if.then61_crit_edge ], [ -12, %if.end8.i.i.i.i.if.then61_crit_edge ], [ -22, %sw.bb10.i.if.then61_crit_edge ], [ -22, %sigma_fw_validate_control_name.exit.i.i.if.then61_crit_edge ], [ -12, %if.end6.i.i.if.then61_crit_edge ], [ -22, %if.end.i43.i.if.then61_crit_edge ], [ -22, %sw.bb12.i.if.then61_crit_edge ], [ -22, %if.end.i82.i.if.then61_crit_edge ], [ -12, %if.end7.i.i.i.i.if.then61_crit_edge ]
  %ctrl_list.i = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 1
  %116 = ptrtoint ptr %ctrl_list.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ctrl_list.i, align 4
  %cmp.not49.i = icmp eq ptr %117, %ctrl_list.i
  br i1 %cmp.not49.i, label %if.then61.for.end.i_crit_edge, label %if.then61.for.body.i_crit_edge

if.then61.for.body.i_crit_edge:                   ; preds = %if.then61
  br label %for.body.i

if.then61.for.end.i_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then61.for.body.i_crit_edge
  %ctrl.050.i = phi ptr [ %_ctrl.0.i, %for.body.i.for.body.i_crit_edge ], [ %117, %if.then61.for.body.i_crit_edge ]
  %118 = ptrtoint ptr %ctrl.050.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %_ctrl.0.i = load ptr, ptr %ctrl.050.i, align 4
  %name.i = getelementptr inbounds %struct.sigmadsp_control, ptr %ctrl.050.i, i32 0, i32 4
  %119 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %name.i, align 4
  call void @kfree(ptr noundef %120) #10
  call void @kfree(ptr noundef %ctrl.050.i) #10
  %cmp.not.i91 = icmp eq ptr %_ctrl.0.i, %ctrl_list.i
  br i1 %cmp.not.i91, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then61.for.end.i_crit_edge
  %data_list.i = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 2
  %121 = ptrtoint ptr %data_list.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %data_list.i, align 4
  %cmp24.not51.i = icmp eq ptr %122, %data_list.i
  br i1 %cmp24.not51.i, label %for.end.i.sigmadsp_firmware_release.exit_crit_edge, label %for.end.i.for.body26.i_crit_edge

for.end.i.for.body26.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body26.i

for.end.i.sigmadsp_firmware_release.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sigmadsp_firmware_release.exit

for.body26.i:                                     ; preds = %for.body26.i.for.body26.i_crit_edge, %for.end.i.for.body26.i_crit_edge
  %data.052.i = phi ptr [ %_data.0.i, %for.body26.i.for.body26.i_crit_edge ], [ %122, %for.end.i.for.body26.i_crit_edge ]
  %123 = ptrtoint ptr %data.052.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %_data.0.i = load ptr, ptr %data.052.i, align 4
  call void @kfree(ptr noundef %data.052.i) #10
  %cmp24.not.i = icmp eq ptr %_data.0.i, %data_list.i
  br i1 %cmp24.not.i, label %for.body26.i.sigmadsp_firmware_release.exit_crit_edge, label %for.body26.i.for.body26.i_crit_edge

for.body26.i.for.body26.i_crit_edge:              ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body26.i

for.body26.i.sigmadsp_firmware_release.exit_crit_edge: ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sigmadsp_firmware_release.exit

sigmadsp_firmware_release.exit:                   ; preds = %for.body26.i.sigmadsp_firmware_release.exit_crit_edge, %for.end.i.sigmadsp_firmware_release.exit_crit_edge
  %124 = ptrtoint ptr %ctrl_list.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %ctrl_list.i, ptr %ctrl_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 1, i32 1
  %125 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %ctrl_list.i, ptr %prev.i.i, align 4
  %126 = ptrtoint ptr %data_list.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %data_list.i, ptr %data_list.i, align 4
  %prev.i48.i = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 2, i32 1
  %127 = ptrtoint ptr %prev.i48.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %data_list.i, ptr %prev.i48.i, align 4
  br label %done

done:                                             ; preds = %sigmadsp_firmware_release.exit, %sw.epilog.done_crit_edge, %if.end16.i.done_crit_edge, %sw.bb52.done_crit_edge, %while.end.i.done_crit_edge, %do.end47, %do.end20, %do.end12, %if.then5, %do.body
  %ret.1 = phi i32 [ %call, %if.then5 ], [ -22, %do.end12 ], [ -22, %do.end20 ], [ -22, %do.end47 ], [ %ret.096, %sigmadsp_firmware_release.exit ], [ 0, %sw.epilog.done_crit_edge ], [ %call, %do.body ], [ 0, %sw.bb52.done_crit_edge ], [ 0, %while.end.i.done_crit_edge ], [ 0, %if.end16.i.done_crit_edge ]
  %128 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %129) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #10
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @process_sigma_action(ptr noundef %sigmadsp, ptr nocapture noundef readonly %sa) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %len_hi.i = getelementptr inbounds %struct.sigma_action, ptr %sa, i32 0, i32 1
  %0 = ptrtoint ptr %len_hi.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %len_hi.i, align 1
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %len.i = getelementptr inbounds %struct.sigma_action, ptr %sa, i32 0, i32 2
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %len.i, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #10
  %conv1.i = zext i16 %4 to i32
  %or.i = or i32 %shl.i, %conv1.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_sigma_action.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_sigma_action, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !74

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %sa to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sa, align 1
  %conv = zext i8 %6 to i32
  %addr = getelementptr inbounds %struct.sigma_action, ptr %sa, i32 0, i32 3
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %addr, align 1
  %conv4 = zext i16 %8 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @process_sigma_action.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef %conv, i32 noundef %conv4, i32 noundef %or.i) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %9 = ptrtoint ptr %sa to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sa, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %10, label %sw.default [
    i8 0, label %do.end.sw.bb_crit_edge
    i8 1, label %do.end.sw.bb_crit_edge38
    i8 2, label %do.end.sw.bb_crit_edge39
    i8 3, label %do.end.cleanup_crit_edge
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end.sw.bb_crit_edge39:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge38:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge38, %do.end.sw.bb_crit_edge39
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %or.i)
  %cmp = icmp ult i32 %or.i, 3
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end8.i.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i.i:                                      ; preds = %sw.bb
  %sub = add nuw nsw i32 %or.i, 18
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sub, i32 noundef 3520) #16
  %tobool11.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool11.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end13

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end8.i.i
  %addr14 = getelementptr inbounds %struct.sigma_action, ptr %sa, i32 0, i32 3
  %12 = ptrtoint ptr %addr14 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %addr14, align 1
  %conv15 = zext i16 %13 to i32
  %addr16 = getelementptr inbounds %struct.sigmadsp_data, ptr %call9.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %addr16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv15, ptr %addr16, align 4
  %sub17 = add nsw i32 %or.i, -2
  %length = getelementptr inbounds %struct.sigmadsp_data, ptr %call9.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub17, ptr %length, align 16
  %data18 = getelementptr inbounds %struct.sigmadsp_data, ptr %call9.i.i, i32 0, i32 4
  %payload = getelementptr inbounds %struct.sigma_action, ptr %sa, i32 0, i32 4
  %16 = call ptr @memcpy(ptr %data18, ptr %payload, i32 %sub17)
  %data_list = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i, ptr noundef %18, ptr noundef %data_list) #10
  br i1 %call.i.i, label %if.end.i.i36, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i36:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9.i.i, ptr %prev.i, align 4
  %20 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %data_list, ptr %call9.i.i, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %call9.i.i, ptr %18, align 4
  br label %cleanup

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end.i.i36, %if.end13.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ -22, %sw.bb.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 1, %if.end13.cleanup_crit_edge ], [ 1, %if.end.i.i36 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sigmadsp_ctrl_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %info) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %type, align 8
  %num_bytes = getelementptr inbounds %struct.sigmadsp_control, ptr %2, i32 0, i32 3
  %4 = ptrtoint ptr %num_bytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_bytes, align 4
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 3
  %6 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %count, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sigmadsp_ctrl_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.sigmadsp, ptr %4, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %cached = getelementptr inbounds %struct.sigmadsp_control, ptr %2, i32 0, i32 7
  %5 = ptrtoint ptr %cached to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cached, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.if.then1_crit_edge

entry.if.then1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then1

if.end:                                           ; preds = %entry
  %addr = getelementptr inbounds %struct.sigmadsp_control, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr, align 4
  %cache = getelementptr inbounds %struct.sigmadsp_control, ptr %2, i32 0, i32 8
  %num_bytes = getelementptr inbounds %struct.sigmadsp_control, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %num_bytes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_bytes, align 4
  %read.i = getelementptr inbounds %struct.sigmadsp, ptr %4, i32 0, i32 10
  %11 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read.i, align 4
  %control_data.i = getelementptr inbounds %struct.sigmadsp, ptr %4, i32 0, i32 8
  %13 = ptrtoint ptr %control_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %control_data.i, align 4
  %call.i = tail call i32 %12(ptr noundef %14, i32 noundef %8, ptr noundef %cache, i32 noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %if.end.if.then1_crit_edge, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end.if.then1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then1

if.then1:                                         ; preds = %if.end.if.then1_crit_edge, %entry.if.then1_crit_edge
  %is_readback = getelementptr inbounds %struct.sigmadsp_control, ptr %2, i32 0, i32 6
  %15 = ptrtoint ptr %is_readback to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_readback, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool2.not = icmp eq i8 %16, 0
  br i1 %tobool2.not, label %if.then3, label %if.then1.if.end5_crit_edge

if.then1.if.end5_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %cached to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %cached, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then1.if.end5_crit_edge
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %cache7 = getelementptr inbounds %struct.sigmadsp_control, ptr %2, i32 0, i32 8
  %num_bytes9 = getelementptr inbounds %struct.sigmadsp_control, ptr %2, i32 0, i32 3
  %18 = ptrtoint ptr %num_bytes9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_bytes9, align 4
  %20 = call ptr @memcpy(ptr %value, ptr %cache7, i32 %19)
  br label %if.end10

if.end10:                                         ; preds = %if.end5, %if.end.if.end10_crit_edge
  %ret.025 = phi i32 [ 0, %if.end5 ], [ %call.i, %if.end.if.end10_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %ret.025
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sigmadsp_ctrl_put(ptr nocapture noundef readonly %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.sigmadsp, ptr %4, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %access = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %access, align 4
  %and = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.then1_crit_edge

entry.if.then1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then1

if.then:                                          ; preds = %entry
  %num_bytes.i = getelementptr inbounds %struct.sigmadsp_control, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %num_bytes.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %8)
  %cmp.i = icmp ult i32 %8, 21
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.if.else.i_crit_edge

if.then.if.else.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true1.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true1.i:                                 ; preds = %land.lhs.true.i
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool3.not.i = icmp eq ptr %12, null
  br i1 %tobool3.not.i, label %land.lhs.true1.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true1.i.if.else.i_crit_edge:             ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true1.i
  call void @__sanitizer_cov_trace_pc() #12
  %addr.i = getelementptr inbounds %struct.sigmadsp_control, ptr %2, i32 0, i32 2
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr.i, align 4
  %call.i = tail call i32 %12(ptr noundef %4, i32 noundef %14, ptr noundef %value, i32 noundef %8) #10
  br label %if.end

if.else.i:                                        ; preds = %land.lhs.true1.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.then.if.else.i_crit_edge
  %addr7.i = getelementptr inbounds %struct.sigmadsp_control, ptr %2, i32 0, i32 2
  %15 = ptrtoint ptr %addr7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr7.i, align 4
  %write.i.i = getelementptr inbounds %struct.sigmadsp, ptr %4, i32 0, i32 9
  %17 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i.i, align 4
  %control_data.i.i = getelementptr inbounds %struct.sigmadsp, ptr %4, i32 0, i32 8
  %19 = ptrtoint ptr %control_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %control_data.i.i, align 4
  %call.i.i = tail call i32 %18(ptr noundef %20, i32 noundef %16, ptr noundef %value, i32 noundef %8) #10
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then.i
  %ret.0 = phi i32 [ %call.i, %if.then.i ], [ %call.i.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp eq i32 %ret.0, 0
  br i1 %cmp, label %if.end.if.then1_crit_edge, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.end.if.then1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then1

if.then1:                                         ; preds = %if.end.if.then1_crit_edge, %entry.if.then1_crit_edge
  %cache = getelementptr inbounds %struct.sigmadsp_control, ptr %2, i32 0, i32 8
  %num_bytes = getelementptr inbounds %struct.sigmadsp_control, ptr %2, i32 0, i32 3
  %21 = ptrtoint ptr %num_bytes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_bytes, align 4
  %23 = call ptr @memcpy(ptr %cache, ptr %value, i32 %22)
  %is_readback = getelementptr inbounds %struct.sigmadsp_control, ptr %2, i32 0, i32 6
  %24 = ptrtoint ptr %is_readback to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %is_readback, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool3.not = icmp eq i8 %25, 0
  br i1 %tobool3.not, label %if.then4, label %if.then1.if.end6_crit_edge

if.then1.if.end6_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  %cached = getelementptr inbounds %struct.sigmadsp_control, ptr %2, i32 0, i32 7
  %26 = ptrtoint ptr %cached to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %cached, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.then1.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %ret.020 = phi i32 [ 0, %if.then1.if.end6_crit_edge ], [ 0, %if.then4 ], [ %ret.0, %if.end.if.end6_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %ret.020
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sigmadsp_control_free(ptr nocapture noundef readonly %kcontrol) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %kcontrol1 = getelementptr inbounds %struct.sigmadsp_control, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %kcontrol1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %kcontrol1, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind readonly willreturn }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !29, !30, !32, !34, !35, !36, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/sigmadsp.c", i32 585, i32 13}
!2 = !{ptr @__ksymtab_devm_sigmadsp_init, !3, !"__ksymtab_devm_sigmadsp_init", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/sigmadsp.c", i32 600, i32 1}
!4 = !{ptr @__ksymtab_sigmadsp_attach, !5, !"__ksymtab_sigmadsp_attach", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/sigmadsp.c", i32 737, i32 1}
!6 = !{ptr @__ksymtab_sigmadsp_setup, !7, !"__ksymtab_sigmadsp_setup", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/sigmadsp.c", i32 785, i32 1}
!8 = !{ptr @__ksymtab_sigmadsp_reset, !9, !"__ksymtab_sigmadsp_reset", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/sigmadsp.c", i32 803, i32 1}
!10 = !{ptr @__ksymtab_sigmadsp_restrict_params, !11, !"__ksymtab_sigmadsp_restrict_params", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/sigmadsp.c", i32 824, i32 1}
!12 = !{ptr @__UNIQUE_ID_file298, !13, !"__UNIQUE_ID_file298", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/sigmadsp.c", i32 826, i32 1}
!14 = !{ptr @__UNIQUE_ID_license299, !13, !"__UNIQUE_ID_license299", i1 false, i1 false}
!15 = !{ptr @sigmadsp_init.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../sound/soc/codecs/sigmadsp.c", i32 564, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/sigmadsp.c", i32 499, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sigmadsp_firmware_load.__UNIQUE_ID_ddebug296, !19, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/sigmadsp.c", i32 513, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @sigmadsp_firmware_load._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @sigmadsp_firmware_load._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/sigmadsp.c", i32 518, i32 31}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/sigmadsp.c", i32 519, i32 3}
!34 = !{ptr @sigmadsp_firmware_load._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @sigmadsp_firmware_load._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/sigmadsp.c", i32 525, i32 2}
!38 = !{ptr @sigmadsp_firmware_load.__UNIQUE_ID_ddebug297, !37, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/sigmadsp.c", i32 527, i32 3}
!41 = !{ptr @sigmadsp_firmware_load._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sigmadsp_firmware_load._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/sigmadsp.c", i32 540, i32 3}
!45 = !{ptr @sigmadsp_firmware_load._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @sigmadsp_firmware_load._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/sigmadsp.c", i32 455, i32 3}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @sigmadsp_fw_load_v1.__UNIQUE_ID_ddebug295, !48, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/sigmadsp.c", i32 408, i32 2}
!53 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @process_sigma_action.__UNIQUE_ID_ddebug294, !52, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/sigmadsp.c", i32 355, i32 4}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @sigmadsp_fw_load_v2._entry, !56, !"_entry", i1 false, i1 false}
!60 = !{ptr @sigmadsp_fw_load_v2._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/sigmadsp.c", i32 244, i32 40}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i8 0, i8 2}
!73 = !{!"auto-init"}
!74 = !{i64 2148205023, i64 2148205028, i64 2148205041, i64 2148205085, i64 2148205119, i64 2148205140}
