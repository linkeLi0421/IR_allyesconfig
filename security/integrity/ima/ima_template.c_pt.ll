; ModuleID = '/llk/IR_all_yes/security/integrity/ima/ima_template.c_pt.bc'
source_filename = "../security/integrity/ima/ima_template.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ima_template_desc = type { %struct.list_head, ptr, ptr, i32, ptr }
%struct.ima_field_data = type { ptr, i32 }
%struct.ima_template_field = type { [16 x i8], ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ima_kexec_hdr = type { i16, i16, i32, i64, i64 }
%struct.tpm_chip = type { %struct.device, %struct.device, %struct.cdev, %struct.cdev, %struct.rw_semaphore, ptr, %struct.tpm_bios_log, %struct.tpm_chip_seqops, %struct.tpm_chip_seqops, i32, i32, i32, [64 x i8], %struct.hwrng, %struct.mutex, i32, i32, i32, i32, i8, [4 x i32], i8, [3 x ptr], [8 x ptr], i32, i32, ptr, %struct.tpm_space, i32, i32, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tpm_bios_log = type { ptr, ptr }
%struct.tpm_chip_seqops = type { ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tpm_space = type { [3 x i32], ptr, [3 x i32], ptr, i32 }
%struct.ima_template_entry = type { i32, ptr, ptr, i32, [0 x %struct.ima_field_data] }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"modsig\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"d-modsig\00", [23 x i8] zeroinitializer }, align 32
@__setup_str_ima_template_setup = internal constant [14 x i8] c"ima_template=\00", section ".init.rodata", align 1
@__setup_ima_template_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_ima_template_setup, ptr @ima_template_setup, i32 0 }, section ".init.setup", align 4
@__setup_str_ima_template_fmt_setup = internal constant [18 x i8] c"ima_template_fmt=\00", section ".init.rodata", align 1
@__setup_ima_template_fmt_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_ima_template_fmt_setup, ptr @ima_template_fmt_setup, i32 0 }, section ".init.setup", align 4
@lookup_template_desc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"security/integrity/ima/ima_template.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@defined_templates = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @defined_templates, ptr @defined_templates }, [24 x i8] zeroinitializer }, align 32
@template_desc_init_fields._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013ima: format string '%s' contains too many fields\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"template_desc_init_fields\00", [38 x i8] zeroinitializer }, align 32
@template_desc_init_fields._entry_ptr = internal global ptr @template_desc_init_fields._entry, section ".printk_index", align 4
@template_desc_init_fields._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013ima: Invalid field with length %d\0A\00", [59 x i8] zeroinitializer }, align 32
@template_desc_init_fields._entry_ptr.8 = internal global ptr @template_desc_init_fields._entry.6, section ".printk_index", align 4
@template_desc_init_fields._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013ima: field '%s' not found\0A\00", [35 x i8] zeroinitializer }, align 32
@template_desc_init_fields._entry_ptr.11 = internal global ptr @template_desc_init_fields._entry.9, section ".printk_index", align 4
@template_list = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.50, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@builtin_templates = internal global { [7 x %struct.ima_template_desc], [56 x i8] } { [7 x %struct.ima_template_desc] [%struct.ima_template_desc { %struct.list_head zeroinitializer, ptr @.str.30, ptr @.str.51, i32 0, ptr null }, %struct.ima_template_desc { %struct.list_head zeroinitializer, ptr @.str.12, ptr @.str.52, i32 0, ptr null }, %struct.ima_template_desc { %struct.list_head zeroinitializer, ptr @.str.53, ptr @.str.54, i32 0, ptr null }, %struct.ima_template_desc { %struct.list_head zeroinitializer, ptr @.str.13, ptr @.str.55, i32 0, ptr null }, %struct.ima_template_desc { %struct.list_head zeroinitializer, ptr @.str.56, ptr @.str.57, i32 0, ptr null }, %struct.ima_template_desc { %struct.list_head zeroinitializer, ptr @.str.58, ptr @.str.59, i32 0, ptr null }, %struct.ima_template_desc { %struct.list_head zeroinitializer, ptr @.str.60, ptr @.str.60, i32 0, ptr null }], [56 x i8] zeroinitializer }, align 32
@ima_template = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ima-ng\00", [25 x i8] zeroinitializer }, align 32
@ima_buf_template = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ima-buf\00", [24 x i8] zeroinitializer }, align 32
@ima_init_template._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ima: template %s init failed, result: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ima_init_template\00", [46 x i8] zeroinitializer }, align 32
@ima_init_template._entry_ptr = internal global ptr @ima_init_template._entry, section ".printk_index", align 4
@ima_init_template._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013ima: Failed to get ima-buf template\0A\00", [57 x i8] zeroinitializer }, align 32
@ima_init_template._entry_ptr.18 = internal global ptr @ima_init_template._entry.16, section ".printk_index", align 4
@ima_init_template._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ima_init_template._entry_ptr.20 = internal global ptr @ima_init_template._entry.19, section ".printk_index", align 4
@__const.ima_restore_measurement_list.hdr = private unnamed_addr constant [4 x %struct.ima_field_data] [%struct.ima_field_data { ptr null, i32 4 }, %struct.ima_field_data { ptr null, i32 20 }, %struct.ima_field_data zeroinitializer, %struct.ima_field_data zeroinitializer], align 4
@ima_canonical_fmt = external dso_local local_unnamed_addr global i8, align 1
@ima_restore_measurement_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013ima: attempting to restore a incompatible measurement list\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ima_restore_measurement_list\00", [35 x i8] zeroinitializer }, align 32
@ima_restore_measurement_list._entry_ptr = internal global ptr @ima_restore_measurement_list._entry, section ".printk_index", align 4
@ima_restore_measurement_list._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013ima: attempting to restore too many measurements\00", [45 x i8] zeroinitializer }, align 32
@ima_restore_measurement_list._entry_ptr.25 = internal global ptr @ima_restore_measurement_list._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"entry header\00", [19 x i8] zeroinitializer }, align 32
@ima_restore_measurement_list._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.22, ptr @.str.2, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013ima: attempting to restore a template name that is too long\0A\00", [33 x i8] zeroinitializer }, align 32
@ima_restore_measurement_list._entry_ptr.29 = internal global ptr @ima_restore_measurement_list._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ima\00", [28 x i8] zeroinitializer }, align 32
@ima_restore_measurement_list._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.22, ptr @.str.2, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013ima: attempting to restore an unsupported template \22%s\22 failed\0A\00", [62 x i8] zeroinitializer }, align 32
@ima_restore_measurement_list._entry_ptr.33 = internal global ptr @ima_restore_measurement_list._entry.31, section ".printk_index", align 4
@ima_restore_measurement_list._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.22, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013ima: attempting to restore the template fmt \22%s\22 failed\0A\00", [37 x i8] zeroinitializer }, align 32
@ima_restore_measurement_list._entry_ptr.36 = internal global ptr @ima_restore_measurement_list._entry.34, section ".printk_index", align 4
@ima_restore_measurement_list._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.22, ptr @.str.2, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013ima: cannot calculate template digest\0A\00", [55 x i8] zeroinitializer }, align 32
@ima_restore_measurement_list._entry_ptr.39 = internal global ptr @ima_restore_measurement_list._entry.37, section ".printk_index", align 4
@template_setup_done = internal global { i1, [31 x i8] } zeroinitializer, align 32
@ima_template_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013ima: template %s not found, using %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ima_template_setup\00", [45 x i8] zeroinitializer }, align 32
@ima_template_setup._entry_ptr = internal global ptr @ima_template_setup._entry, section ".printk_index", align 4
@ima_hash_algo = external dso_local local_unnamed_addr global i32, section ".data..ro_after_init", align 4
@ima_template_setup._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013ima: template does not support hash alg\0A\00", [53 x i8] zeroinitializer }, align 32
@ima_template_setup._entry_ptr.44 = internal global ptr @ima_template_setup._entry.42, section ".printk_index", align 4
@ima_template_fmt_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013ima: format string '%s' not valid, using template %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ima_template_fmt_setup\00", [41 x i8] zeroinitializer }, align 32
@ima_template_fmt_setup._entry_ptr = internal global ptr @ima_template_fmt_setup._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@supported_fields = internal constant { [15 x %struct.ima_template_field], [88 x i8] } { [15 x %struct.ima_template_field] [%struct.ima_template_field { [16 x i8] c"d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ima_eventdigest_init, ptr @ima_show_template_digest }, %struct.ima_template_field { [16 x i8] c"n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ima_eventname_init, ptr @ima_show_template_string }, %struct.ima_template_field { [16 x i8] c"d-ng\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ima_eventdigest_ng_init, ptr @ima_show_template_digest_ng }, %struct.ima_template_field { [16 x i8] c"n-ng\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ima_eventname_ng_init, ptr @ima_show_template_string }, %struct.ima_template_field { [16 x i8] c"sig\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ima_eventsig_init, ptr @ima_show_template_sig }, %struct.ima_template_field { [16 x i8] c"buf\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ima_eventbuf_init, ptr @ima_show_template_buf }, %struct.ima_template_field { [16 x i8] c"d-modsig\00\00\00\00\00\00\00\00", ptr @ima_eventdigest_modsig_init, ptr @ima_show_template_digest_ng }, %struct.ima_template_field { [16 x i8] c"modsig\00\00\00\00\00\00\00\00\00\00", ptr @ima_eventmodsig_init, ptr @ima_show_template_sig }, %struct.ima_template_field { [16 x i8] c"evmsig\00\00\00\00\00\00\00\00\00\00", ptr @ima_eventevmsig_init, ptr @ima_show_template_sig }, %struct.ima_template_field { [16 x i8] c"iuid\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ima_eventinodeuid_init, ptr @ima_show_template_uint }, %struct.ima_template_field { [16 x i8] c"igid\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ima_eventinodegid_init, ptr @ima_show_template_uint }, %struct.ima_template_field { [16 x i8] c"imode\00\00\00\00\00\00\00\00\00\00\00", ptr @ima_eventinodemode_init, ptr @ima_show_template_uint }, %struct.ima_template_field { [16 x i8] c"xattrnames\00\00\00\00\00\00", ptr @ima_eventinodexattrnames_init, ptr @ima_show_template_string }, %struct.ima_template_field { [16 x i8] c"xattrlengths\00\00\00\00", ptr @ima_eventinodexattrlengths_init, ptr @ima_show_template_sig }, %struct.ima_template_field { [16 x i8] c"xattrvalues\00\00\00\00\00", ptr @ima_eventinodexattrvalues_init, ptr @ima_show_template_sig }], [88 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"template_list\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"d|n\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"d-ng|n-ng\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ima-sig\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"d-ng|n-ng|sig\00", [18 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"d-ng|n-ng|buf\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ima-modsig\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"d-ng|n-ng|sig|d-modsig|modsig\00", [34 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"evm-sig\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"d-ng|n-ng|evmsig|xattrnames|xattrlengths|xattrvalues|iuid|igid|imode\00", [59 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@restore_template_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013ima: attempting to initialize the template \22%s\22 failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"restore_template_fmt\00", [43 x i8] zeroinitializer }, align 32
@restore_template_fmt._entry_ptr = internal global ptr @restore_template_fmt._entry, section ".printk_index", align 4
@ima_tpm_chip = external dso_local local_unnamed_addr global ptr, align 4
@ima_extra_slots = external dso_local local_unnamed_addr global i32, section ".data..ro_after_init", align 4
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"template data\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 93, i32 50 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 94, i32 50 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 165, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [18 x i8] c"defined_templates\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 30, i32 8 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 219, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 230, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 238, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant [14 x i8] c"template_list\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [18 x i8] c"builtin_templates\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 19, i32 33 }
@___asan_gen_.106 = private unnamed_addr constant [13 x i8] c"ima_template\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 78, i32 34 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 275, i32 28 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"ima_buf_template\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 79, i32 34 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 284, i32 43 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 298, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 306, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 314, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 436, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 441, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 460, i32 33 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 465, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 475, i32 29 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 476, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 497, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 515, i32 5 }
@___asan_gen_.181 = private unnamed_addr constant [20 x i8] c"template_setup_done\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 117, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 128, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 146, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 695, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 723, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [17 x i8] c"supported_fields\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 34, i32 40 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 31, i32 8 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 20, i32 41 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 21, i32 28 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 22, i32 11 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 22, i32 29 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 23, i32 29 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 24, i32 11 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 24, i32 32 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 25, i32 11 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 26, i32 10 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 27, i32 11 }
@___asan_gen_.251 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 328, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.261 = private constant [41 x i8] c"../security/integrity/ima/ima_template.c\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 375, i32 41 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__setup_ima_template_fmt_setup, ptr @__setup_ima_template_setup, ptr @ima_init_template._entry, ptr @ima_init_template._entry.16, ptr @ima_init_template._entry.19, ptr @ima_init_template._entry_ptr, ptr @ima_init_template._entry_ptr.18, ptr @ima_init_template._entry_ptr.20, ptr @ima_restore_measurement_list._entry, ptr @ima_restore_measurement_list._entry.23, ptr @ima_restore_measurement_list._entry.27, ptr @ima_restore_measurement_list._entry.31, ptr @ima_restore_measurement_list._entry.34, ptr @ima_restore_measurement_list._entry.37, ptr @ima_restore_measurement_list._entry_ptr, ptr @ima_restore_measurement_list._entry_ptr.25, ptr @ima_restore_measurement_list._entry_ptr.29, ptr @ima_restore_measurement_list._entry_ptr.33, ptr @ima_restore_measurement_list._entry_ptr.36, ptr @ima_restore_measurement_list._entry_ptr.39, ptr @ima_template_fmt_setup._entry, ptr @ima_template_fmt_setup._entry_ptr, ptr @ima_template_setup._entry, ptr @ima_template_setup._entry.42, ptr @ima_template_setup._entry_ptr, ptr @ima_template_setup._entry_ptr.44, ptr @restore_template_fmt._entry, ptr @restore_template_fmt._entry_ptr, ptr @template_desc_init_fields._entry, ptr @template_desc_init_fields._entry.6, ptr @template_desc_init_fields._entry.9, ptr @template_desc_init_fields._entry_ptr, ptr @template_desc_init_fields._entry_ptr.11, ptr @template_desc_init_fields._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @defined_templates, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @template_list, ptr @builtin_templates, ptr @ima_template, ptr @.str.12, ptr @ima_buf_template, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @template_setup_done, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @supported_fields, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @defined_templates to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @template_desc_init_fields._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @template_desc_init_fields._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @template_desc_init_fields._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @template_list to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @builtin_templates to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_template to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_buf_template to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_init_template._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_init_template._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_init_template._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_restore_measurement_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_restore_measurement_list._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_restore_measurement_list._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_restore_measurement_list._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_restore_measurement_list._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_restore_measurement_list._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @template_setup_done to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_template_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_template_setup._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ima_template_fmt_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @supported_fields to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @restore_template_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ima_template_has_modsig(ptr nocapture noundef readonly %ima_template) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_fields = getelementptr inbounds %struct.ima_template_desc, ptr %ima_template, i32 0, i32 3
  %0 = ptrtoint ptr %num_fields to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_fields, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp12 = icmp sgt i32 %1, 0
  br i1 %cmp12, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %fields = getelementptr inbounds %struct.ima_template_desc, ptr %ima_template, i32 0, i32 4
  %2 = ptrtoint ptr %fields to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fields, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call17 = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(7) @.str) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool.not18 = icmp eq i32 %call17, 0
  br i1 %tobool.not18, label %for.body.lr.ph.cleanup_crit_edge, label %for.body.lr.ph.lor.lhs.false_crit_edge

for.body.lr.ph.lor.lhs.false_crit_edge:           ; preds = %for.body.lr.ph
  br label %lor.lhs.false

for.body.lr.ph.cleanup_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond:                                         ; preds = %lor.lhs.false
  %inc = add nuw nsw i32 %i.01320, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %1)
  %cmp = icmp slt i32 %inc, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %1)
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr ptr, ptr %3, i32 %inc
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(7) @.str) #16
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %for.body.lor.lhs.false_crit_edge

for.body.lor.lhs.false_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body.lor.lhs.false_crit_edge, %for.body.lr.ph.lor.lhs.false_crit_edge
  %8 = phi ptr [ %7, %for.body.lor.lhs.false_crit_edge ], [ %5, %for.body.lr.ph.lor.lhs.false_crit_edge ]
  %i.01320 = phi i32 [ %inc, %for.body.lor.lhs.false_crit_edge ], [ 0, %for.body.lr.ph.lor.lhs.false_crit_edge ]
  %cmp1419 = phi i1 [ %cmp, %for.body.lor.lhs.false_crit_edge ], [ true, %for.body.lr.ph.lor.lhs.false_crit_edge ]
  %call5 = tail call i32 @strcmp(ptr noundef %8, ptr noundef nonnull dereferenceable(9) @.str.1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %for.cond

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.body.lr.ph.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %for.body.lr.ph.cleanup_crit_edge ], [ %cmp1419, %lor.lhs.false.cleanup_crit_edge ], [ %cmp, %for.body.cleanup_crit_edge ], [ %cmp, %for.cond.cleanup_crit_edge ]
  ret i1 %cmp.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ima_template_setup(ptr noundef %str) #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %str) #16
  %.b = load i1, ptr @template_setup_done, align 4
  br i1 %.b, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @ima_template, align 4
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ima_init_template_list()
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %call4 = tail call ptr @lookup_template_desc(ptr noundef %str)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %str, ptr noundef nonnull @.str.12) #17
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp = icmp eq i32 %call, 3
  br i1 %cmp, label %land.lhs.true, label %if.end8.if.end21_crit_edge

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end8
  %call9 = tail call i32 @strcmp(ptr noundef %str, ptr noundef nonnull dereferenceable(4) @.str.30) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %land.lhs.true11, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

land.lhs.true11:                                  ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_hash_algo to i32))
  %1 = load i32, ptr @ima_hash_algo, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %land.lhs.true11.if.end21_crit_edge, label %do.end18

land.lhs.true11.if.end21_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

do.end18:                                         ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #15
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #17
  br label %cleanup

if.end21:                                         ; preds = %land.lhs.true11.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge, %if.end8.if.end21_crit_edge
  store ptr %call4, ptr @ima_template, align 4
  store i1 true, ptr @template_setup_done, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end18, %do.end, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ima_template_fmt_setup(ptr noundef %str) #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @template_setup_done, align 4
  br i1 %.b, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @template_desc_init_fields(ptr noundef %str, ptr noundef null, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %str, ptr noundef nonnull @.str.12) #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  store ptr %str, ptr getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 6, i32 2), align 4
  store ptr getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 6), ptr @ima_template, align 4
  store i1 true, ptr @template_setup_done, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %do.end, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lookup_template_desc(ptr nocapture noundef readonly %name) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !135) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !145
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.47, i32 noundef 696, ptr noundef nonnull @.str.48) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.for.cond.preheader_crit_edge

rcu_read_lock.exit.for.cond.preheader_crit_edge:  ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.for.cond.preheader_crit_edge, label %land.lhs.true3

land.lhs.true.for.cond.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b30 = load i1, ptr @lookup_template_desc.__warned, align 1
  br i1 %.b30, label %land.lhs.true3.for.cond.preheader_crit_edge, label %if.then

land.lhs.true3.for.cond.preheader_crit_edge:      ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @lookup_template_desc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 165, ptr noundef nonnull @.str.3) #13
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %land.lhs.true3.for.cond.preheader_crit_edge, %land.lhs.true.for.cond.preheader_crit_edge, %rcu_read_lock.exit.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %lor.lhs.false.for.cond_crit_edge, %for.cond.preheader
  %template_desc.0.in = phi ptr [ %template_desc.0, %lor.lhs.false.for.cond_crit_edge ], [ @defined_templates, %for.cond.preheader ]
  %4 = ptrtoint ptr %template_desc.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %template_desc.0 = load volatile ptr, ptr %template_desc.0.in, align 4
  %cmp.not = icmp eq ptr %template_desc.0, @defined_templates
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.cond
  %name9 = getelementptr inbounds %struct.ima_template_desc, ptr %template_desc.0, i32 0, i32 1
  %5 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name9, align 4
  %call10 = tail call i32 @strcmp(ptr noundef %6, ptr noundef %name) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %for.body.for.end_crit_edge, label %lor.lhs.false

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

lor.lhs.false:                                    ; preds = %for.body
  %fmt = getelementptr inbounds %struct.ima_template_desc, ptr %template_desc.0, i32 0, i32 2
  %7 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fmt, align 4
  %call12 = tail call i32 @strcmp(ptr noundef %8, ptr noundef %name) #16
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %lor.lhs.false.for.end_crit_edge, label %lor.lhs.false.for.cond_crit_edge

lor.lhs.false.for.cond_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %lor.lhs.false.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %spec.select = phi ptr [ %template_desc.0, %for.body.for.end_crit_edge ], [ %template_desc.0, %lor.lhs.false.for.end_crit_edge ], [ null, %for.cond.for.end_crit_edge ]
  %call.i31 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i31, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i34

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i34:                                ; preds = %for.end
  %call1.i32 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32)
  %tobool.not.i33 = icmp eq i32 %call1.i32, 0
  br i1 %tobool.not.i33, label %land.lhs.true.i34.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i36

land.lhs.true.i34.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i36:                               ; preds = %land.lhs.true.i34
  %.b4.i35 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i35, label %land.lhs.true2.i36.rcu_read_unlock.exit_crit_edge, label %if.then.i37

land.lhs.true2.i36.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i36
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i37:                                      ; preds = %land.lhs.true2.i36
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.47, i32 noundef 724, ptr noundef nonnull @.str.49) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i37, %land.lhs.true2.i36.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i34.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !146
  %9 = tail call i32 @llvm.read_register.i32(metadata !135) #13
  %and.i.i.i.i.i38 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i38 to ptr
  %preempt_count.i.i.i.i39 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i39, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i39, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret ptr %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @template_desc_init_fields(ptr noundef %template_fmt, ptr noundef writeonly %fields, ptr noundef %num_fields) local_unnamed_addr #4 align 64 {
entry:
  %found_fields = alloca [15 x ptr], align 4
  %tmp_field_id = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %found_fields) #13
  %0 = call ptr @memset(ptr %found_fields, i32 255, i32 60)
  %tobool.not = icmp eq ptr %num_fields, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = ptrtoint ptr %num_fields to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_fields, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %land.lhs.true.cleanup39_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.cleanup39_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup39

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i = tail call i32 @strlen(ptr noundef %template_fmt) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8.i = icmp sgt i32 %call.i, 0
  br i1 %cmp8.i, label %if.end.while.body.i_crit_edge, label %if.end.for.body.lr.ph_crit_edge

if.end.for.body.lr.ph_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.lr.ph

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %j.010.i = phi i32 [ %spec.select.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end.while.body.i_crit_edge ]
  %i.09.i = phi i32 [ %inc3.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end.while.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %template_fmt, i32 %i.09.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 124, i8 %4)
  %cmp1.i = icmp eq i8 %4, 124
  %inc.i = zext i1 %cmp1.i to i32
  %spec.select.i = add i32 %j.010.i, %inc.i
  %inc3.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc3.i, %call.i
  br i1 %exitcond.not.i, label %template_fmt_size.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

template_fmt_size.exit:                           ; preds = %while.body.i
  %phi.bo.i = add i32 %spec.select.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %phi.bo.i)
  %cmp1 = icmp sgt i32 %phi.bo.i, 15
  br i1 %cmp1, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %template_fmt_size.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %spec.select.i)
  %cmp584 = icmp ult i32 %spec.select.i, 2147483647
  br i1 %cmp584, label %for.cond.preheader.for.body.lr.ph_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.preheader.for.body.lr.ph_crit_edge:      ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader.for.body.lr.ph_crit_edge, %if.end.for.body.lr.ph_crit_edge
  %j.0.lcssa.i9497 = phi i32 [ %phi.bo.i, %for.cond.preheader.for.body.lr.ph_crit_edge ], [ 1, %if.end.for.body.lr.ph_crit_edge ]
  br label %for.body

do.end:                                           ; preds = %template_fmt_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %template_fmt) #17
  br label %cleanup39

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %template_fmt_ptr.087 = phi ptr [ %template_fmt, %for.body.lr.ph ], [ %add.ptr, %for.inc.for.body_crit_edge ]
  %i.085 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %tmp_field_id) #13
  %5 = call ptr @memset(ptr %tmp_field_id, i32 255, i32 17)
  %call6 = tail call ptr @strchrnul(ptr noundef %template_fmt_ptr.087, i32 noundef 124) #13
  %sub.ptr.lhs.cast = ptrtoint ptr %call6 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %template_fmt_ptr.087 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp7 = icmp eq ptr %call6, %template_fmt_ptr.087
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub)
  %cmp8 = icmp sgt i32 %sub.ptr.sub, 16
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp8
  br i1 %or.cond, label %do.end12, label %if.end15

do.end12:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %sub.ptr.sub) #17
  br label %cleanup.thread

if.end15:                                         ; preds = %for.body
  %6 = call ptr @memcpy(ptr %tmp_field_id, ptr %template_fmt_ptr.087, i32 %sub.ptr.sub)
  %arrayidx = getelementptr [17 x i8], ptr %tmp_field_id, i32 0, i32 %sub.ptr.sub
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx, align 1
  %call.i67 = call i32 @strncmp(ptr noundef nonnull @supported_fields, ptr noundef nonnull %tmp_field_id, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cmp2.i = icmp eq i32 %call.i67, 0
  br i1 %cmp2.i, label %if.end15.for.inc_crit_edge, label %for.cond.i

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.cond.i:                                       ; preds = %if.end15
  %call.1.i = call i32 @strncmp(ptr noundef getelementptr inbounds ([15 x %struct.ima_template_field], ptr @supported_fields, i32 0, i32 1), ptr noundef nonnull %tmp_field_id, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp2.1.i = icmp eq i32 %call.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.for.inc_crit_edge, label %for.cond.1.i

for.cond.i.for.inc_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = call i32 @strncmp(ptr noundef getelementptr inbounds ([15 x %struct.ima_template_field], ptr @supported_fields, i32 0, i32 2), ptr noundef nonnull %tmp_field_id, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp2.2.i = icmp eq i32 %call.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.for.inc_crit_edge, label %for.cond.2.i

for.cond.1.i.for.inc_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.3.i = call i32 @strncmp(ptr noundef getelementptr inbounds ([15 x %struct.ima_template_field], ptr @supported_fields, i32 0, i32 3), ptr noundef nonnull %tmp_field_id, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %cmp2.3.i = icmp eq i32 %call.3.i, 0
  br i1 %cmp2.3.i, label %for.cond.2.i.for.inc_crit_edge, label %for.cond.3.i

for.cond.2.i.for.inc_crit_edge:                   ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %call.4.i = call i32 @strncmp(ptr noundef getelementptr inbounds ([15 x %struct.ima_template_field], ptr @supported_fields, i32 0, i32 4), ptr noundef nonnull %tmp_field_id, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %cmp2.4.i = icmp eq i32 %call.4.i, 0
  br i1 %cmp2.4.i, label %for.cond.3.i.for.inc_crit_edge, label %for.cond.4.i

for.cond.3.i.for.inc_crit_edge:                   ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %call.5.i = call i32 @strncmp(ptr noundef getelementptr inbounds ([15 x %struct.ima_template_field], ptr @supported_fields, i32 0, i32 5), ptr noundef nonnull %tmp_field_id, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %cmp2.5.i = icmp eq i32 %call.5.i, 0
  br i1 %cmp2.5.i, label %for.cond.4.i.for.inc_crit_edge, label %for.cond.5.i

for.cond.4.i.for.inc_crit_edge:                   ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %call.6.i = call i32 @strncmp(ptr noundef getelementptr inbounds ([15 x %struct.ima_template_field], ptr @supported_fields, i32 0, i32 6), ptr noundef nonnull %tmp_field_id, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %cmp2.6.i = icmp eq i32 %call.6.i, 0
  br i1 %cmp2.6.i, label %for.cond.5.i.for.inc_crit_edge, label %for.cond.6.i

for.cond.5.i.for.inc_crit_edge:                   ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %call.7.i = call i32 @strncmp(ptr noundef getelementptr inbounds ([15 x %struct.ima_template_field], ptr @supported_fields, i32 0, i32 7), ptr noundef nonnull %tmp_field_id, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i)
  %cmp2.7.i = icmp eq i32 %call.7.i, 0
  br i1 %cmp2.7.i, label %for.cond.6.i.for.inc_crit_edge, label %for.cond.7.i

for.cond.6.i.for.inc_crit_edge:                   ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %call.8.i = call i32 @strncmp(ptr noundef getelementptr inbounds ([15 x %struct.ima_template_field], ptr @supported_fields, i32 0, i32 8), ptr noundef nonnull %tmp_field_id, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8.i)
  %cmp2.8.i = icmp eq i32 %call.8.i, 0
  br i1 %cmp2.8.i, label %for.cond.7.i.for.inc_crit_edge, label %for.cond.8.i

for.cond.7.i.for.inc_crit_edge:                   ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %call.9.i = call i32 @strncmp(ptr noundef getelementptr inbounds ([15 x %struct.ima_template_field], ptr @supported_fields, i32 0, i32 9), ptr noundef nonnull %tmp_field_id, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9.i)
  %cmp2.9.i = icmp eq i32 %call.9.i, 0
  br i1 %cmp2.9.i, label %for.cond.8.i.for.inc_crit_edge, label %for.cond.9.i

for.cond.8.i.for.inc_crit_edge:                   ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.cond.9.i:                                     ; preds = %for.cond.8.i
  %call.10.i = call i32 @strncmp(ptr noundef getelementptr inbounds ([15 x %struct.ima_template_field], ptr @supported_fields, i32 0, i32 10), ptr noundef nonnull %tmp_field_id, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.10.i)
  %cmp2.10.i = icmp eq i32 %call.10.i, 0
  br i1 %cmp2.10.i, label %for.cond.9.i.for.inc_crit_edge, label %for.cond.10.i

for.cond.9.i.for.inc_crit_edge:                   ; preds = %for.cond.9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.cond.10.i:                                    ; preds = %for.cond.9.i
  %call.11.i = call i32 @strncmp(ptr noundef getelementptr inbounds ([15 x %struct.ima_template_field], ptr @supported_fields, i32 0, i32 11), ptr noundef nonnull %tmp_field_id, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.11.i)
  %cmp2.11.i = icmp eq i32 %call.11.i, 0
  br i1 %cmp2.11.i, label %for.cond.10.i.for.inc_crit_edge, label %for.cond.11.i

for.cond.10.i.for.inc_crit_edge:                  ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.cond.11.i:                                    ; preds = %for.cond.10.i
  %call.12.i = call i32 @strncmp(ptr noundef getelementptr inbounds ([15 x %struct.ima_template_field], ptr @supported_fields, i32 0, i32 12), ptr noundef nonnull %tmp_field_id, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.12.i)
  %cmp2.12.i = icmp eq i32 %call.12.i, 0
  br i1 %cmp2.12.i, label %for.cond.11.i.for.inc_crit_edge, label %for.cond.12.i

for.cond.11.i.for.inc_crit_edge:                  ; preds = %for.cond.11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.cond.12.i:                                    ; preds = %for.cond.11.i
  %call.13.i = call i32 @strncmp(ptr noundef getelementptr inbounds ([15 x %struct.ima_template_field], ptr @supported_fields, i32 0, i32 13), ptr noundef nonnull %tmp_field_id, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.13.i)
  %cmp2.13.i = icmp eq i32 %call.13.i, 0
  br i1 %cmp2.13.i, label %for.cond.12.i.for.inc_crit_edge, label %for.cond.13.i

for.cond.12.i.for.inc_crit_edge:                  ; preds = %for.cond.12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.cond.13.i:                                    ; preds = %for.cond.12.i
  %call.14.i = call i32 @strncmp(ptr noundef getelementptr inbounds ([15 x %struct.ima_template_field], ptr @supported_fields, i32 0, i32 14), ptr noundef nonnull %tmp_field_id, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.14.i)
  %cmp2.14.i = icmp eq i32 %call.14.i, 0
  br i1 %cmp2.14.i, label %for.cond.13.i.for.inc_crit_edge, label %do.end24

for.cond.13.i.for.inc_crit_edge:                  ; preds = %for.cond.13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.end24:                                         ; preds = %for.cond.13.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx18 = getelementptr [15 x ptr], ptr %found_fields, i32 0, i32 %i.085
  %8 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx18, align 4
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %tmp_field_id) #17
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end24, %do.end12
  %retval.1.ph = phi i32 [ -22, %do.end12 ], [ -2, %do.end24 ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %tmp_field_id) #13
  br label %cleanup39

for.inc:                                          ; preds = %for.cond.13.i.for.inc_crit_edge, %for.cond.12.i.for.inc_crit_edge, %for.cond.11.i.for.inc_crit_edge, %for.cond.10.i.for.inc_crit_edge, %for.cond.9.i.for.inc_crit_edge, %for.cond.8.i.for.inc_crit_edge, %for.cond.7.i.for.inc_crit_edge, %for.cond.6.i.for.inc_crit_edge, %for.cond.5.i.for.inc_crit_edge, %for.cond.4.i.for.inc_crit_edge, %for.cond.3.i.for.inc_crit_edge, %for.cond.2.i.for.inc_crit_edge, %for.cond.1.i.for.inc_crit_edge, %for.cond.i.for.inc_crit_edge, %if.end15.for.inc_crit_edge
  %retval.0.i.ph = phi ptr [ getelementptr inbounds ([15 x %struct.ima_template_field], ptr @supported_fields, i32 0, i32 13), %for.cond.12.i.for.inc_crit_edge ], [ getelementptr inbounds ([15 x %struct.ima_template_field], ptr @supported_fields, i32 0, i32 12), %for.cond.11.i.for.inc_crit_edge ], [ getelementptr inbounds ([15 x %struct.ima_template_field], ptr @supported_fields, i32 0, i32 11), %for.cond.10.i.for.inc_crit_edge ], [ getelementptr inbounds ([15 x %struct.ima_template_field], ptr @supported_fields, i32 0, i32 10), %for.cond.9.i.for.inc_crit_edge ], [ getelementptr inbounds ([15 x %struct.ima_template_field], ptr @supported_fields, i32 0, i32 9), %for.cond.8.i.for.inc_crit_edge ], [ getelementptr inbounds ([15 x %struct.ima_template_field], ptr @supported_fields, i32 0, i32 8), %for.cond.7.i.for.inc_crit_edge ], [ getelementptr inbounds ([15 x %struct.ima_template_field], ptr @supported_fields, i32 0, i32 7), %for.cond.6.i.for.inc_crit_edge ], [ getelementptr inbounds ([15 x %struct.ima_template_field], ptr @supported_fields, i32 0, i32 6), %for.cond.5.i.for.inc_crit_edge ], [ getelementptr inbounds ([15 x %struct.ima_template_field], ptr @supported_fields, i32 0, i32 5), %for.cond.4.i.for.inc_crit_edge ], [ getelementptr inbounds ([15 x %struct.ima_template_field], ptr @supported_fields, i32 0, i32 4), %for.cond.3.i.for.inc_crit_edge ], [ getelementptr inbounds ([15 x %struct.ima_template_field], ptr @supported_fields, i32 0, i32 3), %for.cond.2.i.for.inc_crit_edge ], [ getelementptr inbounds ([15 x %struct.ima_template_field], ptr @supported_fields, i32 0, i32 2), %for.cond.1.i.for.inc_crit_edge ], [ getelementptr inbounds ([15 x %struct.ima_template_field], ptr @supported_fields, i32 0, i32 1), %for.cond.i.for.inc_crit_edge ], [ @supported_fields, %if.end15.for.inc_crit_edge ], [ getelementptr inbounds ([15 x %struct.ima_template_field], ptr @supported_fields, i32 0, i32 14), %for.cond.13.i.for.inc_crit_edge ]
  %arrayidx1871 = getelementptr [15 x ptr], ptr %found_fields, i32 0, i32 %i.085
  %9 = ptrtoint ptr %arrayidx1871 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %retval.0.i.ph, ptr %arrayidx1871, align 4
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %tmp_field_id) #13
  %inc = add nuw nsw i32 %i.085, 1
  %add = add nsw i32 %sub.ptr.sub, 1
  %add.ptr = getelementptr i8, ptr %template_fmt_ptr.087, i32 %add
  %exitcond.not = icmp eq i32 %inc, %j.0.lcssa.i9497
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %j.0.lcssa.i9497, %for.inc.for.end_crit_edge ]
  %tobool29.not = icmp eq ptr %fields, null
  %brmerge = or i1 %tobool29.not, %tobool.not
  br i1 %brmerge, label %for.end.cleanup39_crit_edge, label %if.then32

for.end.cleanup39_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup39

if.then32:                                        ; preds = %for.end
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.0.lcssa, i32 4) #13
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !147

kmalloc_array.exit.thread:                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %fields to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %fields, align 4
  br label %cleanup39

if.end7.i:                                        ; preds = %if.then32
  %13 = extractvalue { i32, i1 } %10, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3264) #19
  %14 = ptrtoint ptr %fields to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call8.i, ptr %fields, align 4
  %cmp34 = icmp eq ptr %call8.i, null
  br i1 %cmp34, label %if.end7.i.cleanup39_crit_edge, label %if.end36

if.end7.i.cleanup39_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup39

if.end36:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %mul = shl nuw i32 %i.0.lcssa, 2
  %15 = call ptr @memcpy(ptr %call8.i, ptr %found_fields, i32 %mul)
  %16 = ptrtoint ptr %num_fields to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %i.0.lcssa, ptr %num_fields, align 4
  br label %cleanup39

cleanup39:                                        ; preds = %if.end36, %if.end7.i.cleanup39_crit_edge, %kmalloc_array.exit.thread, %for.end.cleanup39_crit_edge, %cleanup.thread, %do.end, %land.lhs.true.cleanup39_crit_edge
  %retval.2 = phi i32 [ -22, %do.end ], [ 0, %land.lhs.true.cleanup39_crit_edge ], [ -12, %if.end7.i.cleanup39_crit_edge ], [ 0, %for.end.cleanup39_crit_edge ], [ 0, %if.end36 ], [ %retval.1.ph, %cleanup.thread ], [ -12, %kmalloc_array.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %found_fields) #13
  ret i32 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strchrnul(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ima_init_template_list() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @defined_templates, align 4
  %cmp.i.not = icmp eq ptr %0, @defined_templates
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @template_list) #13
  %1 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @defined_templates, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull @builtin_templates, ptr noundef %1, ptr noundef nonnull @defined_templates) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail_rcu.exit_crit_edge

if.end.list_add_tail_rcu.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  store ptr @defined_templates, ptr @builtin_templates, align 4
  store ptr %1, ptr getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 0, i32 0, i32 1), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !148
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr @builtin_templates, ptr %1, align 4
  store ptr @builtin_templates, ptr getelementptr inbounds (%struct.list_head, ptr @defined_templates, i32 0, i32 1), align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %if.end.list_add_tail_rcu.exit_crit_edge
  %3 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @defined_templates, i32 0, i32 1), align 4
  %call.i.i.1 = tail call zeroext i1 @__list_add_valid(ptr noundef getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 1), ptr noundef %3, ptr noundef nonnull @defined_templates) #13
  br i1 %call.i.i.1, label %if.end.i.i.1, label %list_add_tail_rcu.exit.list_add_tail_rcu.exit.1_crit_edge

list_add_tail_rcu.exit.list_add_tail_rcu.exit.1_crit_edge: ; preds = %list_add_tail_rcu.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail_rcu.exit.1

if.end.i.i.1:                                     ; preds = %list_add_tail_rcu.exit
  call void @__sanitizer_cov_trace_pc() #15
  store ptr @defined_templates, ptr getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 1), align 4
  store ptr %3, ptr getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 1, i32 0, i32 1), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !148
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 1), ptr %3, align 4
  store ptr getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 1), ptr getelementptr inbounds (%struct.list_head, ptr @defined_templates, i32 0, i32 1), align 4
  br label %list_add_tail_rcu.exit.1

list_add_tail_rcu.exit.1:                         ; preds = %if.end.i.i.1, %list_add_tail_rcu.exit.list_add_tail_rcu.exit.1_crit_edge
  %5 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @defined_templates, i32 0, i32 1), align 4
  %call.i.i.2 = tail call zeroext i1 @__list_add_valid(ptr noundef getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 2), ptr noundef %5, ptr noundef nonnull @defined_templates) #13
  br i1 %call.i.i.2, label %if.end.i.i.2, label %list_add_tail_rcu.exit.1.list_add_tail_rcu.exit.2_crit_edge

list_add_tail_rcu.exit.1.list_add_tail_rcu.exit.2_crit_edge: ; preds = %list_add_tail_rcu.exit.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail_rcu.exit.2

if.end.i.i.2:                                     ; preds = %list_add_tail_rcu.exit.1
  call void @__sanitizer_cov_trace_pc() #15
  store ptr @defined_templates, ptr getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 2), align 4
  store ptr %5, ptr getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 2, i32 0, i32 1), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !148
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 2), ptr %5, align 4
  store ptr getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 2), ptr getelementptr inbounds (%struct.list_head, ptr @defined_templates, i32 0, i32 1), align 4
  br label %list_add_tail_rcu.exit.2

list_add_tail_rcu.exit.2:                         ; preds = %if.end.i.i.2, %list_add_tail_rcu.exit.1.list_add_tail_rcu.exit.2_crit_edge
  %7 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @defined_templates, i32 0, i32 1), align 4
  %call.i.i.3 = tail call zeroext i1 @__list_add_valid(ptr noundef getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 3), ptr noundef %7, ptr noundef nonnull @defined_templates) #13
  br i1 %call.i.i.3, label %if.end.i.i.3, label %list_add_tail_rcu.exit.2.list_add_tail_rcu.exit.3_crit_edge

list_add_tail_rcu.exit.2.list_add_tail_rcu.exit.3_crit_edge: ; preds = %list_add_tail_rcu.exit.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail_rcu.exit.3

if.end.i.i.3:                                     ; preds = %list_add_tail_rcu.exit.2
  call void @__sanitizer_cov_trace_pc() #15
  store ptr @defined_templates, ptr getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 3), align 4
  store ptr %7, ptr getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 3, i32 0, i32 1), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !148
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 3), ptr %7, align 4
  store ptr getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 3), ptr getelementptr inbounds (%struct.list_head, ptr @defined_templates, i32 0, i32 1), align 4
  br label %list_add_tail_rcu.exit.3

list_add_tail_rcu.exit.3:                         ; preds = %if.end.i.i.3, %list_add_tail_rcu.exit.2.list_add_tail_rcu.exit.3_crit_edge
  %9 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @defined_templates, i32 0, i32 1), align 4
  %call.i.i.4 = tail call zeroext i1 @__list_add_valid(ptr noundef getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 4), ptr noundef %9, ptr noundef nonnull @defined_templates) #13
  br i1 %call.i.i.4, label %if.end.i.i.4, label %list_add_tail_rcu.exit.3.list_add_tail_rcu.exit.4_crit_edge

list_add_tail_rcu.exit.3.list_add_tail_rcu.exit.4_crit_edge: ; preds = %list_add_tail_rcu.exit.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail_rcu.exit.4

if.end.i.i.4:                                     ; preds = %list_add_tail_rcu.exit.3
  call void @__sanitizer_cov_trace_pc() #15
  store ptr @defined_templates, ptr getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 4), align 4
  store ptr %9, ptr getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 4, i32 0, i32 1), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !148
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 4), ptr %9, align 4
  store ptr getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 4), ptr getelementptr inbounds (%struct.list_head, ptr @defined_templates, i32 0, i32 1), align 4
  br label %list_add_tail_rcu.exit.4

list_add_tail_rcu.exit.4:                         ; preds = %if.end.i.i.4, %list_add_tail_rcu.exit.3.list_add_tail_rcu.exit.4_crit_edge
  %11 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @defined_templates, i32 0, i32 1), align 4
  %call.i.i.5 = tail call zeroext i1 @__list_add_valid(ptr noundef getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 5), ptr noundef %11, ptr noundef nonnull @defined_templates) #13
  br i1 %call.i.i.5, label %if.end.i.i.5, label %list_add_tail_rcu.exit.4.list_add_tail_rcu.exit.5_crit_edge

list_add_tail_rcu.exit.4.list_add_tail_rcu.exit.5_crit_edge: ; preds = %list_add_tail_rcu.exit.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail_rcu.exit.5

if.end.i.i.5:                                     ; preds = %list_add_tail_rcu.exit.4
  call void @__sanitizer_cov_trace_pc() #15
  store ptr @defined_templates, ptr getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 5), align 4
  store ptr %11, ptr getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 5, i32 0, i32 1), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !148
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 5), ptr %11, align 4
  store ptr getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 5), ptr getelementptr inbounds (%struct.list_head, ptr @defined_templates, i32 0, i32 1), align 4
  br label %list_add_tail_rcu.exit.5

list_add_tail_rcu.exit.5:                         ; preds = %if.end.i.i.5, %list_add_tail_rcu.exit.4.list_add_tail_rcu.exit.5_crit_edge
  %13 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @defined_templates, i32 0, i32 1), align 4
  %call.i.i.6 = tail call zeroext i1 @__list_add_valid(ptr noundef getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 6), ptr noundef %13, ptr noundef nonnull @defined_templates) #13
  br i1 %call.i.i.6, label %if.end.i.i.6, label %list_add_tail_rcu.exit.5.list_add_tail_rcu.exit.6_crit_edge

list_add_tail_rcu.exit.5.list_add_tail_rcu.exit.6_crit_edge: ; preds = %list_add_tail_rcu.exit.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail_rcu.exit.6

if.end.i.i.6:                                     ; preds = %list_add_tail_rcu.exit.5
  call void @__sanitizer_cov_trace_pc() #15
  store ptr @defined_templates, ptr getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 6), align 4
  store ptr %13, ptr getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 6, i32 0, i32 1), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !148
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 6), ptr %13, align 4
  store ptr getelementptr inbounds ([7 x %struct.ima_template_desc], ptr @builtin_templates, i32 0, i32 6), ptr getelementptr inbounds (%struct.list_head, ptr @defined_templates, i32 0, i32 1), align 4
  br label %list_add_tail_rcu.exit.6

list_add_tail_rcu.exit.6:                         ; preds = %if.end.i.i.6, %list_add_tail_rcu.exit.5.list_add_tail_rcu.exit.6_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @template_list) #13
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail_rcu.exit.6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ima_template_desc_current() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ima_template, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ima_init_template_list()
  %call = tail call ptr @lookup_template_desc(ptr noundef nonnull @.str.12)
  store ptr %call, ptr @ima_template, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load ptr, ptr @ima_template, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ima_template_desc_buf() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ima_buf_template, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ima_init_template_list()
  %call = tail call ptr @lookup_template_desc(ptr noundef nonnull @.str.13)
  store ptr %call, ptr @ima_buf_template, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load ptr, ptr @ima_buf_template, align 4
  ret ptr %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_init_template() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ima_template_desc_current()
  %fmt = getelementptr inbounds %struct.ima_template_desc, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fmt, align 4
  %fields = getelementptr inbounds %struct.ima_template_desc, ptr %call, i32 0, i32 4
  %num_fields = getelementptr inbounds %struct.ima_template_desc, ptr %call, i32 0, i32 3
  %call1 = tail call i32 @template_desc_init_fields(ptr noundef %1, ptr noundef %fields, ptr noundef %num_fields)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.ima_template_desc, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %char054 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char054)
  %tobool.not = icmp eq i8 %char054, 0
  br i1 %tobool.not, label %cond.false, label %do.end.cond.end_crit_edge

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fmt, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.end.cond.end_crit_edge
  %cond = phi ptr [ %6, %cond.false ], [ %3, %do.end.cond.end_crit_edge ]
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %cond, i32 noundef %call1) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @ima_template_desc_buf()
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end11, label %if.end14

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #17
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %fmt15 = getelementptr inbounds %struct.ima_template_desc, ptr %call6, i32 0, i32 2
  %7 = ptrtoint ptr %fmt15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fmt15, align 4
  %fields16 = getelementptr inbounds %struct.ima_template_desc, ptr %call6, i32 0, i32 4
  %num_fields17 = getelementptr inbounds %struct.ima_template_desc, ptr %call6, i32 0, i32 3
  %call18 = tail call i32 @template_desc_init_fields(ptr noundef %8, ptr noundef %fields16, ptr noundef %num_fields17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %do.end23, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end23:                                         ; preds = %if.end14
  %name25 = getelementptr inbounds %struct.ima_template_desc, ptr %call6, i32 0, i32 1
  %9 = ptrtoint ptr %name25 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name25, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %char0 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool27.not = icmp eq i8 %char0, 0
  br i1 %tobool27.not, label %cond.false30, label %do.end23.cond.end32_crit_edge

do.end23.cond.end32_crit_edge:                    ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end32

cond.false30:                                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %fmt15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fmt15, align 4
  br label %cond.end32

cond.end32:                                       ; preds = %cond.false30, %do.end23.cond.end32_crit_edge
  %cond33 = phi ptr [ %13, %cond.false30 ], [ %10, %do.end23.cond.end32_crit_edge ]
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %cond33, i32 noundef %call18) #17
  br label %cleanup

cleanup:                                          ; preds = %cond.end32, %if.end14.cleanup_crit_edge, %do.end11, %cond.end
  %retval.0 = phi i32 [ %call1, %cond.end ], [ -22, %do.end11 ], [ %call18, %cond.end32 ], [ %call18, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ima_restore_measurement_list(i64 noundef %size, ptr noundef %buf) local_unnamed_addr #4 align 64 {
entry:
  %template_name = alloca [69 x i8], align 1
  %zero = alloca [20 x i8], align 1
  %hdr = alloca [4 x %struct.ima_field_data], align 4
  %bufp = alloca ptr, align 4
  %hdr_mask = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 69, ptr nonnull %template_name) #13
  %0 = call ptr @memset(ptr %template_name, i32 255, i32 69)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %zero) #13
  %1 = call ptr @memset(ptr %zero, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %hdr) #13
  %2 = call ptr @memcpy(ptr %hdr, ptr @__const.ima_restore_measurement_list.hdr, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bufp) #13
  %add.ptr = getelementptr i8, ptr %buf, i32 24
  %3 = ptrtoint ptr %bufp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %bufp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hdr_mask) #13
  %tobool.not = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp8(i64 24, i64 %size)
  %cmp = icmp slt i64 %size, 24
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.cleanup132_crit_edge, label %if.end

entry.cleanup132_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup132

if.end:                                           ; preds = %entry
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ima_canonical_fmt to i32))
  %4 = load i8, ptr @ima_canonical_fmt, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %buf, align 8
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %buf, align 8
  %count5 = getelementptr inbounds %struct.ima_kexec_hdr, ptr %buf, i32 0, i32 4
  %9 = ptrtoint ptr %count5 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %count5, align 8
  %11 = tail call i64 @llvm.bswap.i64(i64 %10)
  %12 = ptrtoint ptr %count5 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %count5, align 8
  %buffer_size = getelementptr inbounds %struct.ima_kexec_hdr, ptr %buf, i32 0, i32 3
  %13 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %buffer_size, align 8
  %15 = tail call i64 @llvm.bswap.i64(i64 %14)
  %16 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %buffer_size, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %buf, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %18)
  %cmp10.not = icmp eq i16 %18, 1
  br i1 %cmp10.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #17
  br label %cleanup132

if.end13:                                         ; preds = %if.end8
  %count14 = getelementptr inbounds %struct.ima_kexec_hdr, ptr %buf, i32 0, i32 4
  %19 = ptrtoint ptr %count14 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %count14, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967294, i64 %20)
  %cmp15 = icmp ugt i64 %20, 4294967294
  br i1 %cmp15, label %do.end20, label %if.end23

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #17
  br label %cleanup132

if.end23:                                         ; preds = %if.end13
  %21 = ptrtoint ptr %hdr_mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %hdr_mask, align 4
  %buffer_size26 = getelementptr inbounds %struct.ima_kexec_hdr, ptr %buf, i32 0, i32 3
  %22 = ptrtoint ptr %buffer_size26 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %buffer_size26, align 8
  %idx.ext = trunc i64 %23 to i32
  %add.ptr27 = getelementptr i8, ptr %buf, i32 %idx.ext
  %24 = ptrtoint ptr %bufp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bufp, align 4
  %cmp28226 = icmp ult ptr %25, %add.ptr27
  br i1 %cmp28226, label %land.rhs.lr.ph, label %if.end23.cleanup132_crit_edge

if.end23.cleanup132_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup132

land.rhs.lr.ph:                                   ; preds = %if.end23
  %len = getelementptr inbounds [4 x %struct.ima_field_data], ptr %hdr, i32 0, i32 2, i32 1
  %arrayidx = getelementptr inbounds [4 x %struct.ima_field_data], ptr %hdr, i32 0, i32 2
  %arrayidx94 = getelementptr inbounds [4 x %struct.ima_field_data], ptr %hdr, i32 0, i32 3
  %len97 = getelementptr inbounds [4 x %struct.ima_field_data], ptr %hdr, i32 0, i32 3, i32 1
  %arrayidx103 = getelementptr inbounds [4 x %struct.ima_field_data], ptr %hdr, i32 0, i32 1
  %26 = ptrtoint ptr %count14 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %count14, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %cmp32286.not = icmp eq i64 %27, 0
  br i1 %cmp32286.not, label %land.rhs.lr.ph.cleanup132_crit_edge, label %land.rhs.lr.ph.while.body_crit_edge

land.rhs.lr.ph.while.body_crit_edge:              ; preds = %land.rhs.lr.ph
  br label %while.body

land.rhs.lr.ph.cleanup132_crit_edge:              ; preds = %land.rhs.lr.ph
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup132

while.cond:                                       ; preds = %if.end120
  %28 = ptrtoint ptr %bufp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bufp, align 4
  %cmp28 = icmp ult ptr %29, %add.ptr27
  br i1 %cmp28, label %land.rhs, label %while.cond.cleanup132_crit_edge

while.cond.cleanup132_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup132

land.rhs:                                         ; preds = %while.cond
  %inc = add i32 %inc287, 1
  %conv30 = zext i32 %inc287 to i64
  %30 = ptrtoint ptr %count14 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %count14, align 8
  %cmp32 = icmp ugt i64 %31, %conv30
  br i1 %cmp32, label %land.rhs.while.body_crit_edge, label %land.rhs.cleanup132_crit_edge

land.rhs.cleanup132_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup132

land.rhs.while.body_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body:                                       ; preds = %land.rhs.while.body_crit_edge, %land.rhs.lr.ph.while.body_crit_edge
  %32 = phi i64 [ %31, %land.rhs.while.body_crit_edge ], [ %27, %land.rhs.lr.ph.while.body_crit_edge ]
  %inc287 = phi i32 [ %inc, %land.rhs.while.body_crit_edge ], [ 1, %land.rhs.lr.ph.while.body_crit_edge ]
  %33 = phi ptr [ %29, %land.rhs.while.body_crit_edge ], [ %25, %land.rhs.lr.ph.while.body_crit_edge ]
  %conv34 = zext i32 %inc287 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %conv34)
  %cmp36 = icmp eq i64 %32, %conv34
  %or = select i1 %cmp36, i32 3, i32 1
  %call40 = call i32 @ima_parse_buf(ptr noundef %33, ptr noundef nonnull %add.ptr27, ptr noundef nonnull %bufp, i32 noundef 4, ptr noundef nonnull %hdr, ptr noundef null, ptr noundef nonnull %hdr_mask, i32 noundef %or, ptr noundef nonnull @.str.26) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %while.body.cleanup132_crit_edge, label %if.end44

while.body.cleanup132_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup132

if.end44:                                         ; preds = %while.body
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %35)
  %cmp45 = icmp ugt i32 %35, 68
  br i1 %cmp45, label %do.end50, label %if.end53

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #17
  br label %cleanup132

if.end53:                                         ; preds = %if.end44
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %38 = call ptr @memcpy(ptr %template_name, ptr %37, i32 %35)
  %arrayidx60 = getelementptr [69 x i8], ptr %template_name, i32 0, i32 %35
  %39 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx60, align 1
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %template_name, ptr noundef nonnull dereferenceable(4) @.str.30, i32 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp63 = icmp eq i32 %bcmp, 0
  br i1 %cmp63, label %do.end68, label %if.end72

do.end68:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull %template_name) #17
  br label %cleanup132

if.end72:                                         ; preds = %if.end53
  %call74 = call ptr @lookup_template_desc(ptr noundef nonnull %template_name)
  %tobool75.not = icmp eq ptr %call74, null
  br i1 %tobool75.not, label %if.then76, label %if.end72.if.end82_crit_edge

if.end72.if.end82_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82

if.then76:                                        ; preds = %if.end72
  %call.i = call i32 @template_desc_init_fields(ptr noundef nonnull %template_name, ptr noundef null, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #15
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull %template_name) #17
  br label %cleanup132

if.end.i:                                         ; preds = %if.then76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 24) #20
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup132_crit_edge, label %if.end4.i

if.end.i.cleanup132_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup132

if.end4.i:                                        ; preds = %if.end.i
  %name.i = getelementptr inbounds %struct.ima_template_desc, ptr %call7.i.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.60, ptr %name.i, align 8
  %call5.i = call noalias ptr @kstrdup(ptr noundef nonnull %template_name, i32 noundef 3264) #13
  %fmt.i = getelementptr inbounds %struct.ima_template_desc, ptr %call7.i.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call5.i, ptr %fmt.i, align 4
  %tobool7.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool7.not.i, label %if.end4.i.if.end82_crit_edge, label %if.end9.i

if.end4.i.if.end82_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82

if.end9.i:                                        ; preds = %if.end4.i
  call void @_raw_spin_lock(ptr noundef nonnull @template_list) #13
  %43 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @defined_templates, i32 0, i32 1), align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %43, ptr noundef nonnull @defined_templates) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end9.i.list_add_tail_rcu.exit.i_crit_edge

if.end9.i.list_add_tail_rcu.exit.i_crit_edge:     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail_rcu.exit.i

if.end.i.i.i:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @defined_templates, ptr %call7.i.i.i, align 8
  %prev2.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %prev2.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !148
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %call7.i.i.i, ptr %43, align 4
  store ptr %call7.i.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @defined_templates, i32 0, i32 1), align 4
  br label %list_add_tail_rcu.exit.i

list_add_tail_rcu.exit.i:                         ; preds = %if.end.i.i.i, %if.end9.i.list_add_tail_rcu.exit.i_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @template_list) #13
  br label %if.end82

if.end82:                                         ; preds = %list_add_tail_rcu.exit.i, %if.end4.i.if.end82_crit_edge, %if.end72.if.end82_crit_edge
  %template_desc.0 = phi ptr [ %call74, %if.end72.if.end82_crit_edge ], [ %call7.i.i.i, %list_add_tail_rcu.exit.i ], [ %call7.i.i.i, %if.end4.i.if.end82_crit_edge ]
  %fmt = getelementptr inbounds %struct.ima_template_desc, ptr %template_desc.0, i32 0, i32 2
  %47 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fmt, align 4
  %fields = getelementptr inbounds %struct.ima_template_desc, ptr %template_desc.0, i32 0, i32 4
  %num_fields = getelementptr inbounds %struct.ima_template_desc, ptr %template_desc.0, i32 0, i32 3
  %call83 = call i32 @template_desc_init_fields(ptr noundef %48, ptr noundef %fields, ptr noundef %num_fields)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %do.end89, label %if.end93

do.end89:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #15
  %fmt.le = getelementptr inbounds %struct.ima_template_desc, ptr %template_desc.0, i32 0, i32 2
  %49 = ptrtoint ptr %fmt.le to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fmt.le, align 4
  %call92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %50) #17
  br label %cleanup132

if.end93:                                         ; preds = %if.end82
  %51 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx94, align 4
  %53 = ptrtoint ptr %len97 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len97, align 4
  %55 = ptrtoint ptr %num_fields to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_fields, align 4
  %57 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %56, i32 8) #13
  %58 = extractvalue { i32, i1 } %57, 1
  %59 = extractvalue { i32, i1 } %57, 0
  %spec.select.i.i = call i32 @llvm.uadd.sat.i32(i32 %59, i32 16) #13
  %retval.0.i.i = select i1 %58, i32 -1, i32 %spec.select.i.i
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i, i32 noundef 3392) #19
  %tobool.not.i176 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i176, label %if.end93.cleanup132_crit_edge, label %if.end.i177

if.end93.cleanup132_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup132

if.end.i177:                                      ; preds = %if.end93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_tpm_chip to i32))
  %60 = load ptr, ptr @ima_tpm_chip, align 4
  %cmp.not.i = icmp eq ptr %60, null
  br i1 %cmp.not.i, label %if.end.i177.cond.end.i_crit_edge, label %cond.true.i

if.end.i177.cond.end.i_crit_edge:                 ; preds = %if.end.i177
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end.i177
  call void @__sanitizer_cov_trace_pc() #15
  %nr_allocated_banks.i = getelementptr inbounds %struct.tpm_chip, ptr %60, i32 0, i32 25
  %61 = ptrtoint ptr %nr_allocated_banks.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nr_allocated_banks.i, align 8
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.i177.cond.end.i_crit_edge
  %cond.i = phi i32 [ %62, %cond.true.i ], [ 0, %if.end.i177.cond.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ima_extra_slots to i32))
  %63 = load i32, ptr @ima_extra_slots, align 4
  %add.i = add i32 %63, %cond.i
  %64 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 66) #13
  %65 = extractvalue { i32, i1 } %64, 1
  br i1 %65, label %cond.end.i.if.then5.i_crit_edge, label %if.end7.i.i.i, !prof !147

cond.end.i.if.then5.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5.i

if.end7.i.i.i:                                    ; preds = %cond.end.i
  %66 = extractvalue { i32, i1 } %64, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %66, i32 noundef 3392) #19
  %tobool4.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool4.not.i, label %if.end7.i.i.i.if.then5.i_crit_edge, label %if.end6.i

if.end7.i.i.i.if.then5.i_crit_edge:               ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5.i

if.then5.i:                                       ; preds = %if.end7.i.i.i.if.then5.i_crit_edge, %cond.end.i.if.then5.i_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #13
  br label %cleanup132

if.end6.i:                                        ; preds = %if.end7.i.i.i
  %digests7.i = getelementptr inbounds %struct.ima_template_entry, ptr %call9.i.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %digests7.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call8.i.i.i, ptr %digests7.i, align 4
  %add.ptr.i = getelementptr i8, ptr %52, i32 %54
  %68 = ptrtoint ptr %num_fields to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_fields, align 4
  %template_data9.i = getelementptr inbounds %struct.ima_template_entry, ptr %call9.i.i.i, i32 0, i32 4
  %call10.i = call i32 @ima_parse_buf(ptr noundef %52, ptr noundef %add.ptr.i, ptr noundef null, i32 noundef %69, ptr noundef %template_data9.i, ptr noundef null, ptr noundef null, i32 noundef 3, ptr noundef nonnull @.str.63) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.then12.i, label %if.end14.i

if.then12.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %digests7.i.le = getelementptr inbounds %struct.ima_template_entry, ptr %call9.i.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %digests7.i.le to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %digests7.i.le, align 4
  call void @kfree(ptr noundef %71) #13
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #13
  br label %cleanup132

if.end14.i:                                       ; preds = %if.end6.i
  %template_desc15.i = getelementptr inbounds %struct.ima_template_entry, ptr %call9.i.i.i, i32 0, i32 2
  %72 = ptrtoint ptr %template_desc15.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %template_desc.0, ptr %template_desc15.i, align 8
  %73 = ptrtoint ptr %num_fields to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_fields, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp17121.i = icmp sgt i32 %74, 0
  br i1 %cmp17121.i, label %for.body.i.preheader, label %if.end14.i.if.end102_crit_edge

if.end14.i.if.end102_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

for.body.i.preheader:                             ; preds = %if.end14.i
  %template_data_len.i = getelementptr inbounds %struct.ima_template_entry, ptr %call9.i.i.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.0122.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.ima_template_entry, ptr %call9.i.i.i, i32 0, i32 4, i32 %i.0122.i
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i, align 8
  %len.i = getelementptr %struct.ima_template_entry, ptr %call9.i.i.i, i32 0, i32 4, i32 %i.0122.i, i32 1
  %77 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %len.i, align 4
  %add20.i = add i32 %78, 1
  %call9.i.i104.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add20.i, i32 noundef 3520) #19
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call9.i.i104.i, ptr %arrayidx.i, align 8
  %tobool28.not.i = icmp eq ptr %call9.i.i104.i, null
  br i1 %tobool28.not.i, label %if.then41.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %80 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len.i, align 4
  %82 = call ptr @memcpy(ptr %call9.i.i104.i, ptr %76, i32 %81)
  %83 = ptrtoint ptr %template_data_len.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %template_data_len.i, align 4
  %add35.i = add i32 %84, 4
  store i32 %add35.i, ptr %template_data_len.i, align 4
  %85 = load i32, ptr %len.i, align 4
  %add38.i = add i32 %85, %add35.i
  store i32 %add38.i, ptr %template_data_len.i, align 4
  %inc.i = add nuw nsw i32 %i.0122.i, 1
  %86 = ptrtoint ptr %num_fields to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %num_fields, align 4
  %cmp17.i = icmp slt i32 %inc.i, %87
  br i1 %cmp17.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end102_crit_edge

for.inc.i.if.end102_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.then41.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @ima_free_template_entry(ptr noundef nonnull %call9.i.i.i) #13
  br label %cleanup132

if.end102:                                        ; preds = %for.inc.i.if.end102_crit_edge, %if.end14.i.if.end102_crit_edge
  %88 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx103, align 4
  %bcmp172 = call i32 @bcmp(ptr noundef dereferenceable(20) %89, ptr noundef nonnull dereferenceable(20) %zero, i32 20) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp172)
  %tobool107.not = icmp eq i32 %bcmp172, 0
  br i1 %tobool107.not, label %if.end102.if.end120_crit_edge, label %if.then108

if.end102.if.end120_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end120

if.then108:                                       ; preds = %if.end102
  %call110 = call i32 @ima_calc_field_array_hash(ptr noundef %template_data9.i, ptr noundef nonnull %call9.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %do.end116, label %if.then108.if.end120_crit_edge

if.then108.if.end120_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end120

do.end116:                                        ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #15
  %call118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #17
  br label %cleanup132

if.end120:                                        ; preds = %if.then108.if.end120_crit_edge, %if.end102.if.end120_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ima_canonical_fmt to i32))
  %90 = load i8, ptr @ima_canonical_fmt, align 1, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool121.not = icmp eq i8 %90, 0
  %91 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hdr, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %92, align 4
  %95 = call i32 @llvm.bswap.i32(i32 %94)
  %cond126 = select i1 %tobool121.not, i32 %94, i32 %95
  %96 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %cond126, ptr %call9.i.i.i, align 128
  %call127 = call i32 @ima_restore_measurement_entry(ptr noundef nonnull %call9.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %cmp128 = icmp slt i32 %call127, 0
  br i1 %cmp128, label %if.end120.cleanup132_crit_edge, label %while.cond

if.end120.cleanup132_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup132

cleanup132:                                       ; preds = %if.end120.cleanup132_crit_edge, %do.end116, %if.then41.i, %if.then12.i, %if.then5.i, %if.end93.cleanup132_crit_edge, %do.end89, %if.end.i.cleanup132_crit_edge, %do.end.i, %do.end68, %do.end50, %while.body.cleanup132_crit_edge, %land.rhs.cleanup132_crit_edge, %while.cond.cleanup132_crit_edge, %land.rhs.lr.ph.cleanup132_crit_edge, %if.end23.cleanup132_crit_edge, %do.end20, %do.end, %entry.cleanup132_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end20 ], [ 0, %entry.cleanup132_crit_edge ], [ -22, %do.end116 ], [ -22, %do.end89 ], [ -22, %do.end68 ], [ -22, %do.end50 ], [ %call40, %do.end.i ], [ -12, %if.then41.i ], [ -12, %if.then5.i ], [ %call10.i, %if.then12.i ], [ 0, %if.end23.cleanup132_crit_edge ], [ 0, %land.rhs.lr.ph.cleanup132_crit_edge ], [ %call127, %while.cond.cleanup132_crit_edge ], [ %call127, %land.rhs.cleanup132_crit_edge ], [ %call40, %while.body.cleanup132_crit_edge ], [ %call40, %if.end.i.cleanup132_crit_edge ], [ -12, %if.end93.cleanup132_crit_edge ], [ %call127, %if.end120.cleanup132_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr_mask) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bufp) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %hdr) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %zero) #13
  call void @llvm.lifetime.end.p0(i64 69, ptr nonnull %template_name) #13
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_parse_buf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_calc_field_array_hash(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_restore_measurement_entry(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_eventdigest_init(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ima_show_template_digest(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_eventname_init(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ima_show_template_string(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_eventdigest_ng_init(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ima_show_template_digest_ng(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_eventname_ng_init(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_eventsig_init(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ima_show_template_sig(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_eventbuf_init(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ima_show_template_buf(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_eventdigest_modsig_init(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_eventmodsig_init(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_eventevmsig_init(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_eventinodeuid_init(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ima_show_template_uint(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_eventinodegid_init(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_eventinodemode_init(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_eventinodexattrnames_init(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_eventinodexattrlengths_init(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ima_eventinodexattrvalues_init(ptr noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ima_free_template_entry(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nobuiltin }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !100, !101, !103, !105, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !131, !132, !133}
!llvm.named.register.sp = !{!135}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/integrity/ima/ima_template.c", i32 93, i32 50}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/integrity/ima/ima_template.c", i32 94, i32 50}
!4 = !{ptr @__setup_ima_template_setup, !5, !"__setup_ima_template_setup", i1 false, i1 false}
!5 = !{!"../security/integrity/ima/ima_template.c", i32 136, i32 1}
!6 = !{ptr @__setup_ima_template_fmt_setup, !7, !"__setup_ima_template_fmt_setup", i1 false, i1 false}
!7 = !{!"../security/integrity/ima/ima_template.c", i32 157, i32 1}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../security/integrity/ima/ima_template.c", i32 165, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../security/integrity/ima/ima_template.c", i32 219, i32 3}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @template_desc_init_fields._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @template_desc_init_fields._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../security/integrity/ima/ima_template.c", i32 230, i32 4}
!19 = !{ptr @template_desc_init_fields._entry.6, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @template_desc_init_fields._entry_ptr.8, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../security/integrity/ima/ima_template.c", i32 238, i32 4}
!23 = !{ptr @template_desc_init_fields._entry.9, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @template_desc_init_fields._entry_ptr.11, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../security/integrity/ima/ima_template.c", i32 275, i32 28}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../security/integrity/ima/ima_template.c", i32 284, i32 43}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../security/integrity/ima/ima_template.c", i32 298, i32 3}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ima_init_template._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @ima_init_template._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../security/integrity/ima/ima_template.c", i32 306, i32 3}
!36 = !{ptr @ima_init_template._entry.16, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ima_init_template._entry_ptr.18, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @ima_init_template._entry.19, !39, !"_entry", i1 false, i1 false}
!39 = !{!"../security/integrity/ima/ima_template.c", i32 314, i32 3}
!40 = !{ptr @ima_init_template._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../security/integrity/ima/ima_template.c", i32 436, i32 3}
!43 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ima_restore_measurement_list._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @ima_restore_measurement_list._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../security/integrity/ima/ima_template.c", i32 441, i32 3}
!48 = !{ptr @ima_restore_measurement_list._entry.23, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ima_restore_measurement_list._entry_ptr.25, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../security/integrity/ima/ima_template.c", i32 460, i32 33}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../security/integrity/ima/ima_template.c", i32 465, i32 4}
!54 = !{ptr @ima_restore_measurement_list._entry.27, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ima_restore_measurement_list._entry_ptr.29, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../security/integrity/ima/ima_template.c", i32 475, i32 29}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../security/integrity/ima/ima_template.c", i32 476, i32 4}
!60 = !{ptr @ima_restore_measurement_list._entry.31, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ima_restore_measurement_list._entry_ptr.33, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../security/integrity/ima/ima_template.c", i32 497, i32 4}
!64 = !{ptr @ima_restore_measurement_list._entry.34, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ima_restore_measurement_list._entry_ptr.36, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../security/integrity/ima/ima_template.c", i32 515, i32 5}
!68 = !{ptr @ima_restore_measurement_list._entry.37, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @ima_restore_measurement_list._entry_ptr.39, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @ima_template, !71, !"ima_template", i1 false, i1 false}
!71 = !{!"../security/integrity/ima/ima_template.c", i32 78, i32 34}
!72 = !{ptr @ima_buf_template, !73, !"ima_buf_template", i1 false, i1 false}
!73 = !{!"../security/integrity/ima/ima_template.c", i32 79, i32 34}
!74 = !{ptr @__setup_str_ima_template_setup, !5, !"__setup_str_ima_template_setup", i1 false, i1 false}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../security/integrity/ima/ima_template.c", i32 117, i32 3}
!77 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @ima_template_setup._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @ima_template_setup._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../security/integrity/ima/ima_template.c", i32 128, i32 3}
!82 = !{ptr @ima_template_setup._entry.42, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @ima_template_setup._entry_ptr.44, !81, !"_entry_ptr", i1 false, i1 false}
!84 = distinct !{null, !85, !"template_setup_done", i1 false, i1 false}
!85 = !{!"../security/integrity/ima/ima_template.c", i32 32, i32 12}
!86 = !{ptr @__setup_str_ima_template_fmt_setup, !7, !"__setup_str_ima_template_fmt_setup", i1 false, i1 false}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../security/integrity/ima/ima_template.c", i32 146, i32 3}
!89 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ima_template_fmt_setup._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @ima_template_fmt_setup._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!94 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @defined_templates, !97, !"defined_templates", i1 false, i1 false}
!97 = !{!"../security/integrity/ima/ima_template.c", i32 30, i32 8}
!98 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!99 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!100 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @supported_fields, !102, !"supported_fields", i1 false, i1 false}
!102 = !{!"../security/integrity/ima/ima_template.c", i32 34, i32 40}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../security/integrity/ima/ima_template.c", i32 31, i32 8}
!105 = !{ptr @template_list, !104, !"template_list", i1 false, i1 false}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../security/integrity/ima/ima_template.c", i32 20, i32 41}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../security/integrity/ima/ima_template.c", i32 21, i32 28}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../security/integrity/ima/ima_template.c", i32 22, i32 11}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../security/integrity/ima/ima_template.c", i32 22, i32 29}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../security/integrity/ima/ima_template.c", i32 23, i32 29}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../security/integrity/ima/ima_template.c", i32 24, i32 11}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../security/integrity/ima/ima_template.c", i32 24, i32 32}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../security/integrity/ima/ima_template.c", i32 25, i32 11}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../security/integrity/ima/ima_template.c", i32 26, i32 10}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../security/integrity/ima/ima_template.c", i32 27, i32 11}
!126 = !{ptr @builtin_templates, !127, !"builtin_templates", i1 false, i1 false}
!127 = !{!"../security/integrity/ima/ima_template.c", i32 19, i32 33}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../security/integrity/ima/ima_template.c", i32 328, i32 3}
!130 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @restore_template_fmt._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @restore_template_fmt._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../security/integrity/ima/ima_template.c", i32 375, i32 41}
!135 = !{!"sp"}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{i64 2149176377}
!146 = !{i64 2149176643}
!147 = !{!"branch_weights", i32 1, i32 2000}
!148 = !{i64 2149201769}
!149 = !{i8 0, i8 2}
