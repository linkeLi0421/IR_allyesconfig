; ModuleID = '/llk/IR_all_yes/drivers/isdn/capi/kcapi.c_pt.bc'
source_filename = "../drivers/isdn/capi/kcapi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+capi_ctr_handle_message\22, \22a\22\09"
module asm "\09.weak\09__crc_capi_ctr_handle_message\09\09\09\09"
module asm "\09.long\09__crc_capi_ctr_handle_message\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_capi_ctr_handle_message:\09\09\09\09\09"
module asm "\09.asciz \09\22capi_ctr_handle_message\22\09\09\09\09\09"
module asm "__kstrtabns_capi_ctr_handle_message:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+capi_ctr_ready\22, \22a\22\09"
module asm "\09.weak\09__crc_capi_ctr_ready\09\09\09\09"
module asm "\09.long\09__crc_capi_ctr_ready\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_capi_ctr_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22capi_ctr_ready\22\09\09\09\09\09"
module asm "__kstrtabns_capi_ctr_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+capi_ctr_down\22, \22a\22\09"
module asm "\09.weak\09__crc_capi_ctr_down\09\09\09\09"
module asm "\09.long\09__crc_capi_ctr_down\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_capi_ctr_down:\09\09\09\09\09"
module asm "\09.asciz \09\22capi_ctr_down\22\09\09\09\09\09"
module asm "__kstrtabns_capi_ctr_down:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+attach_capi_ctr\22, \22a\22\09"
module asm "\09.weak\09__crc_attach_capi_ctr\09\09\09\09"
module asm "\09.long\09__crc_attach_capi_ctr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_attach_capi_ctr:\09\09\09\09\09"
module asm "\09.asciz \09\22attach_capi_ctr\22\09\09\09\09\09"
module asm "__kstrtabns_attach_capi_ctr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+detach_capi_ctr\22, \22a\22\09"
module asm "\09.weak\09__crc_detach_capi_ctr\09\09\09\09"
module asm "\09.long\09__crc_detach_capi_ctr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_detach_capi_ctr:\09\09\09\09\09"
module asm "\09.asciz \09\22detach_capi_ctr\22\09\09\09\09\09"
module asm "__kstrtabns_detach_capi_ctr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.capi_version = type { i32, i32, i32, i32 }
%struct.capi_ctr = type { ptr, ptr, [32 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [64 x i8], %struct.capi_version, %struct.capi_profile, [8 x i8], i32, i32, i32, i32, i32, i16, i32, i32, ptr, [128 x i8] }
%struct.capi_profile = type { i16, i16, i32, i32, i32, i32, [6 x i32], [5 x i32] }
%struct.sk_buff = type { %union.anon.74, %union.anon.77, %union.anon.78, [48 x i8], %union.anon.79, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.81, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { ptr, ptr, %union.anon.76 }
%union.anon.76 = type { ptr }
%union.anon.77 = type { ptr }
%union.anon.78 = type { i64 }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, ptr }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.83, i32, i32, i32, i16, i16, %union.anon.85, i32, %union.anon.86, %union.anon.87, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.83 = type { i32 }
%union.anon.85 = type { i32 }
%union.anon.86 = type { i32 }
%union.anon.87 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.capi20_appl = type { i16, %struct.capi_register_params, ptr, ptr, i32, i32, i32, i32, %struct.mutex, %struct.sk_buff_head, %struct.work_struct, i32 }
%struct.capi_register_params = type { i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.capictr_event = type { %struct.work_struct, i32, i32 }
%struct.kcapi_flagdef = type { i32, i32 }

@__param_str_showcapimsgs = internal constant [24 x i8] c"kernelcapi.showcapimsgs\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@showcapimsgs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_showcapimsgs = internal constant %struct.kernel_param { ptr @__param_str_showcapimsgs, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @showcapimsgs } }, section "__param", align 4
@__UNIQUE_ID_showcapimsgstype275 = internal constant [38 x i8] c"kernelcapi.parmtype=showcapimsgs:uint\00", section ".modinfo", align 1
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"capi_controller_lock.wait_lock\00", [33 x i8] zeroinitializer }, align 32
@capi_controller_lock = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @capi_controller_lock, i64 52), ptr getelementptr (i8, ptr @capi_controller_lock, i64 52) }, ptr @capi_controller_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"capi_controller_lock\00", [43 x i8] zeroinitializer }, align 32
@capi_ctr_handle_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016kcapi: controller [%03d] not active, got: %s\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"capi_ctr_handle_message\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/isdn/capi/kcapi.c\00", [38 x i8] zeroinitializer }, align 32
@capi_ctr_handle_message._entry_ptr = internal global ptr @capi_ctr_handle_message._entry, section ".printk_index", align 4
@capi_ctr_handle_message._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016kcapi: controller [%03d] not active, cannot trace\0A\00", [43 x i8] zeroinitializer }, align 32
@capi_ctr_handle_message._entry_ptr.7 = internal global ptr @capi_ctr_handle_message._entry.5, section ".printk_index", align 4
@capi_ctr_handle_message._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017kcapi: got [%03d] id#%d %s len=%u\0A\00", [59 x i8] zeroinitializer }, align 32
@capi_ctr_handle_message._entry_ptr.10 = internal global ptr @capi_ctr_handle_message._entry.8, section ".printk_index", align 4
@capi_ctr_handle_message._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017kcapi: got [%03d] %s\0A\00", [40 x i8] zeroinitializer }, align 32
@capi_ctr_handle_message._entry_ptr.13 = internal global ptr @capi_ctr_handle_message._entry.11, section ".printk_index", align 4
@capi_ctr_handle_message._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017kcapi: got [%03d] id#%d %s len=%u, cannot trace\0A\00", [45 x i8] zeroinitializer }, align 32
@capi_ctr_handle_message._entry_ptr.16 = internal global ptr @capi_ctr_handle_message._entry.14, section ".printk_index", align 4
@capi_ctr_handle_message._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013kcapi: handle_message: applid %d state released (%s)\0A\00", [40 x i8] zeroinitializer }, align 32
@capi_ctr_handle_message._entry_ptr.19 = internal global ptr @capi_ctr_handle_message._entry.17, section ".printk_index", align 4
@capi_ctr_handle_message._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013kcapi: handle_message: applid %d state released (%s) cannot trace\0A\00", [59 x i8] zeroinitializer }, align 32
@capi_ctr_handle_message._entry_ptr.22 = internal global ptr @capi_ctr_handle_message._entry.20, section ".printk_index", align 4
@kcapi_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_capi_ctr_handle_message = external dso_local constant [0 x i8], align 1
@__kstrtabns_capi_ctr_handle_message = external dso_local constant [0 x i8], align 1
@__ksymtab_capi_ctr_handle_message = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @capi_ctr_handle_message to i32), ptr @__kstrtab_capi_ctr_handle_message, ptr @__kstrtabns_capi_ctr_handle_message }, section "___ksymtab+capi_ctr_handle_message", align 4
@capi_ctr_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015kcapi: controller [%03d] \22%s\22 ready.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"capi_ctr_ready\00", [17 x i8] zeroinitializer }, align 32
@capi_ctr_ready._entry_ptr = internal global ptr @capi_ctr_ready._entry, section ".printk_index", align 4
@__kstrtab_capi_ctr_ready = external dso_local constant [0 x i8], align 1
@__kstrtabns_capi_ctr_ready = external dso_local constant [0 x i8], align 1
@__ksymtab_capi_ctr_ready = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @capi_ctr_ready to i32), ptr @__kstrtab_capi_ctr_ready, ptr @__kstrtabns_capi_ctr_ready }, section "___ksymtab+capi_ctr_ready", align 4
@capi_ctr_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\015kcapi: controller [%03d] down.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"capi_ctr_down\00", [18 x i8] zeroinitializer }, align 32
@capi_ctr_down._entry_ptr = internal global ptr @capi_ctr_down._entry, section ".printk_index", align 4
@__kstrtab_capi_ctr_down = external dso_local constant [0 x i8], align 1
@__kstrtabns_capi_ctr_down = external dso_local constant [0 x i8], align 1
@__ksymtab_capi_ctr_down = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @capi_ctr_down to i32), ptr @__kstrtab_capi_ctr_down, ptr @__kstrtabns_capi_ctr_down }, section "___ksymtab+capi_ctr_down", align 4
@capi_controller = dso_local global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@attach_capi_ctr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013kcapi: out of controller slots\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"attach_capi_ctr\00", [16 x i8] zeroinitializer }, align 32
@attach_capi_ctr._entry_ptr = internal global ptr @attach_capi_ctr._entry, section ".printk_index", align 4
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"capi/controllers/%d\00", [44 x i8] zeroinitializer }, align 32
@ncontrollers = internal global { i32, [28 x i8] } zeroinitializer, align 32
@attach_capi_ctr._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.28, ptr @.str.4, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015kcapi: controller [%03d]: %s attached\0A\00", [55 x i8] zeroinitializer }, align 32
@attach_capi_ctr._entry_ptr.32 = internal global ptr @attach_capi_ctr._entry.30, section ".printk_index", align 4
@__kstrtab_attach_capi_ctr = external dso_local constant [0 x i8], align 1
@__kstrtabns_attach_capi_ctr = external dso_local constant [0 x i8], align 1
@__ksymtab_attach_capi_ctr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @attach_capi_ctr to i32), ptr @__kstrtab_attach_capi_ctr, ptr @__kstrtabns_attach_capi_ctr }, section "___ksymtab+attach_capi_ctr", align 4
@detach_capi_ctr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015kcapi: controller [%03d]: %s unregistered\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"detach_capi_ctr\00", [16 x i8] zeroinitializer }, align 32
@detach_capi_ctr._entry_ptr = internal global ptr @detach_capi_ctr._entry, section ".printk_index", align 4
@__kstrtab_detach_capi_ctr = external dso_local constant [0 x i8], align 1
@__kstrtabns_detach_capi_ctr = external dso_local constant [0 x i8], align 1
@__ksymtab_detach_capi_ctr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @detach_capi_ctr to i32), ptr @__kstrtab_detach_capi_ctr, ptr @__kstrtabns_detach_capi_ctr }, section "___ksymtab+detach_capi_ctr", align 4
@capi20_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ap->recv_mtx\00", [18 x i8] zeroinitializer }, align 32
@capi20_register.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&ap->recv_work)\00", [62 x i8] zeroinitializer }, align 32
@capi_applications = dso_local global { [240 x ptr], [224 x i8] } zeroinitializer, align 32
@capi20_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017kcapi: appl %d up\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"capi20_register\00", [16 x i8] zeroinitializer }, align 32
@capi20_register._entry_ptr = internal global ptr @capi20_register._entry, section ".printk_index", align 4
@capi20_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 636, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017kcapi: appl %d down\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"capi20_release\00", [17 x i8] zeroinitializer }, align 32
@capi20_release._entry_ptr = internal global ptr @capi20_release._entry, section ".printk_index", align 4
@capi20_put_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017kcapi: put [%03d] id#%d %s len=%u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"capi20_put_message\00", [45 x i8] zeroinitializer }, align 32
@capi20_put_message._entry_ptr = internal global ptr @capi20_put_message._entry, section ".printk_index", align 4
@capi20_put_message._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.4, i32 706, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017kcapi: put [%03d] %s\0A\00", [40 x i8] zeroinitializer }, align 32
@capi20_put_message._entry_ptr.46 = internal global ptr @capi20_put_message._entry.44, section ".printk_index", align 4
@capi20_put_message._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.4, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017kcapi: put [%03d] id#%d %s len=%u cannot trace\0A\00", [46 x i8] zeroinitializer }, align 32
@capi20_put_message._entry_ptr.49 = internal global ptr @capi20_put_message._entry.47, section ".printk_index", align 4
@capi_manufakturer = internal global { [64 x i8], [32 x i8] } { [64 x i8] c"AVM Berlin\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer }, align 32
@driver_version = internal constant { %struct.capi_version, [16 x i8] } { %struct.capi_version { i32 2, i32 0, i32 1, i32 16 }, [16 x i8] zeroinitializer }, align 32
@driver_serial = internal global { [8 x i8], [24 x i8] } { [8 x i8] c"0004711\00", [24 x i8] zeroinitializer }, align 32
@capi20_manufacturer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.4, i32 879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016kcapi: contr [%03d] set trace=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"capi20_manufacturer\00", [44 x i8] zeroinitializer }, align 32
@capi20_manufacturer._entry_ptr = internal global ptr @capi20_manufacturer._entry, section ".printk_index", align 4
@capi20_manufacturer._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.4, i32 891, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013kcapi: manufacturer command %lu unknown.\0A\00", [52 x i8] zeroinitializer }, align 32
@capi20_manufacturer._entry_ptr.54 = internal global ptr @capi20_manufacturer._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"kcapi\00", [26 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@get_capi_appl_by_nr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.58 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.59 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@notify_push.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&event->work)\00", [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@notify_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.4, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017kcapi: notify up contr %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"notify_up\00", [22 x i8] zeroinitializer }, align 32
@notify_up._entry_ptr = internal global ptr @notify_up._entry, section ".printk_index", align 4
@notify_up._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.4, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014%s: invalid contr %d\0A\00", [40 x i8] zeroinitializer }, align 32
@notify_up._entry_ptr.65 = internal global ptr @notify_up._entry.63, section ".printk_index", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@notify_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.4, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017kcapi: notify down contr %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"notify_down\00", [20 x i8] zeroinitializer }, align 32
@notify_down._entry_ptr = internal global ptr @notify_down._entry, section ".printk_index", align 4
@notify_down._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.67, ptr @.str.4, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@notify_down._entry_ptr.69 = internal global ptr @notify_down._entry.68, section ".printk_index", align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@register_appl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.4, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s: cannot get controller resources\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"register_appl\00", [18 x i8] zeroinitializer }, align 32
@register_appl._entry_ptr = internal global ptr @register_appl._entry, section ".printk_index", align 4
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 8, i64 65, i64 128, i64 130, i64 131, i64 132, i64 134, i64 135, i64 136, i64 255]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.77 = private unnamed_addr constant [13 x i8] c"showcapimsgs\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 35, i32 12 }
@___asan_gen_.83 = private unnamed_addr constant [21 x i8] c"capi_controller_lock\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 57, i32 1 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 312, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 316, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 335, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 342, i32 5 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 346, i32 5 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 360, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 364, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant [9 x i8] c"kcapi_wq\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 36, i32 33 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 390, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 408, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [16 x i8] c"capi_controller\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 56, i32 18 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 437, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 451, i32 23 }
@___asan_gen_.173 = private unnamed_addr constant [13 x i8] c"ncontrollers\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 61, i32 12 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 459, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 498, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 565, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 567, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant [18 x i8] c"capi_applications\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 59, i32 21 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 594, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 636, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 696, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 704, i32 5 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 709, i32 5 }
@___asan_gen_.245 = private unnamed_addr constant [18 x i8] c"capi_manufakturer\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 52, i32 13 }
@___asan_gen_.248 = private unnamed_addr constant [15 x i8] c"driver_version\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 50, i32 34 }
@___asan_gen_.251 = private unnamed_addr constant [14 x i8] c"driver_serial\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 51, i32 13 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 878, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 890, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 910, i32 29 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 695, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 104, i32 9 }
@___asan_gen_.282 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 723, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 261, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 176, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 191, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 226, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 232, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1984, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.330 = private constant [29 x i8] c"../drivers/isdn/capi/kcapi.c\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 154, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.333 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.333, i32 156, i32 2 }
@llvm.compiler.used = appending global [117 x ptr] [ptr @__UNIQUE_ID_showcapimsgstype275, ptr @__ksymtab_attach_capi_ctr, ptr @__ksymtab_capi_ctr_down, ptr @__ksymtab_capi_ctr_handle_message, ptr @__ksymtab_capi_ctr_ready, ptr @__ksymtab_detach_capi_ctr, ptr @__param_showcapimsgs, ptr @attach_capi_ctr._entry, ptr @attach_capi_ctr._entry.30, ptr @attach_capi_ctr._entry_ptr, ptr @attach_capi_ctr._entry_ptr.32, ptr @capi20_manufacturer._entry, ptr @capi20_manufacturer._entry.52, ptr @capi20_manufacturer._entry_ptr, ptr @capi20_manufacturer._entry_ptr.54, ptr @capi20_put_message._entry, ptr @capi20_put_message._entry.44, ptr @capi20_put_message._entry.47, ptr @capi20_put_message._entry_ptr, ptr @capi20_put_message._entry_ptr.46, ptr @capi20_put_message._entry_ptr.49, ptr @capi20_register._entry, ptr @capi20_register._entry_ptr, ptr @capi20_release._entry, ptr @capi20_release._entry_ptr, ptr @capi_ctr_down._entry, ptr @capi_ctr_down._entry_ptr, ptr @capi_ctr_handle_message._entry, ptr @capi_ctr_handle_message._entry.11, ptr @capi_ctr_handle_message._entry.14, ptr @capi_ctr_handle_message._entry.17, ptr @capi_ctr_handle_message._entry.20, ptr @capi_ctr_handle_message._entry.5, ptr @capi_ctr_handle_message._entry.8, ptr @capi_ctr_handle_message._entry_ptr, ptr @capi_ctr_handle_message._entry_ptr.10, ptr @capi_ctr_handle_message._entry_ptr.13, ptr @capi_ctr_handle_message._entry_ptr.16, ptr @capi_ctr_handle_message._entry_ptr.19, ptr @capi_ctr_handle_message._entry_ptr.22, ptr @capi_ctr_handle_message._entry_ptr.7, ptr @capi_ctr_ready._entry, ptr @capi_ctr_ready._entry_ptr, ptr @detach_capi_ctr._entry, ptr @detach_capi_ctr._entry_ptr, ptr @notify_down._entry, ptr @notify_down._entry.68, ptr @notify_down._entry_ptr, ptr @notify_down._entry_ptr.69, ptr @notify_up._entry, ptr @notify_up._entry.63, ptr @notify_up._entry_ptr, ptr @notify_up._entry_ptr.65, ptr @register_appl._entry, ptr @register_appl._entry_ptr, ptr @showcapimsgs, ptr @.str, ptr @capi_controller_lock, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @kcapi_wq, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @capi_controller, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @ncontrollers, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @capi20_register.__key, ptr @.str.35, ptr @capi20_register.__key.36, ptr @.str.37, ptr @capi_applications, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @capi_manufakturer, ptr @driver_version, ptr @driver_serial, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @notify_push.__key, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @skb_queue_head_init.__key, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.75], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @showcapimsgs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi_controller_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi_ctr_handle_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi_ctr_handle_message._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi_ctr_handle_message._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi_ctr_handle_message._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi_ctr_handle_message._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi_ctr_handle_message._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi_ctr_handle_message._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kcapi_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi_ctr_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi_ctr_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi_controller to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attach_capi_ctr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncontrollers to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attach_capi_ctr._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detach_capi_ctr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi20_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi20_register.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi_applications to i32), i32 960, i32 1184, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi20_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi20_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi20_put_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi20_put_message._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi20_put_message._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi_manufakturer to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_version to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_serial to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi20_manufacturer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capi20_manufacturer._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @notify_push.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @notify_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @notify_up._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @notify_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @notify_down._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_appl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @capi_ctr_handle_message(ptr nocapture noundef %ctr, i16 zeroext %appl, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.capi_ctr, ptr %ctr, i32 0, i32 20
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %1)
  %cmp.not = icmp eq i16 %1, 3
  %data11 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data11, align 4
  br i1 %cmp.not, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call ptr @capi_message2str(ptr noundef %3) #11
  %tobool.not = icmp eq ptr %call, null
  %cnr8 = getelementptr inbounds %struct.capi_ctr, ptr %ctr, i32 0, i32 19
  %4 = ptrtoint ptr %cnr8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cnr8, align 4
  br i1 %tobool.not, label %do.end6, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %5, ptr noundef %7) #14
  tail call void @cdebbuf_free(ptr noundef nonnull %call) #11
  br label %error

do.end6:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %5) #14
  br label %error

if.end10:                                         ; preds = %entry
  %arrayidx = getelementptr i8, ptr %3, i32 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %arrayidx13 = getelementptr i8, ptr %3, i32 5
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -122, i8 %9)
  %cmp15 = icmp eq i8 %9, -122
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %11)
  %cmp18 = icmp eq i8 %11, -126
  %or.cond = select i1 %cmp15, i1 %cmp18, i1 false
  br i1 %or.cond, label %if.then20, label %if.end32

if.then20:                                        ; preds = %if.end10
  %nrecvdatapkt = getelementptr inbounds %struct.capi_ctr, ptr %ctr, i32 0, i32 16
  %12 = ptrtoint ptr %nrecvdatapkt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nrecvdatapkt, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %nrecvdatapkt, align 4
  %traceflag = getelementptr inbounds %struct.capi_ctr, ptr %ctr, i32 0, i32 22
  %14 = ptrtoint ptr %traceflag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %traceflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp21 = icmp slt i32 %15, 3
  br i1 %cmp21, label %if.then20.if.end101_crit_edge, label %if.then20.if.then37_crit_edge

if.then20.if.then37_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then37

if.then20.if.end101_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

if.end32:                                         ; preds = %if.end10
  %nrecvctlpkt = getelementptr inbounds %struct.capi_ctr, ptr %ctr, i32 0, i32 15
  %16 = ptrtoint ptr %nrecvctlpkt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nrecvctlpkt, align 4
  %inc26 = add i32 %17, 1
  store i32 %inc26, ptr %nrecvctlpkt, align 4
  %traceflag27 = getelementptr inbounds %struct.capi_ctr, ptr %ctr, i32 0, i32 22
  %18 = ptrtoint ptr %traceflag27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %traceflag27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool28.not = icmp eq i32 %19, 0
  br i1 %tobool28.not, label %if.end32.if.end101_crit_edge, label %if.end32.if.then37_crit_edge

if.end32.if.then37_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then37

if.end32.if.end101_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

if.then37:                                        ; preds = %if.end32.if.then37_crit_edge, %if.then20.if.then37_crit_edge
  %traceflag33 = getelementptr inbounds %struct.capi_ctr, ptr %ctr, i32 0, i32 22
  %20 = ptrtoint ptr %traceflag33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %traceflag33, align 4
  %and = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %if.else63, label %do.end43

do.end43:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  %cnr45 = getelementptr inbounds %struct.capi_ctr, ptr %ctr, i32 0, i32 19
  %22 = ptrtoint ptr %cnr45 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cnr45, align 4
  %24 = ptrtoint ptr %data11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data11, align 4
  %arrayidx47 = getelementptr i8, ptr %25, i32 2
  %26 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx47, align 1
  %conv48 = zext i8 %27 to i32
  %arrayidx50 = getelementptr i8, ptr %25, i32 3
  %28 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %29 to i32
  %shl = shl nuw nsw i32 %conv51, 8
  %or52 = or i32 %shl, %conv48
  %call53 = tail call ptr @capi_cmd2str(i8 noundef zeroext %9, i8 noundef zeroext %11) #11
  %30 = ptrtoint ptr %data11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data11, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %conv56 = zext i8 %33 to i32
  %arrayidx58 = getelementptr i8, ptr %31, i32 1
  %34 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %35 to i32
  %shl60 = shl nuw nsw i32 %conv59, 8
  %or61 = or i32 %shl60, %conv56
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %23, i32 noundef %or52, ptr noundef %call53, i32 noundef %or61) #14
  br label %if.end101

if.else63:                                        ; preds = %if.then37
  %36 = ptrtoint ptr %data11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data11, align 4
  %call65 = tail call ptr @capi_message2str(ptr noundef %37) #11
  %tobool66.not = icmp eq ptr %call65, null
  %cnr80 = getelementptr inbounds %struct.capi_ctr, ptr %ctr, i32 0, i32 19
  %38 = ptrtoint ptr %cnr80 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cnr80, align 4
  br i1 %tobool66.not, label %do.end78, label %do.end70

do.end70:                                         ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %call65 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call65, align 4
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %39, ptr noundef %41) #14
  tail call void @cdebbuf_free(ptr noundef nonnull %call65) #11
  br label %if.end101

do.end78:                                         ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %data11 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data11, align 4
  %arrayidx82 = getelementptr i8, ptr %43, i32 2
  %44 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %45 to i32
  %arrayidx85 = getelementptr i8, ptr %43, i32 3
  %46 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %47 to i32
  %shl87 = shl nuw nsw i32 %conv86, 8
  %or88 = or i32 %shl87, %conv83
  %call89 = tail call ptr @capi_cmd2str(i8 noundef zeroext %9, i8 noundef zeroext %11) #11
  %48 = ptrtoint ptr %data11 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data11, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 1
  %conv92 = zext i8 %51 to i32
  %arrayidx94 = getelementptr i8, ptr %49, i32 1
  %52 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx94, align 1
  %conv95 = zext i8 %53 to i32
  %shl96 = shl nuw nsw i32 %conv95, 8
  %or97 = or i32 %shl96, %conv92
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %39, i32 noundef %or88, ptr noundef %call89, i32 noundef %or97) #14
  br label %if.end101

if.end101:                                        ; preds = %do.end78, %do.end70, %do.end43, %if.end32.if.end101_crit_edge, %if.then20.if.end101_crit_edge
  %54 = tail call i32 @llvm.read_register.i32(metadata !175) #11
  %and.i.i.i.i.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %57, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !185
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.end101.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end101.rcu_read_lock.exit_crit_edge:           ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end101
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.56, i32 noundef 696, ptr noundef nonnull @.str.57) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end101.rcu_read_lock.exit_crit_edge
  %58 = ptrtoint ptr %data11 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data11, align 4
  %arrayidx103 = getelementptr i8, ptr %59, i32 2
  %60 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx103, align 1
  %conv104 = zext i8 %61 to i16
  %arrayidx106 = getelementptr i8, ptr %59, i32 3
  %62 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx106, align 1
  %conv107 = zext i8 %63 to i16
  %shl108 = shl nuw i16 %conv107, 8
  %or109 = or i16 %shl108, %conv104
  %64 = add i16 %or109, -241
  call void @__sanitizer_cov_trace_const_cmp2(i16 -240, i16 %64)
  %65 = icmp ult i16 %64, -240
  br i1 %65, label %rcu_read_lock.exit.if.then113_crit_edge, label %if.end.i

rcu_read_lock.exit.if.then113_crit_edge:          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then113

if.end.i:                                         ; preds = %rcu_read_lock.exit
  %conv.i = zext i16 %or109 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx.i = getelementptr [240 x ptr], ptr @capi_applications, i32 0, i32 %sub.i
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %arrayidx.i, align 4
  %call.i205 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %tobool.not.i206 = icmp eq i32 %call.i205, 0
  br i1 %tobool.not.i206, label %land.lhs.true.i207, label %if.end.i.get_capi_appl_by_nr.exit_crit_edge

if.end.i.get_capi_appl_by_nr.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_capi_appl_by_nr.exit

land.lhs.true.i207:                               ; preds = %if.end.i
  %call8.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i207.get_capi_appl_by_nr.exit_crit_edge, label %land.lhs.true10.i

land.lhs.true.i207.get_capi_appl_by_nr.exit_crit_edge: ; preds = %land.lhs.true.i207
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_capi_appl_by_nr.exit

land.lhs.true10.i:                                ; preds = %land.lhs.true.i207
  %.b19.i = load i1, ptr @get_capi_appl_by_nr.__warned, align 1
  br i1 %.b19.i, label %land.lhs.true10.i.get_capi_appl_by_nr.exit_crit_edge, label %if.then12.i

land.lhs.true10.i.get_capi_appl_by_nr.exit_crit_edge: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_capi_appl_by_nr.exit

if.then12.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @get_capi_appl_by_nr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 104, ptr noundef nonnull @.str.58) #11
  br label %get_capi_appl_by_nr.exit

get_capi_appl_by_nr.exit:                         ; preds = %if.then12.i, %land.lhs.true10.i.get_capi_appl_by_nr.exit_crit_edge, %land.lhs.true.i207.get_capi_appl_by_nr.exit_crit_edge, %if.end.i.get_capi_appl_by_nr.exit_crit_edge
  %tobool112.not = icmp eq ptr %67, null
  br i1 %tobool112.not, label %get_capi_appl_by_nr.exit.if.then113_crit_edge, label %if.end148

get_capi_appl_by_nr.exit.if.then113_crit_edge:    ; preds = %get_capi_appl_by_nr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then113

if.then113:                                       ; preds = %get_capi_appl_by_nr.exit.if.then113_crit_edge, %rcu_read_lock.exit.if.then113_crit_edge
  %call.i208 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i208, label %if.then113.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i211

if.then113.rcu_read_unlock.exit_crit_edge:        ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i211:                               ; preds = %if.then113
  %call1.i209 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i209)
  %tobool.not.i210 = icmp eq i32 %call1.i209, 0
  br i1 %tobool.not.i210, label %land.lhs.true.i211.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i213

land.lhs.true.i211.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i211
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i213:                              ; preds = %land.lhs.true.i211
  %.b4.i212 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i212, label %land.lhs.true2.i213.rcu_read_unlock.exit_crit_edge, label %if.then.i214

land.lhs.true2.i213.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i213
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i214:                                     ; preds = %land.lhs.true2.i213
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.56, i32 noundef 724, ptr noundef nonnull @.str.59) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i214, %land.lhs.true2.i213.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i211.rcu_read_unlock.exit_crit_edge, %if.then113.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !186
  %68 = tail call i32 @llvm.read_register.i32(metadata !175) #11
  %and.i.i.i.i.i215 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i.i215 to ptr
  %preempt_count.i.i.i.i216 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %preempt_count.i.i.i.i216 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %preempt_count.i.i.i.i216, align 4
  %sub.i.i.i = add i32 %71, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i216, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %72 = ptrtoint ptr %data11 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data11, align 4
  %call115 = tail call ptr @capi_message2str(ptr noundef %73) #11
  %tobool116.not = icmp eq ptr %call115, null
  %74 = ptrtoint ptr %data11 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data11, align 4
  %arrayidx138 = getelementptr i8, ptr %75, i32 2
  %76 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx138, align 1
  %conv139 = zext i8 %77 to i32
  %arrayidx141 = getelementptr i8, ptr %75, i32 3
  %78 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx141, align 1
  %conv142 = zext i8 %79 to i32
  %shl143 = shl nuw nsw i32 %conv142, 8
  %or144 = or i32 %shl143, %conv139
  br i1 %tobool116.not, label %do.end135, label %do.end120

do.end120:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %call115 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call115, align 4
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %or144, ptr noundef %81) #14
  tail call void @cdebbuf_free(ptr noundef nonnull %call115) #11
  br label %error

do.end135:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call145 = tail call ptr @capi_cmd2str(i8 noundef zeroext %9, i8 noundef zeroext %11) #11
  %call146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %or144, ptr noundef %call145) #14
  br label %error

if.end148:                                        ; preds = %get_capi_appl_by_nr.exit
  %recv_queue = getelementptr inbounds %struct.capi20_appl, ptr %67, i32 0, i32 9
  tail call void @skb_queue_tail(ptr noundef %recv_queue, ptr noundef %skb) #11
  %82 = load ptr, ptr @kcapi_wq, align 4
  %recv_work = getelementptr inbounds %struct.capi20_appl, ptr %67, i32 0, i32 10
  %call.i217 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %82, ptr noundef %recv_work) #11
  %call.i218 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i218, label %if.end148.rcu_read_unlock.exit228_crit_edge, label %land.lhs.true.i221

if.end148.rcu_read_unlock.exit228_crit_edge:      ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit228

land.lhs.true.i221:                               ; preds = %if.end148
  %call1.i219 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i219)
  %tobool.not.i220 = icmp eq i32 %call1.i219, 0
  br i1 %tobool.not.i220, label %land.lhs.true.i221.rcu_read_unlock.exit228_crit_edge, label %land.lhs.true2.i223

land.lhs.true.i221.rcu_read_unlock.exit228_crit_edge: ; preds = %land.lhs.true.i221
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit228

land.lhs.true2.i223:                              ; preds = %land.lhs.true.i221
  %.b4.i222 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i222, label %land.lhs.true2.i223.rcu_read_unlock.exit228_crit_edge, label %if.then.i224

land.lhs.true2.i223.rcu_read_unlock.exit228_crit_edge: ; preds = %land.lhs.true2.i223
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit228

if.then.i224:                                     ; preds = %land.lhs.true2.i223
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.56, i32 noundef 724, ptr noundef nonnull @.str.59) #11
  br label %rcu_read_unlock.exit228

rcu_read_unlock.exit228:                          ; preds = %if.then.i224, %land.lhs.true2.i223.rcu_read_unlock.exit228_crit_edge, %land.lhs.true.i221.rcu_read_unlock.exit228_crit_edge, %if.end148.rcu_read_unlock.exit228_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !186
  %83 = tail call i32 @llvm.read_register.i32(metadata !175) #11
  %and.i.i.i.i.i225 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i.i.i225 to ptr
  %preempt_count.i.i.i.i226 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %preempt_count.i.i.i.i226 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %preempt_count.i.i.i.i226, align 4
  %sub.i.i.i227 = add i32 %86, -1
  store volatile i32 %sub.i.i.i227, ptr %preempt_count.i.i.i.i226, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup

error:                                            ; preds = %do.end135, %do.end120, %do.end6, %do.end
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %rcu_read_unlock.exit228
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @capi_message2str(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdebbuf_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @capi_cmd2str(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @capi_ctr_ready(ptr noundef %ctr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cnr = getelementptr inbounds %struct.capi_ctr, ptr %ctr, i32 0, i32 19
  %0 = ptrtoint ptr %cnr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cnr, align 4
  %name = getelementptr inbounds %struct.capi_ctr, ptr %ctr, i32 0, i32 2
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %1, ptr noundef %name) #14
  %2 = ptrtoint ptr %cnr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cnr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2592, i32 noundef 52) #15
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.notify_push.exit_crit_edge, label %do.body.i

entry.notify_push.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %notify_push.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #11
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.60, ptr noundef nonnull @notify_push.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry4.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry4.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @do_notify_work, ptr %func.i, align 4
  %type.i = getelementptr inbounds %struct.capictr_event, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %type.i, align 4
  %controller6.i = getelementptr inbounds %struct.capictr_event, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %controller6.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %3, ptr %controller6.i, align 8
  %11 = load ptr, ptr @kcapi_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef nonnull %call7.i.i) #11
  br label %notify_push.exit

notify_push.exit:                                 ; preds = %do.body.i, %entry.notify_push.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @capi_ctr_down(ptr nocapture noundef readonly %ctr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cnr = getelementptr inbounds %struct.capi_ctr, ptr %ctr, i32 0, i32 19
  %0 = ptrtoint ptr %cnr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cnr, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %1) #14
  %2 = ptrtoint ptr %cnr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cnr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2592, i32 noundef 52) #15
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.notify_push.exit_crit_edge, label %do.body.i

entry.notify_push.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %notify_push.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #11
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.60, ptr noundef nonnull @notify_push.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry4.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry4.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @do_notify_work, ptr %func.i, align 4
  %type.i = getelementptr inbounds %struct.capictr_event, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %type.i, align 4
  %controller6.i = getelementptr inbounds %struct.capictr_event, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %controller6.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %3, ptr %controller6.i, align 8
  %11 = load ptr, ptr @kcapi_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef nonnull %call7.i.i) #11
  br label %notify_push.exit

notify_push.exit:                                 ; preds = %do.body.i, %entry.notify_push.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @attach_capi_ctr(ptr noundef %ctr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @capi_controller_lock, i32 noundef 0) #11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.042 = phi i32 [ 0, %entry ], [ %.pre, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @capi_controller, i32 0, i32 %i.042
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  %.pre = add nuw i32 %i.042, 1
  br i1 %tobool.not, label %if.end3, label %for.inc

for.inc:                                          ; preds = %for.body
  %exitcond.not = icmp eq i32 %.pre, 32
  br i1 %exitcond.not, label %if.then2, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.then2:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef nonnull @capi_controller_lock) #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #14
  br label %cleanup

if.end3:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ctr, ptr %arrayidx, align 4
  %nrecvctlpkt = getelementptr inbounds %struct.capi_ctr, ptr %ctr, i32 0, i32 15
  %cnr = getelementptr inbounds %struct.capi_ctr, ptr %ctr, i32 0, i32 19
  %3 = call ptr @memset(ptr %nrecvctlpkt, i32 0, i32 16)
  %4 = ptrtoint ptr %cnr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.pre, ptr %cnr, align 4
  %state = getelementptr inbounds %struct.capi_ctr, ptr %ctr, i32 0, i32 20
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %state, align 4
  %blocked = getelementptr inbounds %struct.capi_ctr, ptr %ctr, i32 0, i32 21
  %6 = ptrtoint ptr %blocked to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %blocked, align 4
  %7 = load i32, ptr @showcapimsgs, align 4
  %traceflag = getelementptr inbounds %struct.capi_ctr, ptr %ctr, i32 0, i32 22
  %8 = ptrtoint ptr %traceflag to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %traceflag, align 4
  %procfn = getelementptr inbounds %struct.capi_ctr, ptr %ctr, i32 0, i32 24
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %procfn, ptr noundef nonnull @.str.29, i32 noundef %.pre)
  %proc_show = getelementptr inbounds %struct.capi_ctr, ptr %ctr, i32 0, i32 10
  %9 = ptrtoint ptr %proc_show to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %proc_show, align 4
  %call9 = tail call ptr @proc_create_single_data(ptr noundef %procfn, i16 noundef zeroext 0, ptr noundef null, ptr noundef %10, ptr noundef %ctr) #11
  %procent = getelementptr inbounds %struct.capi_ctr, ptr %ctr, i32 0, i32 23
  %11 = ptrtoint ptr %procent to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9, ptr %procent, align 4
  %12 = load i32, ptr @ncontrollers, align 4
  %inc10 = add i32 %12, 1
  store i32 %inc10, ptr @ncontrollers, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @capi_controller_lock) #11
  %13 = ptrtoint ptr %cnr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cnr, align 4
  %name = getelementptr inbounds %struct.capi_ctr, ptr %ctr, i32 0, i32 2
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %14, ptr noundef %name) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2
  %retval.0 = phi i32 [ -16, %if.then2 ], [ 0, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @detach_capi_ctr(ptr noundef %ctr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @capi_controller_lock, i32 noundef 0) #11
  %state.i = getelementptr inbounds %struct.capi_ctr, ptr %ctr, i32 0, i32 20
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %switch.i = icmp ult i16 %1, 2
  br i1 %switch.i, label %entry.ctr_down.exit_crit_edge, label %if.end.i

entry.ctr_down.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ctr_down.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %state.i, align 4
  %manu.i = getelementptr inbounds %struct.capi_ctr, ptr %ctr, i32 0, i32 11
  %3 = call ptr @memset(ptr %manu.i, i32 0, i32 152)
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i
  %indvars.iv.i = phi i32 [ 1, %if.end.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %for.body.i.__get_capi_appl_by_nr.exit.i_crit_edge, label %land.rhs.i.i

for.body.i.__get_capi_appl_by_nr.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__get_capi_appl_by_nr.exit.i

land.rhs.i.i:                                     ; preds = %for.body.i
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @capi_controller_lock, i32 0, i32 5), i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.__get_capi_appl_by_nr.exit.i_crit_edge, !prof !187

land.rhs.i.i.__get_capi_appl_by_nr.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__get_capi_appl_by_nr.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 91, i32 noundef 9, ptr noundef null) #11
  br label %__get_capi_appl_by_nr.exit.i

__get_capi_appl_by_nr.exit.i:                     ; preds = %do.end.i.i, %land.rhs.i.i.__get_capi_appl_by_nr.exit.i_crit_edge, %for.body.i.__get_capi_appl_by_nr.exit.i_crit_edge
  %sub.i.i = add nsw i32 %indvars.iv.i, -1
  %arrayidx.i.i = getelementptr [240 x ptr], ptr @capi_applications, i32 0, i32 %sub.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %__get_capi_appl_by_nr.exit.i.for.inc.i_crit_edge, label %if.then12.i

__get_capi_appl_by_nr.exit.i.for.inc.i_crit_edge: ; preds = %__get_capi_appl_by_nr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then12.i:                                      ; preds = %__get_capi_appl_by_nr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %ctr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctr, align 4
  tail call void @module_put(ptr noundef %8) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then12.i, %__get_capi_appl_by_nr.exit.i.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 241
  br i1 %exitcond.not.i, label %for.inc.i.ctr_down.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.ctr_down.exit_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ctr_down.exit

ctr_down.exit:                                    ; preds = %for.inc.i.ctr_down.exit_crit_edge, %entry.ctr_down.exit_crit_edge
  %cnr = getelementptr inbounds %struct.capi_ctr, ptr %ctr, i32 0, i32 19
  %9 = ptrtoint ptr %cnr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cnr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp slt i32 %10, 1
  br i1 %cmp, label %ctr_down.exit.unlock_out_crit_edge, label %lor.lhs.false

ctr_down.exit.unlock_out_crit_edge:               ; preds = %ctr_down.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock_out

lor.lhs.false:                                    ; preds = %ctr_down.exit
  %sub = add nsw i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %sub)
  %cmp2 = icmp ugt i32 %sub, 31
  br i1 %cmp2, label %lor.lhs.false.unlock_out_crit_edge, label %if.end

lor.lhs.false.unlock_out_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock_out

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr [32 x ptr], ptr @capi_controller, i32 0, i32 %sub
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %cmp5.not = icmp eq ptr %12, %ctr
  br i1 %cmp5.not, label %if.end7, label %if.end.unlock_out_crit_edge

if.end.unlock_out_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock_out

if.end7:                                          ; preds = %if.end
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx, align 4
  %14 = load i32, ptr @ncontrollers, align 4
  %dec = add i32 %14, -1
  store i32 %dec, ptr @ncontrollers, align 4
  %procent = getelementptr inbounds %struct.capi_ctr, ptr %ctr, i32 0, i32 23
  %15 = ptrtoint ptr %procent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %procent, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %if.end7.do.end_crit_edge, label %if.then11

if.end7.do.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %procfn = getelementptr inbounds %struct.capi_ctr, ptr %ctr, i32 0, i32 24
  tail call void @remove_proc_entry(ptr noundef %procfn, ptr noundef null) #11
  br label %do.end

do.end:                                           ; preds = %if.then11, %if.end7.do.end_crit_edge
  %17 = ptrtoint ptr %cnr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cnr, align 4
  %name = getelementptr inbounds %struct.capi_ctr, ptr %ctr, i32 0, i32 2
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %18, ptr noundef %name) #14
  br label %unlock_out

unlock_out:                                       ; preds = %do.end, %if.end.unlock_out_crit_edge, %lor.lhs.false.unlock_out_crit_edge, %ctr_down.exit.unlock_out_crit_edge
  %err.0 = phi i32 [ 0, %do.end ], [ -22, %lor.lhs.false.unlock_out_crit_edge ], [ -22, %ctr_down.exit.unlock_out_crit_edge ], [ -22, %if.end.unlock_out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @capi_controller_lock) #11
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @capi20_isinstalled() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @capi_controller_lock, i32 noundef 0) #11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @capi_controller, i32 0, i32 %i.07
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %state = getelementptr inbounds %struct.capi_ctr, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %3)
  %cmp2 = icmp eq i16 %3, 3
  br i1 %cmp2, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %ret.0 = phi i16 [ 4105, %for.inc.for.end_crit_edge ], [ 0, %land.lhs.true.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @capi_controller_lock) #11
  ret i16 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @capi20_register(ptr noundef %ap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rparam = getelementptr inbounds %struct.capi20_appl, ptr %ap, i32 0, i32 1
  %datablklen = getelementptr inbounds %struct.capi20_appl, ptr %ap, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %datablklen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %datablklen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %1)
  %cmp = icmp ult i32 %1, 128
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %nrecvctlpkt = getelementptr inbounds %struct.capi20_appl, ptr %ap, i32 0, i32 4
  %recv_mtx = getelementptr inbounds %struct.capi20_appl, ptr %ap, i32 0, i32 8
  %2 = call ptr @memset(ptr %nrecvctlpkt, i32 0, i32 16)
  tail call void @__mutex_init(ptr noundef %recv_mtx, ptr noundef nonnull @.str.35, ptr noundef nonnull @capi20_register.__key) #11
  %recv_queue = getelementptr inbounds %struct.capi20_appl, ptr %ap, i32 0, i32 9
  %lock.i = getelementptr inbounds %struct.capi20_appl, ptr %ap, i32 0, i32 9, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.70, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %3 = ptrtoint ptr %recv_queue to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %recv_queue, ptr %recv_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.capi20_appl, ptr %ap, i32 0, i32 9, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %recv_queue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.capi20_appl, ptr %ap, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %qlen.i.i, align 4
  %recv_work = getelementptr inbounds %struct.capi20_appl, ptr %ap, i32 0, i32 10
  tail call void @__init_work(ptr noundef %recv_work, i32 noundef 0) #11
  %6 = ptrtoint ptr %recv_work to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %recv_work, align 4
  %lockdep_map = getelementptr inbounds %struct.capi20_appl, ptr %ap, i32 0, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.37, ptr noundef nonnull @capi20_register.__key.36, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry5 = getelementptr inbounds %struct.capi20_appl, ptr %ap, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.capi20_appl, ptr %ap, i32 0, i32 10, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.capi20_appl, ptr %ap, i32 0, i32 10, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @recv_handler, ptr %func, align 4
  %release_in_progress = getelementptr inbounds %struct.capi20_appl, ptr %ap, i32 0, i32 11
  %10 = ptrtoint ptr %release_in_progress to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %release_in_progress, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @capi_controller_lock, i32 noundef 0) #11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %indvars.iv = phi i32 [ 1, %if.end ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %sub = add nsw i32 %indvars.iv, -1
  %arrayidx = getelementptr [240 x ptr], ptr @capi_applications, i32 0, i32 %sub
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %cmp12 = icmp eq ptr %12, null
  br i1 %cmp12, label %if.end20, label %for.inc

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 241
  br i1 %exitcond.not, label %if.then19, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.then19:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef nonnull @capi_controller_lock) #11
  br label %cleanup

if.end20:                                         ; preds = %for.body
  %13 = trunc i32 %indvars.iv to i16
  %14 = ptrtoint ptr %ap to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %ap, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ap, ptr %arrayidx, align 4
  br label %for.body28

for.body28:                                       ; preds = %for.inc38.for.body28_crit_edge, %if.end20
  %i.080 = phi i32 [ 0, %if.end20 ], [ %inc39, %for.inc38.for.body28_crit_edge ]
  %arrayidx29 = getelementptr [32 x ptr], ptr @capi_controller, i32 0, i32 %i.080
  %16 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx29, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %for.body28.for.inc38_crit_edge, label %lor.lhs.false

for.body28.for.inc38_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc38

lor.lhs.false:                                    ; preds = %for.body28
  %state = getelementptr inbounds %struct.capi_ctr, ptr %17, i32 0, i32 20
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %19)
  %cmp32.not = icmp eq i16 %19, 3
  br i1 %cmp32.not, label %if.end35, label %lor.lhs.false.for.inc38_crit_edge

lor.lhs.false.for.inc38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc38

if.end35:                                         ; preds = %lor.lhs.false
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %call.i.i = tail call zeroext i1 @try_module_get(ptr noundef %21) #11
  br i1 %call.i.i, label %if.then.i, label %do.end.i

if.then.i:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %register_appl.i = getelementptr inbounds %struct.capi_ctr, ptr %17, i32 0, i32 6
  %22 = ptrtoint ptr %register_appl.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %register_appl.i, align 4
  tail call void %23(ptr noundef nonnull %17, i16 noundef zeroext %13, ptr noundef %rparam) #11
  br label %for.inc38

do.end.i:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72) #14
  br label %for.inc38

for.inc38:                                        ; preds = %do.end.i, %if.then.i, %lor.lhs.false.for.inc38_crit_edge, %for.body28.for.inc38_crit_edge
  %inc39 = add nuw nsw i32 %i.080, 1
  %exitcond83.not = icmp eq i32 %inc39, 32
  br i1 %exitcond83.not, label %for.end40, label %for.inc38.for.body28_crit_edge

for.inc38.for.body28_crit_edge:                   ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body28

for.end40:                                        ; preds = %for.inc38
  tail call void @mutex_unlock(ptr noundef nonnull @capi_controller_lock) #11
  %24 = load i32, ptr @showcapimsgs, align 4
  %and = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %for.end40.cleanup_crit_edge, label %do.end45

for.end40.cleanup_crit_edge:                      ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end45:                                         ; preds = %for.end40
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %indvars.iv) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %for.end40.cleanup_crit_edge, %if.then19, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ 4097, %if.then19 ], [ 4098, %entry.cleanup_crit_edge ], [ 0, %do.end45 ], [ 0, %for.end40.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @recv_handler(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -188
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %release_in_progress = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %release_in_progress to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %release_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %recv_mtx = getelementptr i8, ptr %work, i32 -148
  tail call void @mutex_lock_nested(ptr noundef %recv_mtx, i32 noundef 0) #11
  %recv_queue = getelementptr i8, ptr %work, i32 -56
  %call22 = tail call ptr @skb_dequeue(ptr noundef %recv_queue) #11
  %tobool2.not23 = icmp eq ptr %call22, null
  br i1 %tobool2.not23, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %recv_message = getelementptr i8, ptr %work, i32 -172
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %call24 = phi ptr [ %call22, %while.body.lr.ph ], [ %call, %while.body.while.body_crit_edge ]
  %data = getelementptr inbounds %struct.sk_buff, ptr %call24, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx4 = getelementptr i8, ptr %3, i32 5
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %7 to i32
  %or = or i32 %shl, %conv5
  call void @__sanitizer_cov_trace_const_cmp4(i32 34434, i32 %or)
  %cmp = icmp eq i32 %or, 34434
  %nrecvdatapkt.nrecvctlpkt.v = select i1 %cmp, i32 -160, i32 -164
  %nrecvdatapkt.nrecvctlpkt = getelementptr i8, ptr %work, i32 %nrecvdatapkt.nrecvctlpkt.v
  %8 = ptrtoint ptr %nrecvdatapkt.nrecvctlpkt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nrecvdatapkt.nrecvctlpkt, align 4
  %inc8 = add i32 %9, 1
  store i32 %inc8, ptr %nrecvdatapkt.nrecvctlpkt, align 4
  %10 = ptrtoint ptr %recv_message to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %recv_message, align 4
  tail call void %11(ptr noundef nonnull %add.ptr, ptr noundef nonnull %call24) #11
  %call = tail call ptr @skb_dequeue(ptr noundef %recv_queue) #11
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %recv_mtx) #11
  br label %cleanup

cleanup:                                          ; preds = %while.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @capi20_release(ptr noundef %ap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @capi_controller_lock, i32 noundef 0) #11
  %release_in_progress = getelementptr inbounds %struct.capi20_appl, ptr %ap, i32 0, i32 11
  %0 = ptrtoint ptr %release_in_progress to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %release_in_progress, align 4
  %1 = ptrtoint ptr %ap to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %ap, align 4
  %conv = zext i16 %2 to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr [240 x ptr], ptr @capi_applications, i32 0, i32 %sub
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %arrayidx, align 4
  tail call void @synchronize_rcu() #11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.022 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx2 = getelementptr [32 x ptr], ptr @capi_controller, i32 0, i32 %i.022
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %state = getelementptr inbounds %struct.capi_ctr, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %7)
  %cmp5.not = icmp eq i16 %7, 3
  br i1 %cmp5.not, label %if.end, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %ap to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ap, align 4
  %release_appl.i = getelementptr inbounds %struct.capi_ctr, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %release_appl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %release_appl.i, align 4
  tail call void %11(ptr noundef nonnull %5, i16 noundef zeroext %9) #11
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  tail call void @module_put(ptr noundef %13) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void @mutex_unlock(ptr noundef nonnull @capi_controller_lock) #11
  %14 = load ptr, ptr @kcapi_wq, align 4
  tail call void @flush_workqueue(ptr noundef %14) #11
  %recv_queue = getelementptr inbounds %struct.capi20_appl, ptr %ap, i32 0, i32 9
  tail call void @skb_queue_purge(ptr noundef %recv_queue) #11
  %15 = load i32, ptr @showcapimsgs, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %for.end.if.end13_crit_edge, label %do.end

for.end.if.end13_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %ap to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ap, align 4
  %conv12 = zext i16 %17 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv12) #14
  br label %if.end13

if.end13:                                         ; preds = %do.end, %for.end.if.end13_crit_edge
  ret i16 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @capi20_put_message(ptr nocapture noundef %ap, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ncontrollers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %ap to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %ap, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp1 = icmp eq i16 %2, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %release_in_progress = getelementptr inbounds %struct.capi20_appl, ptr %ap, i32 0, i32 11
  %3 = ptrtoint ptr %release_in_progress to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %release_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %6)
  %cmp5 = icmp ult i32 %6, 12
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %lor.lhs.false7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false7:                                   ; preds = %if.end4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %8, i32 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %10, label %lor.lhs.false7.cleanup_crit_edge [
    i8 1, label %lor.lhs.false7.lor.lhs.false9_crit_edge
    i8 2, label %lor.lhs.false7.lor.lhs.false9_crit_edge185
    i8 3, label %lor.lhs.false7.lor.lhs.false9_crit_edge186
    i8 -125, label %lor.lhs.false7.lor.lhs.false9_crit_edge187
    i8 -126, label %lor.lhs.false7.lor.lhs.false9_crit_edge188
    i8 -120, label %lor.lhs.false7.lor.lhs.false9_crit_edge189
    i8 -122, label %lor.lhs.false7.lor.lhs.false9_crit_edge190
    i8 -124, label %lor.lhs.false7.lor.lhs.false9_crit_edge191
    i8 4, label %lor.lhs.false7.lor.lhs.false9_crit_edge192
    i8 -128, label %lor.lhs.false7.lor.lhs.false9_crit_edge193
    i8 8, label %lor.lhs.false7.lor.lhs.false9_crit_edge194
    i8 5, label %lor.lhs.false7.lor.lhs.false9_crit_edge195
    i8 -1, label %lor.lhs.false7.lor.lhs.false9_crit_edge196
    i8 -121, label %lor.lhs.false7.lor.lhs.false9_crit_edge197
    i8 65, label %lor.lhs.false7.lor.lhs.false9_crit_edge198
  ]

lor.lhs.false7.lor.lhs.false9_crit_edge198:       ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false9

lor.lhs.false7.lor.lhs.false9_crit_edge197:       ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false9

lor.lhs.false7.lor.lhs.false9_crit_edge196:       ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false9

lor.lhs.false7.lor.lhs.false9_crit_edge195:       ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false9

lor.lhs.false7.lor.lhs.false9_crit_edge194:       ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false9

lor.lhs.false7.lor.lhs.false9_crit_edge193:       ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false9

lor.lhs.false7.lor.lhs.false9_crit_edge192:       ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false9

lor.lhs.false7.lor.lhs.false9_crit_edge191:       ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false9

lor.lhs.false7.lor.lhs.false9_crit_edge190:       ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false9

lor.lhs.false7.lor.lhs.false9_crit_edge189:       ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false9

lor.lhs.false7.lor.lhs.false9_crit_edge188:       ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false9

lor.lhs.false7.lor.lhs.false9_crit_edge187:       ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false9

lor.lhs.false7.lor.lhs.false9_crit_edge186:       ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false9

lor.lhs.false7.lor.lhs.false9_crit_edge185:       ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false9

lor.lhs.false7.lor.lhs.false9_crit_edge:          ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false9

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false9:                                   ; preds = %lor.lhs.false7.lor.lhs.false9_crit_edge, %lor.lhs.false7.lor.lhs.false9_crit_edge185, %lor.lhs.false7.lor.lhs.false9_crit_edge186, %lor.lhs.false7.lor.lhs.false9_crit_edge187, %lor.lhs.false7.lor.lhs.false9_crit_edge188, %lor.lhs.false7.lor.lhs.false9_crit_edge189, %lor.lhs.false7.lor.lhs.false9_crit_edge190, %lor.lhs.false7.lor.lhs.false9_crit_edge191, %lor.lhs.false7.lor.lhs.false9_crit_edge192, %lor.lhs.false7.lor.lhs.false9_crit_edge193, %lor.lhs.false7.lor.lhs.false9_crit_edge194, %lor.lhs.false7.lor.lhs.false9_crit_edge195, %lor.lhs.false7.lor.lhs.false9_crit_edge196, %lor.lhs.false7.lor.lhs.false9_crit_edge197, %lor.lhs.false7.lor.lhs.false9_crit_edge198
  %arrayidx11 = getelementptr i8, ptr %8, i32 5
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -125, i8 %13)
  %switch.i = icmp sgt i8 %13, -125
  br i1 %switch.i, label %lor.lhs.false9.cleanup_crit_edge, label %if.end15

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false9
  %arrayidx17 = getelementptr i8, ptr %8, i32 8
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx17, align 1
  %16 = and i8 %15, 127
  %conv19 = zext i8 %16 to i16
  %17 = add nsw i16 %conv19, -33
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32, i16 %17)
  %18 = icmp ult i16 %17, -32
  br i1 %18, label %if.end15.cleanup_crit_edge, label %get_capi_ctr_by_nr.exit

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

get_capi_ctr_by_nr.exit:                          ; preds = %if.end15
  %conv.i = zext i8 %16 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx.i = getelementptr [32 x ptr], ptr @capi_controller, i32 0, i32 %sub.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %tobool21.not = icmp eq ptr %20, null
  br i1 %tobool21.not, label %get_capi_ctr_by_nr.exit.cleanup_crit_edge, label %lor.lhs.false22

get_capi_ctr_by_nr.exit.cleanup_crit_edge:        ; preds = %get_capi_ctr_by_nr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false22:                                  ; preds = %get_capi_ctr_by_nr.exit
  %state = getelementptr inbounds %struct.capi_ctr, ptr %20, i32 0, i32 20
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %22)
  %cmp24.not = icmp eq i16 %22, 3
  br i1 %cmp24.not, label %if.end27, label %lor.lhs.false22.cleanup_crit_edge

lor.lhs.false22.cleanup_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %lor.lhs.false22
  %blocked = getelementptr inbounds %struct.capi_ctr, ptr %20, i32 0, i32 21
  %23 = ptrtoint ptr %blocked to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %blocked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool28.not = icmp eq i32 %24, 0
  br i1 %tobool28.not, label %if.end30, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end30:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp1(i8 -122, i8 %10)
  %cmp36 = icmp eq i8 %10, -122
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %13)
  %cmp39 = icmp eq i8 %13, -128
  %or.cond = select i1 %cmp36, i1 %cmp39, i1 false
  br i1 %or.cond, label %if.then41, label %if.end56

if.then41:                                        ; preds = %if.end30
  %nsentdatapkt = getelementptr inbounds %struct.capi_ctr, ptr %20, i32 0, i32 18
  %25 = ptrtoint ptr %nsentdatapkt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nsentdatapkt, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %nsentdatapkt, align 4
  %nsentdatapkt42 = getelementptr inbounds %struct.capi20_appl, ptr %ap, i32 0, i32 7
  %27 = ptrtoint ptr %nsentdatapkt42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nsentdatapkt42, align 4
  %inc43 = add i32 %28, 1
  store i32 %inc43, ptr %nsentdatapkt42, align 4
  %traceflag = getelementptr inbounds %struct.capi_ctr, ptr %20, i32 0, i32 22
  %29 = ptrtoint ptr %traceflag to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %traceflag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp44 = icmp slt i32 %30, 3
  br i1 %cmp44, label %if.then41.if.end130_crit_edge, label %if.then41.if.then62_crit_edge

if.then41.if.then62_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then62

if.then41.if.end130_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

if.end56:                                         ; preds = %if.end30
  %nsentctlpkt = getelementptr inbounds %struct.capi_ctr, ptr %20, i32 0, i32 17
  %31 = ptrtoint ptr %nsentctlpkt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nsentctlpkt, align 4
  %inc48 = add i32 %32, 1
  store i32 %inc48, ptr %nsentctlpkt, align 4
  %nsentctlpkt49 = getelementptr inbounds %struct.capi20_appl, ptr %ap, i32 0, i32 6
  %33 = ptrtoint ptr %nsentctlpkt49 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nsentctlpkt49, align 4
  %inc50 = add i32 %34, 1
  store i32 %inc50, ptr %nsentctlpkt49, align 4
  %traceflag51 = getelementptr inbounds %struct.capi_ctr, ptr %20, i32 0, i32 22
  %35 = ptrtoint ptr %traceflag51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %traceflag51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool52.not = icmp eq i32 %36, 0
  br i1 %tobool52.not, label %if.end56.if.end130_crit_edge, label %if.end56.if.then62_crit_edge

if.end56.if.then62_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then62

if.end56.if.end130_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

if.then62:                                        ; preds = %if.end56.if.then62_crit_edge, %if.then41.if.then62_crit_edge
  %traceflag57 = getelementptr inbounds %struct.capi_ctr, ptr %20, i32 0, i32 22
  %37 = ptrtoint ptr %traceflag57 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %traceflag57, align 4
  %and58 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool64.not = icmp eq i32 %and58, 0
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  br i1 %tobool64.not, label %if.else87, label %do.end

do.end:                                           ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx67 = getelementptr i8, ptr %40, i32 8
  %41 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx67, align 1
  %43 = and i8 %42, 127
  %and69 = zext i8 %43 to i32
  %arrayidx71 = getelementptr i8, ptr %40, i32 2
  %44 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %45 to i32
  %arrayidx74 = getelementptr i8, ptr %40, i32 3
  %46 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx74, align 1
  %conv75 = zext i8 %47 to i32
  %shl = shl nuw nsw i32 %conv75, 8
  %or76 = or i32 %shl, %conv72
  %call77 = tail call ptr @capi_cmd2str(i8 noundef zeroext %10, i8 noundef zeroext %13) #11
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 1
  %conv80 = zext i8 %51 to i32
  %arrayidx82 = getelementptr i8, ptr %49, i32 1
  %52 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %53 to i32
  %shl84 = shl nuw nsw i32 %conv83, 8
  %or85 = or i32 %shl84, %conv80
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %and69, i32 noundef %or76, ptr noundef %call77, i32 noundef %or85) #14
  br label %if.end130

if.else87:                                        ; preds = %if.then62
  %call89 = tail call ptr @capi_message2str(ptr noundef %40) #11
  %tobool90.not = icmp eq ptr %call89, null
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data, align 4
  %arrayidx107 = getelementptr i8, ptr %55, i32 8
  %56 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx107, align 1
  %58 = and i8 %57, 127
  %and109 = zext i8 %58 to i32
  br i1 %tobool90.not, label %do.end104, label %do.end94

do.end94:                                         ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %call89 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call89, align 4
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %and109, ptr noundef %60) #14
  tail call void @cdebbuf_free(ptr noundef nonnull %call89) #11
  br label %if.end130

do.end104:                                        ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx111 = getelementptr i8, ptr %55, i32 2
  %61 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx111, align 1
  %conv112 = zext i8 %62 to i32
  %arrayidx114 = getelementptr i8, ptr %55, i32 3
  %63 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx114, align 1
  %conv115 = zext i8 %64 to i32
  %shl116 = shl nuw nsw i32 %conv115, 8
  %or117 = or i32 %shl116, %conv112
  %call118 = tail call ptr @capi_cmd2str(i8 noundef zeroext %10, i8 noundef zeroext %13) #11
  %65 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %66, align 1
  %conv121 = zext i8 %68 to i32
  %arrayidx123 = getelementptr i8, ptr %66, i32 1
  %69 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx123, align 1
  %conv124 = zext i8 %70 to i32
  %shl125 = shl nuw nsw i32 %conv124, 8
  %or126 = or i32 %shl125, %conv121
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %and109, i32 noundef %or117, ptr noundef %call118, i32 noundef %or126) #14
  br label %if.end130

if.end130:                                        ; preds = %do.end104, %do.end94, %do.end, %if.end56.if.end130_crit_edge, %if.then41.if.end130_crit_edge
  %send_message = getelementptr inbounds %struct.capi_ctr, ptr %20, i32 0, i32 8
  %71 = ptrtoint ptr %send_message to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %send_message, align 4
  %call131 = tail call zeroext i16 %72(ptr noundef nonnull %20, ptr noundef %skb) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end130, %if.end27.cleanup_crit_edge, %lor.lhs.false22.cleanup_crit_edge, %get_capi_ctr_by_nr.exit.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %call131, %if.end130 ], [ 4105, %entry.cleanup_crit_edge ], [ 4353, %lor.lhs.false.cleanup_crit_edge ], [ 4353, %if.end.cleanup_crit_edge ], [ 4354, %lor.lhs.false9.cleanup_crit_edge ], [ 4354, %if.end4.cleanup_crit_edge ], [ 4105, %lor.lhs.false22.cleanup_crit_edge ], [ 4105, %get_capi_ctr_by_nr.exit.cleanup_crit_edge ], [ 4355, %if.end27.cleanup_crit_edge ], [ 4354, %lor.lhs.false7.cleanup_crit_edge ], [ 4105, %if.end15.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @capi20_get_manufacturer(i32 noundef %contr, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %contr)
  %cmp = icmp eq i32 %contr, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @strncpy(ptr noundef %buf, ptr noundef nonnull @capi_manufakturer, i32 noundef 64)
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @capi_controller_lock, i32 noundef 0) #11
  %conv = trunc i32 %contr to i16
  %0 = add i16 %conv, -33
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32, i16 %0)
  %1 = icmp ult i16 %0, -32
  br i1 %1, label %if.end.if.end7_crit_edge, label %get_capi_ctr_by_nr.exit

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

get_capi_ctr_by_nr.exit:                          ; preds = %if.end
  %conv.i = and i32 %contr, 65535
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx.i = getelementptr [32 x ptr], ptr @capi_controller, i32 0, i32 %sub.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %get_capi_ctr_by_nr.exit.if.end7_crit_edge, label %land.lhs.true

get_capi_ctr_by_nr.exit.if.end7_crit_edge:        ; preds = %get_capi_ctr_by_nr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

land.lhs.true:                                    ; preds = %get_capi_ctr_by_nr.exit
  %state = getelementptr inbounds %struct.capi_ctr, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %5)
  %cmp3 = icmp eq i16 %5, 3
  br i1 %cmp3, label %if.then5, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %manu = getelementptr inbounds %struct.capi_ctr, ptr %3, i32 0, i32 11
  %call6 = tail call ptr @strncpy(ptr noundef %buf, ptr noundef %manu, i32 noundef 64)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %land.lhs.true.if.end7_crit_edge, %get_capi_ctr_by_nr.exit.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %ret.0 = phi i16 [ 0, %if.then5 ], [ 4105, %land.lhs.true.if.end7_crit_edge ], [ 4105, %get_capi_ctr_by_nr.exit.if.end7_crit_edge ], [ 4105, %if.end.if.end7_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @capi_controller_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then
  %retval.0 = phi i16 [ 0, %if.then ], [ %ret.0, %if.end7 ]
  ret i16 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @capi20_get_version(i32 noundef %contr, ptr nocapture noundef writeonly %verp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %contr)
  %cmp = icmp eq i32 %contr, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = call ptr @memcpy(ptr %verp, ptr @driver_version, i32 16)
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @capi_controller_lock, i32 noundef 0) #11
  %conv = trunc i32 %contr to i16
  %1 = add i16 %conv, -33
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32, i16 %1)
  %2 = icmp ult i16 %1, -32
  br i1 %2, label %if.end.if.end5_crit_edge, label %get_capi_ctr_by_nr.exit

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

get_capi_ctr_by_nr.exit:                          ; preds = %if.end
  %conv.i = and i32 %contr, 65535
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx.i = getelementptr [32 x ptr], ptr @capi_controller, i32 0, i32 %sub.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %get_capi_ctr_by_nr.exit.if.end5_crit_edge, label %land.lhs.true

get_capi_ctr_by_nr.exit.if.end5_crit_edge:        ; preds = %get_capi_ctr_by_nr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

land.lhs.true:                                    ; preds = %get_capi_ctr_by_nr.exit
  %state = getelementptr inbounds %struct.capi_ctr, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %6)
  %cmp2 = icmp eq i16 %6, 3
  br i1 %cmp2, label %if.then4, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %version = getelementptr inbounds %struct.capi_ctr, ptr %4, i32 0, i32 12
  %7 = call ptr @memcpy(ptr %verp, ptr %version, i32 16)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %land.lhs.true.if.end5_crit_edge, %get_capi_ctr_by_nr.exit.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %ret.0 = phi i16 [ 0, %if.then4 ], [ 4105, %land.lhs.true.if.end5_crit_edge ], [ 4105, %get_capi_ctr_by_nr.exit.if.end5_crit_edge ], [ 4105, %if.end.if.end5_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @capi_controller_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then
  %retval.0 = phi i16 [ 0, %if.then ], [ %ret.0, %if.end5 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @capi20_get_serial(i32 noundef %contr, ptr noundef %serial) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %contr)
  %cmp = icmp eq i32 %contr, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @strlcpy(ptr noundef %serial, ptr noundef nonnull @driver_serial, i32 noundef 8) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @capi_controller_lock, i32 noundef 0) #11
  %conv = trunc i32 %contr to i16
  %0 = add i16 %conv, -33
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32, i16 %0)
  %1 = icmp ult i16 %0, -32
  br i1 %1, label %if.end.if.end8_crit_edge, label %get_capi_ctr_by_nr.exit

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

get_capi_ctr_by_nr.exit:                          ; preds = %if.end
  %conv.i = and i32 %contr, 65535
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx.i = getelementptr [32 x ptr], ptr @capi_controller, i32 0, i32 %sub.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %get_capi_ctr_by_nr.exit.if.end8_crit_edge, label %land.lhs.true

get_capi_ctr_by_nr.exit.if.end8_crit_edge:        ; preds = %get_capi_ctr_by_nr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

land.lhs.true:                                    ; preds = %get_capi_ctr_by_nr.exit
  %state = getelementptr inbounds %struct.capi_ctr, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %5)
  %cmp3 = icmp eq i16 %5, 3
  br i1 %cmp3, label %if.then5, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %serial6 = getelementptr inbounds %struct.capi_ctr, ptr %3, i32 0, i32 14
  %call7 = tail call i32 @strlcpy(ptr noundef %serial, ptr noundef %serial6, i32 noundef 8) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %land.lhs.true.if.end8_crit_edge, %get_capi_ctr_by_nr.exit.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %ret.0 = phi i16 [ 0, %if.then5 ], [ 4105, %land.lhs.true.if.end8_crit_edge ], [ 4105, %get_capi_ctr_by_nr.exit.if.end8_crit_edge ], [ 4105, %if.end.if.end8_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @capi_controller_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then
  %retval.0 = phi i16 [ 0, %if.then ], [ %ret.0, %if.end8 ]
  ret i16 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @capi20_get_profile(i32 noundef %contr, ptr nocapture noundef writeonly %profp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %contr)
  %cmp = icmp eq i32 %contr, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load i32, ptr @ncontrollers, align 4
  %conv = trunc i32 %0 to i16
  %1 = ptrtoint ptr %profp to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv, ptr %profp, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @capi_controller_lock, i32 noundef 0) #11
  %conv1 = trunc i32 %contr to i16
  %2 = add i16 %conv1, -33
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32, i16 %2)
  %3 = icmp ult i16 %2, -32
  br i1 %3, label %if.end.if.end6_crit_edge, label %get_capi_ctr_by_nr.exit

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

get_capi_ctr_by_nr.exit:                          ; preds = %if.end
  %conv.i = and i32 %contr, 65535
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx.i = getelementptr [32 x ptr], ptr @capi_controller, i32 0, i32 %sub.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %get_capi_ctr_by_nr.exit.if.end6_crit_edge, label %land.lhs.true

get_capi_ctr_by_nr.exit.if.end6_crit_edge:        ; preds = %get_capi_ctr_by_nr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

land.lhs.true:                                    ; preds = %get_capi_ctr_by_nr.exit
  %state = getelementptr inbounds %struct.capi_ctr, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %7)
  %cmp3 = icmp eq i16 %7, 3
  br i1 %cmp3, label %if.then5, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %profile = getelementptr inbounds %struct.capi_ctr, ptr %5, i32 0, i32 13
  %8 = call ptr @memcpy(ptr %profp, ptr %profile, i32 64)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %land.lhs.true.if.end6_crit_edge, %get_capi_ctr_by_nr.exit.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %ret.0 = phi i16 [ 0, %if.then5 ], [ 4105, %land.lhs.true.if.end6_crit_edge ], [ 4105, %get_capi_ctr_by_nr.exit.if.end6_crit_edge ], [ 4105, %if.end.if.end6_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @capi_controller_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then
  %retval.0 = phi i16 [ 0, %if.then ], [ %ret.0, %if.end6 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @capi20_manufacturer(i32 noundef %cmd, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %fdef = alloca %struct.kcapi_flagdef, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %cmd)
  %cond = icmp eq i32 %cmd, 10
  br i1 %cond, label %sw.bb, label %do.end10

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fdef) #11
  %0 = ptrtoint ptr %fdef to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %fdef, align 4, !annotation !188
  %1 = getelementptr inbounds %struct.kcapi_flagdef, ptr %fdef, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !188
  tail call void @__might_fault(ptr noundef nonnull @.str.75, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %sw.bb.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb.if.then11.i.i_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 8, i32 -1226833920) #16, !srcloc !189
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !190

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %fdef, i32 noundef 8) #11
  %4 = call i32 @llvm.read_register.i32(metadata !175) #11
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !191
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !192
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !193
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %fdef, ptr noundef %data, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #11, !srcloc !192
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !190

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %sw.bb.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %fdef, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @mutex_lock_nested(ptr noundef nonnull @capi_controller_lock, i32 noundef 0) #11
  %8 = ptrtoint ptr %fdef to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fdef, align 4
  %conv = trunc i32 %9 to i16
  %10 = add i16 %conv, -33
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32, i16 %10)
  %11 = icmp ult i16 %10, -32
  br i1 %11, label %if.end.if.end7_crit_edge, label %get_capi_ctr_by_nr.exit

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

get_capi_ctr_by_nr.exit:                          ; preds = %if.end
  %conv.i = and i32 %9, 65535
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx.i = getelementptr [32 x ptr], ptr @capi_controller, i32 0, i32 %sub.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not = icmp eq ptr %13, null
  br i1 %tobool3.not, label %get_capi_ctr_by_nr.exit.if.end7_crit_edge, label %if.then4

get_capi_ctr_by_nr.exit.if.end7_crit_edge:        ; preds = %get_capi_ctr_by_nr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then4:                                         ; preds = %get_capi_ctr_by_nr.exit
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %traceflag = getelementptr inbounds %struct.capi_ctr, ptr %13, i32 0, i32 22
  %16 = ptrtoint ptr %traceflag to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %traceflag, align 4
  %cnr = getelementptr inbounds %struct.capi_ctr, ptr %13, i32 0, i32 19
  %17 = ptrtoint ptr %cnr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cnr, align 4
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %18, i32 noundef %15) #14
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %get_capi_ctr_by_nr.exit.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %retval1.0 = phi i32 [ 0, %if.then4 ], [ -3, %get_capi_ctr_by_nr.exit.if.end7_crit_edge ], [ -3, %if.end.if.end7_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @capi_controller_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then11.i.i
  %retval.0 = phi i32 [ %retval1.0, %if.end7 ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fdef) #11
  br label %cleanup13

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %cmd) #14
  br label %cleanup13

cleanup13:                                        ; preds = %do.end10, %cleanup
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ -22, %do.end10 ]
  ret i32 %retval.1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kcapi_init() local_unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.55, i32 noundef 0, i32 noundef 0) #11
  store ptr %call, ptr @kcapi_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @cdebug_init() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load ptr, ptr @kcapi_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kcapi_proc_init() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ 0, %if.end4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdebug_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kcapi_proc_init() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kcapi_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kcapi_proc_exit() #11
  tail call void @cdebug_exit() #11
  %0 = load ptr, ptr @kcapi_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kcapi_proc_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdebug_exit() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_notify_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.capictr_event, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %controller = getelementptr inbounds %struct.capictr_event, ptr %work, i32 0, i32 2
  %3 = ptrtoint ptr %controller to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %controller, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @capi_controller_lock, i32 noundef 0) #11
  %5 = load i32, ptr @showcapimsgs, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.if.end.i_crit_edge, label %do.end.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %4) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %sw.bb.if.end.i_crit_edge
  %conv.i = trunc i32 %4 to i16
  %6 = add i16 %conv.i, -33
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32, i16 %6)
  %7 = icmp ult i16 %6, -32
  br i1 %7, label %if.end.i.do.end18.i_crit_edge, label %get_capi_ctr_by_nr.exit.i

if.end.i.do.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18.i

get_capi_ctr_by_nr.exit.i:                        ; preds = %if.end.i
  %conv.i.i = and i32 %4, 65535
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %arrayidx.i.i = getelementptr [32 x ptr], ptr @capi_controller, i32 0, i32 %sub.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %get_capi_ctr_by_nr.exit.i.do.end18.i_crit_edge, label %if.then3.i

get_capi_ctr_by_nr.exit.i.do.end18.i_crit_edge:   ; preds = %get_capi_ctr_by_nr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18.i

if.then3.i:                                       ; preds = %get_capi_ctr_by_nr.exit.i
  %state.i = getelementptr inbounds %struct.capi_ctr, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %11)
  %cmp.i = icmp eq i16 %11, 3
  br i1 %cmp.i, label %if.then3.i.sw.epilog.sink.split_crit_edge, label %if.end7.i

if.then3.i.sw.epilog.sink.split_crit_edge:        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

if.end7.i:                                        ; preds = %if.then3.i
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 3, ptr %state.i, align 4
  %register_appl.i.i = getelementptr inbounds %struct.capi_ctr, ptr %9, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end7.i
  %indvars.iv.i = phi i32 [ 1, %if.end7.i ], [ %indvars.iv.next.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %13 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %for.body.i.__get_capi_appl_by_nr.exit.i_crit_edge, label %land.rhs.i.i

for.body.i.__get_capi_appl_by_nr.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__get_capi_appl_by_nr.exit.i

land.rhs.i.i:                                     ; preds = %for.body.i
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @capi_controller_lock, i32 0, i32 5), i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.__get_capi_appl_by_nr.exit.i_crit_edge, !prof !187

land.rhs.i.i.__get_capi_appl_by_nr.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__get_capi_appl_by_nr.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 91, i32 noundef 9, ptr noundef null) #11
  br label %__get_capi_appl_by_nr.exit.i

__get_capi_appl_by_nr.exit.i:                     ; preds = %do.end.i.i, %land.rhs.i.i.__get_capi_appl_by_nr.exit.i_crit_edge, %for.body.i.__get_capi_appl_by_nr.exit.i_crit_edge
  %sub.i33.i = add nsw i32 %indvars.iv.i, -1
  %arrayidx.i34.i = getelementptr [240 x ptr], ptr @capi_applications, i32 0, i32 %sub.i33.i
  %14 = ptrtoint ptr %arrayidx.i34.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i34.i, align 4
  %tobool13.not.i = icmp eq ptr %15, null
  br i1 %tobool13.not.i, label %__get_capi_appl_by_nr.exit.i.for.inc.i_crit_edge, label %if.then14.i

__get_capi_appl_by_nr.exit.i.for.inc.i_crit_edge: ; preds = %__get_capi_appl_by_nr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then14.i:                                      ; preds = %__get_capi_appl_by_nr.exit.i
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %9, align 4
  %call.i.i36.i = tail call zeroext i1 @try_module_get(ptr noundef %17) #11
  br i1 %call.i.i36.i, label %if.then.i.i, label %do.end.i37.i

if.then.i.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  %rparam.i = getelementptr inbounds %struct.capi20_appl, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %register_appl.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %register_appl.i.i, align 4
  %20 = trunc i32 %indvars.iv.i to i16
  tail call void %19(ptr noundef nonnull %9, i16 noundef zeroext %20, ptr noundef %rparam.i) #11
  br label %for.inc.i

do.end.i37.i:                                     ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i37.i, %if.then.i.i, %__get_capi_appl_by_nr.exit.i.for.inc.i_crit_edge
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 241
  br i1 %exitcond.not.i, label %for.inc.i.sw.epilog.sink.split_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.sw.epilog.sink.split_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

do.end18.i:                                       ; preds = %get_capi_ctr_by_nr.exit.i.do.end18.i_crit_edge, %if.end.i.do.end18.i_crit_edge
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.62, i32 noundef %4) #14
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  %controller2 = getelementptr inbounds %struct.capictr_event, ptr %work, i32 0, i32 2
  %21 = ptrtoint ptr %controller2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %controller2, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @capi_controller_lock, i32 noundef 0) #11
  %23 = load i32, ptr @showcapimsgs, align 4
  %and.i6 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6)
  %tobool.not.i7 = icmp eq i32 %and.i6, 0
  br i1 %tobool.not.i7, label %sw.bb1.if.end.i11_crit_edge, label %do.end.i9

sw.bb1.if.end.i11_crit_edge:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i11

do.end.i9:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  %call.i8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %22) #14
  br label %if.end.i11

if.end.i11:                                       ; preds = %do.end.i9, %sw.bb1.if.end.i11_crit_edge
  %conv.i10 = trunc i32 %22 to i16
  %24 = add i16 %conv.i10, -33
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32, i16 %24)
  %25 = icmp ult i16 %24, -32
  br i1 %25, label %if.end.i11.do.end6.i_crit_edge, label %get_capi_ctr_by_nr.exit.i16

if.end.i11.do.end6.i_crit_edge:                   ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6.i

get_capi_ctr_by_nr.exit.i16:                      ; preds = %if.end.i11
  %conv.i.i12 = and i32 %22, 65535
  %sub.i.i13 = add nsw i32 %conv.i.i12, -1
  %arrayidx.i.i14 = getelementptr [32 x ptr], ptr @capi_controller, i32 0, i32 %sub.i.i13
  %26 = ptrtoint ptr %arrayidx.i.i14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i14, align 4
  %tobool2.not.i15 = icmp eq ptr %27, null
  br i1 %tobool2.not.i15, label %get_capi_ctr_by_nr.exit.i16.do.end6.i_crit_edge, label %if.then3.i17

get_capi_ctr_by_nr.exit.i16.do.end6.i_crit_edge:  ; preds = %get_capi_ctr_by_nr.exit.i16
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end6.i

if.then3.i17:                                     ; preds = %get_capi_ctr_by_nr.exit.i16
  %state.i.i = getelementptr inbounds %struct.capi_ctr, ptr %27, i32 0, i32 20
  %28 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %29)
  %switch.i.i = icmp ult i16 %29, 2
  br i1 %switch.i.i, label %if.then3.i17.sw.epilog.sink.split_crit_edge, label %if.end.i13.i

if.then3.i17.sw.epilog.sink.split_crit_edge:      ; preds = %if.then3.i17
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

if.end.i13.i:                                     ; preds = %if.then3.i17
  %30 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %state.i.i, align 4
  %manu.i.i = getelementptr inbounds %struct.capi_ctr, ptr %27, i32 0, i32 11
  %31 = call ptr @memset(ptr %manu.i.i, i32 0, i32 152)
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i13.i
  %indvars.iv.i.i = phi i32 [ 1, %if.end.i13.i ], [ %indvars.iv.next.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %32 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.__get_capi_appl_by_nr.exit.i.i_crit_edge, label %land.rhs.i.i.i

for.body.i.i.__get_capi_appl_by_nr.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__get_capi_appl_by_nr.exit.i.i

land.rhs.i.i.i:                                   ; preds = %for.body.i.i
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @capi_controller_lock, i32 0, i32 5), i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.__get_capi_appl_by_nr.exit.i.i_crit_edge, !prof !187

land.rhs.i.i.i.__get_capi_appl_by_nr.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__get_capi_appl_by_nr.exit.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 91, i32 noundef 9, ptr noundef null) #11
  br label %__get_capi_appl_by_nr.exit.i.i

__get_capi_appl_by_nr.exit.i.i:                   ; preds = %do.end.i.i.i, %land.rhs.i.i.i.__get_capi_appl_by_nr.exit.i.i_crit_edge, %for.body.i.i.__get_capi_appl_by_nr.exit.i.i_crit_edge
  %sub.i.i.i = add nsw i32 %indvars.iv.i.i, -1
  %arrayidx.i.i.i = getelementptr [240 x ptr], ptr @capi_applications, i32 0, i32 %sub.i.i.i
  %33 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i18 = icmp eq ptr %34, null
  br i1 %tobool.not.i.i18, label %__get_capi_appl_by_nr.exit.i.i.for.inc.i.i_crit_edge, label %if.then12.i.i

__get_capi_appl_by_nr.exit.i.i.for.inc.i.i_crit_edge: ; preds = %__get_capi_appl_by_nr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then12.i.i:                                    ; preds = %__get_capi_appl_by_nr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %27, align 4
  tail call void @module_put(ptr noundef %36) #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then12.i.i, %__get_capi_appl_by_nr.exit.i.i.for.inc.i.i_crit_edge
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, 241
  br i1 %exitcond.not.i.i, label %for.inc.i.i.sw.epilog.sink.split_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.sw.epilog.sink.split_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

do.end6.i:                                        ; preds = %get_capi_ctr_by_nr.exit.i16.do.end6.i_crit_edge, %if.end.i11.do.end6.i_crit_edge
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.67, i32 noundef %22) #14
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %do.end6.i, %for.inc.i.i.sw.epilog.sink.split_crit_edge, %if.then3.i17.sw.epilog.sink.split_crit_edge, %do.end18.i, %for.inc.i.sw.epilog.sink.split_crit_edge, %if.then3.i.sw.epilog.sink.split_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @capi_controller_lock) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  tail call void @kfree(ptr noundef %work) #11
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43, !44, !46, !48, !49, !50, !51, !53, !55, !56, !57, !58, !60, !62, !63, !64, !66, !68, !69, !70, !71, !73, !75, !76, !78, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !115, !117, !119, !121, !123, !124, !126, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !150, !151, !153, !154, !156, !157, !159, !160, !161, !162, !164, !166, !168, !170, !171, !173}
!llvm.named.register.sp = !{!175}
!llvm.module.flags = !{!176, !177, !178, !179, !180, !181, !182, !183}
!llvm.ident = !{!184}

!0 = !{ptr @__param_showcapimsgs, !1, !"__param_showcapimsgs", i1 false, i1 false}
!1 = !{!"../drivers/isdn/capi/kcapi.c", i32 38, i32 1}
!2 = !{ptr @__UNIQUE_ID_showcapimsgstype275, !1, !"__UNIQUE_ID_showcapimsgstype275", i1 false, i1 false}
!3 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/isdn/capi/kcapi.c", i32 57, i32 1}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @capi_controller_lock, !4, !"capi_controller_lock", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/isdn/capi/kcapi.c", i32 312, i32 4}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @capi_ctr_handle_message._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @capi_ctr_handle_message._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/isdn/capi/kcapi.c", i32 316, i32 4}
!15 = !{ptr @capi_ctr_handle_message._entry.5, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @capi_ctr_handle_message._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/isdn/capi/kcapi.c", i32 335, i32 4}
!19 = !{ptr @capi_ctr_handle_message._entry.8, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @capi_ctr_handle_message._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/isdn/capi/kcapi.c", i32 342, i32 5}
!23 = !{ptr @capi_ctr_handle_message._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @capi_ctr_handle_message._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/isdn/capi/kcapi.c", i32 346, i32 5}
!27 = !{ptr @capi_ctr_handle_message._entry.14, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @capi_ctr_handle_message._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/isdn/capi/kcapi.c", i32 360, i32 4}
!31 = !{ptr @capi_ctr_handle_message._entry.17, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @capi_ctr_handle_message._entry_ptr.19, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/isdn/capi/kcapi.c", i32 364, i32 4}
!35 = !{ptr @capi_ctr_handle_message._entry.20, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @capi_ctr_handle_message._entry_ptr.22, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @__ksymtab_capi_ctr_handle_message, !38, !"__ksymtab_capi_ctr_handle_message", i1 false, i1 false}
!38 = !{!"../drivers/isdn/capi/kcapi.c", i32 379, i32 1}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/isdn/capi/kcapi.c", i32 390, i32 2}
!41 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @capi_ctr_ready._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @capi_ctr_ready._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @__ksymtab_capi_ctr_ready, !45, !"__ksymtab_capi_ctr_ready", i1 false, i1 false}
!45 = !{!"../drivers/isdn/capi/kcapi.c", i32 396, i32 1}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/isdn/capi/kcapi.c", i32 408, i32 2}
!48 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @capi_ctr_down._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @capi_ctr_down._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @__ksymtab_capi_ctr_down, !52, !"__ksymtab_capi_ctr_down", i1 false, i1 false}
!52 = !{!"../drivers/isdn/capi/kcapi.c", i32 413, i32 1}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/isdn/capi/kcapi.c", i32 437, i32 3}
!55 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @attach_capi_ctr._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @attach_capi_ctr._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/isdn/capi/kcapi.c", i32 451, i32 23}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/isdn/capi/kcapi.c", i32 459, i32 2}
!62 = !{ptr @attach_capi_ctr._entry.30, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @attach_capi_ctr._entry_ptr.32, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @__ksymtab_attach_capi_ctr, !65, !"__ksymtab_attach_capi_ctr", i1 false, i1 false}
!65 = !{!"../drivers/isdn/capi/kcapi.c", i32 464, i32 1}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/isdn/capi/kcapi.c", i32 498, i32 2}
!68 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @detach_capi_ctr._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @detach_capi_ctr._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @__ksymtab_detach_capi_ctr, !72, !"__ksymtab_detach_capi_ctr", i1 false, i1 false}
!72 = !{!"../drivers/isdn/capi/kcapi.c", i32 507, i32 1}
!73 = !{ptr @capi20_register.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/isdn/capi/kcapi.c", i32 565, i32 2}
!75 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @capi20_register.__key.36, !77, !"__key", i1 false, i1 false}
!77 = !{!"../drivers/isdn/capi/kcapi.c", i32 567, i32 2}
!78 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/isdn/capi/kcapi.c", i32 594, i32 3}
!81 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @capi20_register._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @capi20_register._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/isdn/capi/kcapi.c", i32 636, i32 3}
!86 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @capi20_release._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @capi20_release._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/isdn/capi/kcapi.c", i32 696, i32 4}
!91 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @capi20_put_message._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @capi20_put_message._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/isdn/capi/kcapi.c", i32 704, i32 5}
!96 = !{ptr @capi20_put_message._entry.44, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @capi20_put_message._entry_ptr.46, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/isdn/capi/kcapi.c", i32 709, i32 5}
!100 = !{ptr @capi20_put_message._entry.47, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @capi20_put_message._entry_ptr.49, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/isdn/capi/kcapi.c", i32 878, i32 4}
!104 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @capi20_manufacturer._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @capi20_manufacturer._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/isdn/capi/kcapi.c", i32 890, i32 3}
!109 = !{ptr @capi20_manufacturer._entry.52, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @capi20_manufacturer._entry_ptr.54, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/isdn/capi/kcapi.c", i32 910, i32 29}
!113 = !{ptr @showcapimsgs, !114, !"showcapimsgs", i1 false, i1 false}
!114 = !{!"../drivers/isdn/capi/kcapi.c", i32 35, i32 12}
!115 = !{ptr @kcapi_wq, !116, !"kcapi_wq", i1 false, i1 false}
!116 = !{!"../drivers/isdn/capi/kcapi.c", i32 36, i32 33}
!117 = !{ptr @capi_controller, !118, !"capi_controller", i1 false, i1 false}
!118 = !{!"../drivers/isdn/capi/kcapi.c", i32 56, i32 18}
!119 = !{ptr @capi_applications, !120, !"capi_applications", i1 false, i1 false}
!120 = !{!"../drivers/isdn/capi/kcapi.c", i32 59, i32 21}
!121 = !{ptr @ncontrollers, !122, !"ncontrollers", i1 false, i1 false}
!122 = !{!"../drivers/isdn/capi/kcapi.c", i32 61, i32 12}
!123 = !{ptr @__param_str_showcapimsgs, !1, !"__param_str_showcapimsgs", i1 false, i1 false}
!124 = distinct !{null, !125, !"__warned", i1 false, i1 false}
!125 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!126 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!128 = distinct !{null, !129, !"__warned", i1 false, i1 false}
!129 = !{!"../drivers/isdn/capi/kcapi.c", i32 104, i32 9}
!130 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!131 = distinct !{null, !132, !"__warned", i1 false, i1 false}
!132 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!133 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @notify_push.__key, !135, !"__key", i1 false, i1 false}
!135 = !{!"../drivers/isdn/capi/kcapi.c", i32 261, i32 2}
!136 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/isdn/capi/kcapi.c", i32 176, i32 3}
!139 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @notify_up._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @notify_up._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/isdn/capi/kcapi.c", i32 191, i32 3}
!144 = !{ptr @notify_up._entry.63, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @notify_up._entry_ptr.65, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.66, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/isdn/capi/kcapi.c", i32 226, i32 3}
!148 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @notify_down._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @notify_down._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @notify_down._entry.68, !152, !"_entry", i1 false, i1 false}
!152 = !{!"../drivers/isdn/capi/kcapi.c", i32 232, i32 3}
!153 = !{ptr @notify_down._entry_ptr.69, !152, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @skb_queue_head_init.__key, !155, !"__key", i1 false, i1 false}
!155 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!156 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.71, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/isdn/capi/kcapi.c", i32 154, i32 3}
!159 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @register_appl._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @register_appl._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @capi_manufakturer, !163, !"capi_manufakturer", i1 false, i1 false}
!163 = !{!"../drivers/isdn/capi/kcapi.c", i32 52, i32 13}
!164 = !{ptr @driver_version, !165, !"driver_version", i1 false, i1 false}
!165 = !{!"../drivers/isdn/capi/kcapi.c", i32 50, i32 34}
!166 = !{ptr @driver_serial, !167, !"driver_serial", i1 false, i1 false}
!167 = !{!"../drivers/isdn/capi/kcapi.c", i32 51, i32 13}
!168 = distinct !{null, !169, !"__already_done", i1 false, i1 false}
!169 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!170 = distinct !{null, !169, !"<string literal>", i1 false, i1 false}
!171 = distinct !{null, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!173 = !{ptr @.str.75, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!175 = !{!"sp"}
!176 = !{i32 1, !"wchar_size", i32 2}
!177 = !{i32 1, !"min_enum_size", i32 4}
!178 = !{i32 8, !"branch-target-enforcement", i32 0}
!179 = !{i32 8, !"sign-return-address", i32 0}
!180 = !{i32 8, !"sign-return-address-all", i32 0}
!181 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!182 = !{i32 7, !"uwtable", i32 1}
!183 = !{i32 7, !"frame-pointer", i32 2}
!184 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!185 = !{i64 2149680382}
!186 = !{i64 2149680648}
!187 = !{!"branch_weights", i32 1, i32 2000}
!188 = !{!"auto-init"}
!189 = !{i64 2152356764, i64 2152356789}
!190 = !{!"branch_weights", i32 2000, i32 1}
!191 = !{i64 4852319}
!192 = !{i64 4852516}
!193 = !{i64 2152337749}
