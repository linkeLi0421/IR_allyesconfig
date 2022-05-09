; ModuleID = '/llk/IR_all_yes/sound/usb/clock.c_pt.bc'
source_filename = "../sound/usb/clock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.audioformat = type { %struct.list_head, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, i8, ptr, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.snd_usb_audio = type { i32, ptr, ptr, [16 x ptr], i32, i16, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i8, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.list_head, %struct.list_head, i32, i8, i8, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.uac3_clock_source_descriptor = type <{ i8, i8, i8, i8, i8, i32, i8, i16 }>
%struct.uac3_clock_selector_descriptor = type { i8, i8, i8, i8, i8, [0 x i8] }
%struct.uac_clock_multiplier_descriptor = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.uac_clock_source_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }

@snd_usb_init_sample_rate.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_usb_audio\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_usb_init_sample_rate\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sound/usb/clock.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%d:%d Set sample rate %d, clock %d\0A\00", [60 x i8] zeroinitializer }, align 32
@__uac_clock_find_source._entry = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 270, ptr @.str.6, ptr @.str.7 }, align 1
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s(): recursive clock topology detected, id %d.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__uac_clock_find_source\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__uac_clock_find_source._entry_ptr = internal global ptr @__uac_clock_find_source._entry, section ".printk_index", align 4
@__uac_clock_find_source._entry.8 = internal constant %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.2, i32 282, ptr @.str.10, ptr @.str.7 }, align 1
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"clock source %d is not valid, cannot use\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@__uac_clock_find_source._entry_ptr.11 = internal global ptr @__uac_clock_find_source._entry.8, section ".printk_index", align 4
@__uac_clock_find_source._entry.12 = internal constant %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.2, i32 314, ptr @.str.10, ptr @.str.7 }, align 1
@.str.13 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s(): selector reported illegal value, id %d, ret %d\0A\00", [42 x i8] zeroinitializer }, align 32
@__uac_clock_find_source._entry_ptr.14 = internal global ptr @__uac_clock_find_source._entry.12, section ".printk_index", align 4
@__uac_clock_find_source._entry.15 = internal constant %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.2, i32 356, ptr @.str.17, ptr @.str.7 }, align 1
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"found and selected valid clock source %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@__uac_clock_find_source._entry_ptr.18 = internal global ptr @__uac_clock_find_source._entry.15, section ".printk_index", align 4
@uac_clock_source_is_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 244, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(): cannot get clock validity for id %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"uac_clock_source_is_valid\00", [38 x i8] zeroinitializer }, align 32
@uac_clock_source_is_valid._entry_ptr = internal global ptr @uac_clock_source_is_valid._entry, section ".printk_index", align 4
@uac_clock_source_is_valid_quirk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.21, ptr @.str.2, i32 199, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"uac_clock_source_is_valid_quirk\00", [32 x i8] zeroinitializer }, align 32
@uac_clock_source_is_valid_quirk._entry_ptr = internal global ptr @uac_clock_source_is_valid_quirk._entry, section ".printk_index", align 4
@uac_clock_selector_set_val._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 131, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"setting selector (id %d) unexpected length %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"uac_clock_selector_set_val\00", [37 x i8] zeroinitializer }, align 32
@uac_clock_selector_set_val._entry_ptr = internal global ptr @uac_clock_selector_set_val._entry, section ".printk_index", align 4
@uac_clock_selector_set_val._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 142, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"setting selector (id %d) to %x failed (current: %d)\0A\00", [43 x i8] zeroinitializer }, align 32
@uac_clock_selector_set_val._entry_ptr.26 = internal global ptr @uac_clock_selector_set_val._entry.24, section ".printk_index", align 4
@get_sample_rate_v2v3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 472, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%d:%d: cannot get freq (v2/v3): err %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"get_sample_rate_v2v3\00", [43 x i8] zeroinitializer }, align 32
@get_sample_rate_v2v3._entry_ptr = internal global ptr @get_sample_rate_v2v3._entry, section ".printk_index", align 4
@set_sample_rate_v1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 420, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%d:%d: cannot set freq %d to ep %#x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set_sample_rate_v1\00", [45 x i8] zeroinitializer }, align 32
@set_sample_rate_v1._entry_ptr = internal global ptr @set_sample_rate_v1._entry, section ".printk_index", align 4
@set_sample_rate_v1._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 438, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%d:%d: cannot get freq at ep %#x\0A\00", [62 x i8] zeroinitializer }, align 32
@set_sample_rate_v1._entry_ptr.33 = internal global ptr @set_sample_rate_v1._entry.31, section ".printk_index", align 4
@set_sample_rate_v1._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.2, i32 445, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to read current rate; disabling the check\0A\00", [46 x i8] zeroinitializer }, align 32
@set_sample_rate_v1._entry_ptr.36 = internal global ptr @set_sample_rate_v1._entry.34, section ".printk_index", align 4
@set_sample_rate_v1._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.2, i32 451, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"current rate %d is different from the runtime rate %d\0A\00", [41 x i8] zeroinitializer }, align 32
@set_sample_rate_v1._entry_ptr.39 = internal global ptr @set_sample_rate_v1._entry.37, section ".printk_index", align 4
@set_sample_rate_v2v3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 561, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%d:%d: cannot set freq %d (v2/v3): err %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set_sample_rate_v2v3\00", [43 x i8] zeroinitializer }, align 32
@set_sample_rate_v2v3._entry_ptr = internal global ptr @set_sample_rate_v2v3._entry, section ".printk_index", align 4
@set_sample_rate_v2v3.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 -114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%d:%d: freq mismatch: req %d, clock runs @%d\0A\00", [50 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 48]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 48]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 48]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 48]
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 585, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 268, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 280, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 312, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 354, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 242, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 197, i32 5 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 129, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 140, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 471, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 419, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 437, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 445, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 451, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 559, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.161 = private constant [21 x i8] c"../sound/usb/clock.c\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 569, i32 3 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__uac_clock_find_source._entry, ptr @__uac_clock_find_source._entry.12, ptr @__uac_clock_find_source._entry.15, ptr @__uac_clock_find_source._entry.8, ptr @__uac_clock_find_source._entry_ptr, ptr @__uac_clock_find_source._entry_ptr.11, ptr @__uac_clock_find_source._entry_ptr.14, ptr @__uac_clock_find_source._entry_ptr.18, ptr @get_sample_rate_v2v3._entry, ptr @get_sample_rate_v2v3._entry_ptr, ptr @set_sample_rate_v1._entry, ptr @set_sample_rate_v1._entry.31, ptr @set_sample_rate_v1._entry.34, ptr @set_sample_rate_v1._entry.37, ptr @set_sample_rate_v1._entry_ptr, ptr @set_sample_rate_v1._entry_ptr.33, ptr @set_sample_rate_v1._entry_ptr.36, ptr @set_sample_rate_v1._entry_ptr.39, ptr @set_sample_rate_v2v3._entry, ptr @set_sample_rate_v2v3._entry_ptr, ptr @uac_clock_selector_set_val._entry, ptr @uac_clock_selector_set_val._entry.24, ptr @uac_clock_selector_set_val._entry_ptr, ptr @uac_clock_selector_set_val._entry_ptr.26, ptr @uac_clock_source_is_valid._entry, ptr @uac_clock_source_is_valid._entry_ptr, ptr @uac_clock_source_is_valid_quirk._entry, ptr @uac_clock_source_is_valid_quirk._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uac_clock_source_is_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uac_clock_source_is_valid_quirk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uac_clock_selector_set_val._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uac_clock_selector_set_val._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_sample_rate_v2v3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_sample_rate_v1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_sample_rate_v1._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_sample_rate_v1._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_sample_rate_v1._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_sample_rate_v2v3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_clock_find_source(ptr noundef %chip, ptr noundef %fmt, i1 noundef zeroext %validate) local_unnamed_addr #0 align 64 {
entry:
  %visited = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %visited) #5
  %0 = call ptr @memset(ptr %visited, i32 0, i32 32)
  %protocol = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 19
  %1 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %protocol, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i8 %2, label %entry.cleanup_crit_edge [
    i8 32, label %entry.sw.bb_crit_edge
    i8 48, label %entry.sw.bb_crit_edge5
  ]

entry.sw.bb_crit_edge5:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge5
  %clock = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 26
  %4 = ptrtoint ptr %clock to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %clock, align 8
  %conv1 = zext i8 %5 to i32
  %call = call fastcc i32 @__uac_clock_find_source(ptr noundef %chip, ptr noundef %fmt, i32 noundef %conv1, ptr noundef nonnull %visited, i1 noundef zeroext %validate)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %visited) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__uac_clock_find_source(ptr noundef %chip, ptr noundef %fmt, i32 noundef %entity_id, ptr noundef %visited, i1 noundef zeroext %validate) unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 19
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %protocol, align 1
  %and278 = and i32 %entity_id, 255
  %call279 = tail call i32 @_test_and_set_bit(i32 noundef %and278, ptr noundef %visited) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call279)
  %tobool.not280 = icmp eq i32 %call279, 0
  br i1 %tobool.not280, label %if.end.lr.ph, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.lr.ph:                                     ; preds = %entry
  %ctrl_intf.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 28
  br label %if.end

do.end.loopexit:                                  ; preds = %cond.end139
  call void @__sanitizer_cov_trace_pc() #7
  %cond140.le = zext i8 %cond140.in to i32
  br label %do.end

do.end:                                           ; preds = %do.end.loopexit, %entry.do.end_crit_edge
  %and.lcssa = phi i32 [ %and278, %entry.do.end_crit_edge ], [ %cond140.le, %do.end.loopexit ]
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %and.lcssa) #8
  br label %cleanup

if.end:                                           ; preds = %cond.end139.if.end_crit_edge, %if.end.lr.ph
  %and282 = phi i32 [ %and278, %if.end.lr.ph ], [ %cond140, %cond.end139.if.end_crit_edge ]
  %4 = phi i8 [ %1, %if.end.lr.ph ], [ %62, %cond.end139.if.end_crit_edge ]
  %entity_id.tr281 = phi i32 [ %entity_id, %if.end.lr.ph ], [ %cond140, %cond.end139.if.end_crit_edge ]
  %5 = ptrtoint ptr %ctrl_intf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl_intf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %4)
  %cmp.i = icmp eq i8 %4, 48
  %conv.i = select i1 %cmp.i, i8 11, i8 10
  %extra.i.i = getelementptr inbounds %struct.usb_host_interface, ptr %6, i32 0, i32 2
  %extralen.i.i = getelementptr inbounds %struct.usb_host_interface, ptr %6, i32 0, i32 1
  %7 = trunc i32 %entity_id.tr281 to i8
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.end
  %cs.0.i.i = phi ptr [ null, %if.end ], [ %call.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %8 = ptrtoint ptr %extra.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %extra.i.i, align 4
  %10 = ptrtoint ptr %extralen.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %extralen.i.i, align 4
  %call.i.i = tail call ptr @snd_usb_find_csint_desc(ptr noundef %9, i32 noundef %11, ptr noundef %cs.0.i.i, i8 noundef zeroext %conv.i) #5
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end19, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %bClockID.i.i = getelementptr inbounds %struct.uac3_clock_source_descriptor, ptr %call.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %bClockID.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %cond.in.i.i = load i8, ptr %bClockID.i.i, align 1
  %cmp3.i.i = icmp eq i8 %cond.in.i.i, %7
  br i1 %cmp3.i.i, label %if.then4, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i.i

if.then4:                                         ; preds = %while.body.i.i
  %bClockID.i.i.le = getelementptr inbounds %struct.uac3_clock_source_descriptor, ptr %call.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %bClockID.i.i.le to i32
  call void @__asan_load1_noabort(i32 %13)
  %cond.in = load i8, ptr %bClockID.i.i.le, align 1
  %cond = zext i8 %cond.in to i32
  br i1 %validate, label %land.lhs.true, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then4
  %call11 = tail call fastcc zeroext i1 @uac_clock_source_is_valid(ptr noundef %chip, ptr noundef %fmt, i32 noundef %cond)
  br i1 %call11, label %land.lhs.true.cleanup_crit_edge, label %do.end15

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end15:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %dev16 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %14 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev16, align 4
  %dev17 = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.9, i32 noundef %cond) #8
  br label %cleanup

if.end19:                                         ; preds = %while.cond.i.i
  %16 = ptrtoint ptr %ctrl_intf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl_intf.i, align 4
  %conv.i234 = select i1 %cmp.i, i8 12, i8 11
  %extra.i.i235 = getelementptr inbounds %struct.usb_host_interface, ptr %17, i32 0, i32 2
  %extralen.i.i236 = getelementptr inbounds %struct.usb_host_interface, ptr %17, i32 0, i32 1
  br label %while.cond.i.i240

while.cond.i.i240:                                ; preds = %while.body.i.i245.while.cond.i.i240_crit_edge, %if.end19
  %cs.0.i.i237 = phi ptr [ null, %if.end19 ], [ %call.i.i238, %while.body.i.i245.while.cond.i.i240_crit_edge ]
  %18 = ptrtoint ptr %extra.i.i235 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %extra.i.i235, align 4
  %20 = ptrtoint ptr %extralen.i.i236 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %extralen.i.i236, align 4
  %call.i.i238 = tail call ptr @snd_usb_find_csint_desc(ptr noundef %19, i32 noundef %21, ptr noundef %cs.0.i.i237, i8 noundef zeroext %conv.i234) #5
  %tobool.not.i.i239 = icmp eq ptr %call.i.i238, null
  br i1 %tobool.not.i.i239, label %if.end128, label %while.body.i.i245

while.body.i.i245:                                ; preds = %while.cond.i.i240
  %bClockID.i.i241 = getelementptr inbounds %struct.uac3_clock_selector_descriptor, ptr %call.i.i238, i32 0, i32 3
  %22 = ptrtoint ptr %bClockID.i.i241 to i32
  call void @__asan_load1_noabort(i32 %22)
  %cond.in.i.i242 = load i8, ptr %bClockID.i.i241, align 1
  %cmp3.i.i244 = icmp eq i8 %cond.in.i.i242, %7
  br i1 %cmp3.i.i244, label %if.then22, label %while.body.i.i245.while.cond.i.i240_crit_edge

while.body.i.i245.while.cond.i.i240_crit_edge:    ; preds = %while.body.i.i245
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i.i240

if.then22:                                        ; preds = %while.body.i.i245
  %bClockID.i.i241.le = getelementptr inbounds %struct.uac3_clock_selector_descriptor, ptr %call.i.i238, i32 0, i32 3
  %bNrInPins = getelementptr inbounds %struct.uac3_clock_selector_descriptor, ptr %call.i.i238, i32 0, i32 4
  %23 = ptrtoint ptr %bNrInPins to i32
  call void @__asan_load1_noabort(i32 %23)
  %cond31.in = load i8, ptr %bNrInPins, align 1
  %cond31 = zext i8 %cond31.in to i32
  %24 = ptrtoint ptr %bClockID.i.i241.le to i32
  call void @__asan_load1_noabort(i32 %24)
  %cond41.in = load i8, ptr %bClockID.i.i241.le, align 1
  %cond41 = zext i8 %cond41.in to i32
  %baCSourceID = getelementptr inbounds %struct.uac3_clock_selector_descriptor, ptr %call.i.i238, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %cond31.in)
  %cmp50 = icmp eq i8 %cond31.in, 1
  br i1 %cmp50, label %if.then22.find_source_crit_edge, label %if.end53

if.then22.find_source_crit_edge:                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_source

if.end53:                                         ; preds = %if.then22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #5
  %25 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %buf.i, align 1, !annotation !84
  %dev.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i.i = shl i32 %29, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %30 = ptrtoint ptr %ctrl_intf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctrl_intf.i, align 4
  %bInterfaceNumber.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %bInterfaceNumber.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %bInterfaceNumber.i.i, align 2
  %conv.i.i = zext i8 %33 to i32
  %shl.i = shl nuw nsw i32 %cond41, 8
  %or4.i = or i32 %shl.i, %conv.i.i
  %conv.i246 = trunc i32 %or4.i to i16
  %call5.i = call i32 @snd_usb_ctl_msg(ptr noundef %27, i32 noundef %or2.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 256, i16 noundef zeroext %conv.i246, ptr noundef nonnull %buf.i, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i247 = icmp slt i32 %call5.i, 0
  br i1 %cmp.i247, label %uac_clock_selector_get_val.exit.thread, label %uac_clock_selector_get_val.exit

uac_clock_selector_get_val.exit.thread:           ; preds = %if.end53
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #5
  %autoclock = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 26
  %34 = ptrtoint ptr %autoclock to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %autoclock, align 1, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool58.not = icmp eq i8 %35, 0
  br i1 %tobool58.not, label %uac_clock_selector_get_val.exit.thread.cleanup_crit_edge, label %uac_clock_selector_get_val.exit.thread.find_others_crit_edge

uac_clock_selector_get_val.exit.thread.find_others_crit_edge: ; preds = %uac_clock_selector_get_val.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_others

uac_clock_selector_get_val.exit.thread.cleanup_crit_edge: ; preds = %uac_clock_selector_get_val.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

uac_clock_selector_get_val.exit:                  ; preds = %if.end53
  %36 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %buf.i, align 1
  %conv7.i = zext i8 %37 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #5
  %38 = add i8 %37, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %cond31.in)
  %.not = icmp ult i8 %38, %cond31.in
  br i1 %.not, label %uac_clock_selector_get_val.exit.find_source_crit_edge, label %do.end69

uac_clock_selector_get_val.exit.find_source_crit_edge: ; preds = %uac_clock_selector_get_val.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_source

do.end69:                                         ; preds = %uac_clock_selector_get_val.exit
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  %dev71 = getelementptr inbounds %struct.usb_device, ptr %40, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev71, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5, i32 noundef %cond41, i32 noundef %conv7.i) #8
  %autoclock72 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 26
  %41 = ptrtoint ptr %autoclock72 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %autoclock72, align 1, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool73.not = icmp eq i8 %42, 0
  br i1 %tobool73.not, label %do.end69.cleanup_crit_edge, label %do.end69.find_others_crit_edge

do.end69.find_others_crit_edge:                   ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %find_others

do.end69.cleanup_crit_edge:                       ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

find_source:                                      ; preds = %uac_clock_selector_get_val.exit.find_source_crit_edge, %if.then22.find_source_crit_edge
  %ret.0 = phi i32 [ 1, %if.then22.find_source_crit_edge ], [ %conv7.i, %uac_clock_selector_get_val.exit.find_source_crit_edge ]
  %sub = add nsw i32 %ret.0, -1
  %arrayidx = getelementptr i8, ptr %baCSourceID, i32 %sub
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx, align 1
  %conv77 = zext i8 %44 to i32
  %call79 = call fastcc i32 @__uac_clock_find_source(ptr noundef %chip, ptr noundef %fmt, i32 noundef %conv77, ptr noundef %visited, i1 noundef zeroext %validate)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp sgt i32 %call79, 0
  br i1 %cmp80, label %if.then82, label %if.end93

if.then82:                                        ; preds = %find_source
  %quirk_flags = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 12
  %45 = ptrtoint ptr %quirk_flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %quirk_flags, align 4
  %and83 = and i32 %46, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end86, label %if.then82.cleanup_crit_edge

if.then82.cleanup_crit_edge:                      ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end86:                                         ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #7
  %conv87 = trunc i32 %ret.0 to i8
  %call88 = call fastcc i32 @uac_clock_selector_set_val(ptr noundef %chip, i32 noundef %and282, i8 noundef zeroext %conv87)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  %spec.select = select i1 %cmp89, i32 %call88, i32 %call79
  br label %cleanup

if.end93:                                         ; preds = %find_source
  br i1 %validate, label %lor.lhs.false98, label %if.end93.cleanup_crit_edge

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false98:                                  ; preds = %if.end93
  %autoclock99 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 26
  %47 = ptrtoint ptr %autoclock99 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %autoclock99, align 1, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool100.not = icmp eq i8 %48, 0
  br i1 %tobool100.not, label %lor.lhs.false98.cleanup_crit_edge, label %lor.lhs.false98.for.body.preheader_crit_edge

lor.lhs.false98.for.body.preheader_crit_edge:     ; preds = %lor.lhs.false98
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

lor.lhs.false98.cleanup_crit_edge:                ; preds = %lor.lhs.false98
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

find_others:                                      ; preds = %do.end69.find_others_crit_edge, %uac_clock_selector_get_val.exit.thread.find_others_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cond31.in)
  %cmp103.not283 = icmp eq i8 %cond31.in, 0
  br i1 %cmp103.not283, label %find_others.cleanup_crit_edge, label %find_others.for.body.preheader_crit_edge

find_others.for.body.preheader_crit_edge:         ; preds = %find_others
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

find_others.cleanup_crit_edge:                    ; preds = %find_others
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %find_others.for.body.preheader_crit_edge, %lor.lhs.false98.for.body.preheader_crit_edge
  %cur.0298 = phi i32 [ 0, %find_others.for.body.preheader_crit_edge ], [ %ret.0, %lor.lhs.false98.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0284 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %for.body.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0284, i32 %cur.0298)
  %cmp105 = icmp eq i32 %i.0284, %cur.0298
  br i1 %cmp105, label %for.body.for.inc_crit_edge, label %if.end108

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end108:                                        ; preds = %for.body
  %sub109 = add nsw i32 %i.0284, -1
  %arrayidx110 = getelementptr i8, ptr %baCSourceID, i32 %sub109
  %49 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx110, align 1
  %conv111 = zext i8 %50 to i32
  %call112 = call fastcc i32 @__uac_clock_find_source(ptr noundef %chip, ptr noundef %fmt, i32 noundef %conv111, ptr noundef %visited, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %if.end108.for.inc_crit_edge, label %if.end116

if.end108.for.inc_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end116:                                        ; preds = %if.end108
  %conv117 = trunc i32 %i.0284 to i8
  %call118 = call fastcc i32 @uac_clock_selector_set_val(ptr noundef %chip, i32 noundef %and282, i8 noundef zeroext %conv117)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp119 = icmp slt i32 %call118, 0
  br i1 %cmp119, label %if.end116.for.inc_crit_edge, label %do.end125

if.end116.for.inc_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end125:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #7
  %dev126 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %51 = ptrtoint ptr %dev126 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev126, align 4
  %dev127 = getelementptr inbounds %struct.usb_device, ptr %52, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev127, ptr noundef nonnull @.str.16, i32 noundef %call112) #8
  br label %cleanup

for.inc:                                          ; preds = %if.end116.for.inc_crit_edge, %if.end108.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0284, 1
  %exitcond = icmp eq i32 %i.0284, %cond31
  br i1 %exitcond, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end128:                                        ; preds = %while.cond.i.i240
  %53 = ptrtoint ptr %ctrl_intf.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ctrl_intf.i, align 4
  %conv.i250 = select i1 %cmp.i, i8 13, i8 12
  %extra.i.i251 = getelementptr inbounds %struct.usb_host_interface, ptr %54, i32 0, i32 2
  %extralen.i.i252 = getelementptr inbounds %struct.usb_host_interface, ptr %54, i32 0, i32 1
  br label %while.cond.i.i256

while.cond.i.i256:                                ; preds = %while.body.i.i260.while.cond.i.i256_crit_edge, %if.end128
  %cs.0.i.i253 = phi ptr [ null, %if.end128 ], [ %call.i.i254, %while.body.i.i260.while.cond.i.i256_crit_edge ]
  %55 = ptrtoint ptr %extra.i.i251 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %extra.i.i251, align 4
  %57 = ptrtoint ptr %extralen.i.i252 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %extralen.i.i252, align 4
  %call.i.i254 = tail call ptr @snd_usb_find_csint_desc(ptr noundef %56, i32 noundef %58, ptr noundef %cs.0.i.i253, i8 noundef zeroext %conv.i250) #5
  %tobool.not.i.i255 = icmp eq ptr %call.i.i254, null
  br i1 %tobool.not.i.i255, label %while.cond.i.i256.cleanup_crit_edge, label %while.body.i.i260

while.cond.i.i256.cleanup_crit_edge:              ; preds = %while.cond.i.i256
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.i.i260:                                ; preds = %while.cond.i.i256
  %cond.in.in.i.i = getelementptr inbounds %struct.uac_clock_multiplier_descriptor, ptr %call.i.i254, i32 0, i32 3
  %59 = ptrtoint ptr %cond.in.in.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %cond.in.i.i257 = load i8, ptr %cond.in.in.i.i, align 1
  %cmp3.i.i259 = icmp eq i8 %cond.in.i.i257, %7
  br i1 %cmp3.i.i259, label %cond.end139, label %while.body.i.i260.while.cond.i.i256_crit_edge

while.body.i.i260.while.cond.i.i256_crit_edge:    ; preds = %while.body.i.i260
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i.i256

cond.end139:                                      ; preds = %while.body.i.i260
  %cond140.in.in = getelementptr inbounds %struct.uac_clock_multiplier_descriptor, ptr %call.i.i254, i32 0, i32 4
  %60 = ptrtoint ptr %cond140.in.in to i32
  call void @__asan_load1_noabort(i32 %60)
  %cond140.in = load i8, ptr %cond140.in.in, align 1
  %cond140 = zext i8 %cond140.in to i32
  %61 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %protocol, align 1
  %call = tail call i32 @_test_and_set_bit(i32 noundef %cond140, ptr noundef %visited) #5
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.end139.if.end_crit_edge, label %do.end.loopexit

cond.end139.if.end_crit_edge:                     ; preds = %cond.end139
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cleanup:                                          ; preds = %while.cond.i.i256.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %do.end125, %find_others.cleanup_crit_edge, %lor.lhs.false98.cleanup_crit_edge, %if.end93.cleanup_crit_edge, %if.end86, %if.then82.cleanup_crit_edge, %do.end69.cleanup_crit_edge, %uac_clock_selector_get_val.exit.thread.cleanup_crit_edge, %do.end15, %land.lhs.true.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -6, %do.end15 ], [ %call112, %do.end125 ], [ %cond, %land.lhs.true.cleanup_crit_edge ], [ %cond, %if.then4.cleanup_crit_edge ], [ %call5.i, %uac_clock_selector_get_val.exit.thread.cleanup_crit_edge ], [ -22, %do.end69.cleanup_crit_edge ], [ %call79, %if.then82.cleanup_crit_edge ], [ %call79, %if.end93.cleanup_crit_edge ], [ %call79, %lor.lhs.false98.cleanup_crit_edge ], [ %spec.select, %if.end86 ], [ -6, %find_others.cleanup_crit_edge ], [ -6, %for.inc.cleanup_crit_edge ], [ -22, %while.cond.i.i256.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_set_sample_rate_v2v3(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %fmt, i32 noundef %clock, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i32, align 4
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %protocol = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 19
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %protocol, align 1
  %ctrl_intf.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 28
  %2 = ptrtoint ptr %ctrl_intf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_intf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %1)
  %cmp.i = icmp eq i8 %1, 48
  %conv.i = select i1 %cmp.i, i8 11, i8 10
  %extra.i.i = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 2
  %extralen.i.i = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 1
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %entry
  %cs.0.i.i = phi ptr [ null, %entry ], [ %call.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %4 = ptrtoint ptr %extra.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %extra.i.i, align 4
  %6 = ptrtoint ptr %extralen.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %extralen.i.i, align 4
  %call.i.i = tail call ptr @snd_usb_find_csint_desc(ptr noundef %5, i32 noundef %7, ptr noundef %cs.0.i.i, i8 noundef zeroext %conv.i) #5
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %while.cond.i.i.cleanup_crit_edge, label %while.body.i.i

while.cond.i.i.cleanup_crit_edge:                 ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.i.i:                                   ; preds = %while.cond.i.i
  %bClockID.i.i = getelementptr inbounds %struct.uac3_clock_source_descriptor, ptr %call.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %bClockID.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %cond.in.i.i = load i8, ptr %bClockID.i.i, align 1
  %cond.i.i = zext i8 %cond.in.i.i to i32
  %cmp3.i.i = icmp eq i32 %cond.i.i, %clock
  br i1 %cmp3.i.i, label %if.end, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i.i

if.end:                                           ; preds = %while.body.i.i
  %9 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %10)
  %cmp = icmp eq i8 %10, 48
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %bmControls5 = getelementptr inbounds %struct.uac3_clock_source_descriptor, ptr %call.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %bmControls5 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %bmControls5, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %bmControls6 = getelementptr inbounds %struct.uac_clock_source_descriptor, ptr %call.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %bmControls6 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bmControls6, align 1
  %conv7 = zext i8 %15 to i32
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then4
  %bmControls.0 = phi i32 [ %13, %if.then4 ], [ %conv7, %if.else ]
  %and.i = and i32 %bmControls.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %16 = tail call i32 @llvm.bswap.i32(i32 %rate)
  %17 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %data, align 4
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i = shl i32 %21, 8
  %or = or i32 %shl.i, -2147483648
  %22 = ptrtoint ptr %ctrl_intf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctrl_intf.i, align 4
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv.i43 = zext i8 %25 to i32
  %shl = shl i32 %clock, 8
  %or16 = or i32 %shl, %conv.i43
  %conv17 = trunc i32 %or16 to i16
  %call18 = call i32 @snd_usb_ctl_msg(ptr noundef %19, i32 noundef %or, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext 256, i16 noundef zeroext %conv17, ptr noundef nonnull %data, i16 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end12.cleanup_crit_edge, label %if.end22

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  %iface = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 6
  %26 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %iface, align 8
  %altsetting = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 7
  %28 = ptrtoint ptr %altsetting to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %altsetting, align 1
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #5
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %data.i, align 4, !annotation !84
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %31, align 8
  %shl.i.i = shl i32 %34, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %35 = ptrtoint ptr %ctrl_intf.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctrl_intf.i, align 4
  %bInterfaceNumber.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %bInterfaceNumber.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bInterfaceNumber.i.i, align 2
  %conv.i.i = zext i8 %38 to i32
  %or4.i = or i32 %shl, %conv.i.i
  %conv.i45 = trunc i32 %or4.i to i16
  %call5.i = call i32 @snd_usb_ctl_msg(ptr noundef %31, i32 noundef %or2.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 256, i16 noundef zeroext %conv.i45, ptr noundef nonnull %data.i, i16 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i46 = icmp slt i32 %call5.i, 0
  br i1 %cmp.i46, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %conv24 = zext i8 %29 to i32
  %conv23 = zext i8 %27 to i32
  %dev7.i = getelementptr inbounds %struct.usb_device, ptr %31, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7.i, ptr noundef nonnull @.str.27, i32 noundef %conv23, i32 noundef %conv24, i32 noundef %call5.i) #8
  br label %get_sample_rate_v2v3.exit

if.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data.i, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40) #5
  br label %get_sample_rate_v2v3.exit

get_sample_rate_v2v3.exit:                        ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %41, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #5
  br label %cleanup

cleanup:                                          ; preds = %get_sample_rate_v2v3.exit, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %while.cond.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %get_sample_rate_v2v3.exit ], [ 0, %if.end8.cleanup_crit_edge ], [ %call18, %if.end12.cleanup_crit_edge ], [ 0, %while.cond.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_usb_ctl_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_usb_init_sample_rate(ptr noundef %chip, ptr noundef %fmt, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_usb_init_sample_rate.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_usb_init_sample_rate, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !86

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %iface = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 6
  %2 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %iface, align 8
  %conv = zext i8 %3 to i32
  %altsetting = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 7
  %4 = ptrtoint ptr %altsetting to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %altsetting, align 1
  %conv4 = zext i8 %5 to i32
  %clock = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 26
  %6 = ptrtoint ptr %clock to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %clock, align 8
  %conv5 = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_usb_init_sample_rate.__UNIQUE_ID_ddebug240, ptr noundef %dev3, ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %conv4, i32 noundef %rate, i32 noundef %conv5) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %protocol = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 19
  %8 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %protocol, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %9, label %sw.default [
    i8 32, label %do.end.sw.bb15_crit_edge
    i8 48, label %sw.bb8
  ]

do.end.sw.bb15_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb15

sw.default:                                       ; preds = %do.end
  %dev1.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %11 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #5
  %13 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %14 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %attributes.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 10
  %15 = ptrtoint ptr %attributes.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %attributes.i, align 4
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %sw.default.set_sample_rate_v1.exit_crit_edge, label %if.end.i

sw.default.set_sample_rate_v1.exit_crit_edge:     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_sample_rate_v1.exit

if.end.i:                                         ; preds = %sw.default
  %conv2.i = trunc i32 %rate to i8
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv2.i, ptr %data.i, align 1
  %19 = lshr i32 %rate, 8
  %conv3.i = trunc i32 %19 to i8
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv3.i, ptr %13, align 1
  %21 = lshr i32 %rate, 16
  %conv6.i = trunc i32 %21 to i8
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv6.i, ptr %14, align 1
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %12, align 8
  %shl.i.i = shl i32 %24, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %endpoint.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 11
  %25 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %endpoint.i, align 1
  %conv8.i = zext i8 %26 to i16
  %call9.i = call i32 @snd_usb_ctl_msg(ptr noundef %12, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 34, i16 noundef zeroext 256, i16 noundef zeroext %conv8.i, ptr noundef nonnull %data.i, i16 noundef zeroext 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp.i = icmp slt i32 %call9.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end17.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev12.i = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  %iface.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 6
  %27 = ptrtoint ptr %iface.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %iface.i, align 8
  %conv13.i = zext i8 %28 to i32
  %altsetting.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 7
  %29 = ptrtoint ptr %altsetting.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %altsetting.i, align 1
  %conv14.i = zext i8 %30 to i32
  %31 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %endpoint.i, align 1
  %conv16.i = zext i8 %32 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull @.str.29, i32 noundef %conv13.i, i32 noundef %conv14.i, i32 noundef %rate, i32 noundef %conv16.i) #8
  br label %set_sample_rate_v1.exit

if.end17.i:                                       ; preds = %if.end.i
  %quirk_flags.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 12
  %33 = ptrtoint ptr %quirk_flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %quirk_flags.i, align 4
  %and18.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end17.i.set_sample_rate_v1.exit_crit_edge

if.end17.i.set_sample_rate_v1.exit_crit_edge:     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_sample_rate_v1.exit

if.end21.i:                                       ; preds = %if.end17.i
  %sample_rate_read_error.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 16
  %35 = ptrtoint ptr %sample_rate_read_error.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sample_rate_read_error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp22.i = icmp sgt i32 %36, 2
  br i1 %cmp22.i, label %if.end21.i.set_sample_rate_v1.exit_crit_edge, label %if.end25.i

if.end21.i.set_sample_rate_v1.exit_crit_edge:     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_sample_rate_v1.exit

if.end25.i:                                       ; preds = %if.end21.i
  %37 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %12, align 8
  %shl.i104.i = shl i32 %38, 8
  %or28.i = or i32 %shl.i104.i, -2147483520
  %39 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %endpoint.i, align 1
  %conv30.i = zext i8 %40 to i16
  %call32.i = call i32 @snd_usb_ctl_msg(ptr noundef %12, i32 noundef %or28.i, i8 noundef zeroext -127, i8 noundef zeroext -94, i16 noundef zeroext 256, i16 noundef zeroext %conv30.i, ptr noundef nonnull %data.i, i16 noundef zeroext 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.i = icmp slt i32 %call32.i, 0
  br i1 %cmp33.i, label %do.end38.i, label %if.end47.i

do.end38.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev39.i = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  %iface40.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 6
  %41 = ptrtoint ptr %iface40.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %iface40.i, align 8
  %conv41.i = zext i8 %42 to i32
  %altsetting42.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 7
  %43 = ptrtoint ptr %altsetting42.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %altsetting42.i, align 1
  %conv43.i = zext i8 %44 to i32
  %45 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %endpoint.i, align 1
  %conv45.i = zext i8 %46 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39.i, ptr noundef nonnull @.str.32, i32 noundef %conv41.i, i32 noundef %conv43.i, i32 noundef %conv45.i) #8
  %47 = ptrtoint ptr %sample_rate_read_error.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sample_rate_read_error.i, align 4
  %inc.i = add i32 %48, 1
  store i32 %inc.i, ptr %sample_rate_read_error.i, align 4
  br label %set_sample_rate_v1.exit

if.end47.i:                                       ; preds = %if.end25.i
  %49 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %data.i, align 1
  %conv49.i = zext i8 %50 to i32
  %51 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %13, align 1
  %conv51.i = zext i8 %52 to i32
  %shl.i = shl nuw nsw i32 %conv51.i, 8
  %or52.i = or i32 %shl.i, %conv49.i
  %53 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %14, align 1
  %conv54.i = zext i8 %54 to i32
  %shl55.i = shl nuw nsw i32 %conv54.i, 16
  %or56.i = or i32 %or52.i, %shl55.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or56.i)
  %tobool57.not.i = icmp eq i32 %or56.i, 0
  br i1 %tobool57.not.i, label %do.end61.i, label %if.end64.i

do.end61.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev62.i = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev62.i, ptr noundef nonnull @.str.35) #8
  %55 = ptrtoint ptr %sample_rate_read_error.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 3, ptr %sample_rate_read_error.i, align 4
  br label %set_sample_rate_v1.exit

if.end64.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or56.i, i32 %rate)
  %cmp65.not.i = icmp eq i32 %or56.i, %rate
  br i1 %cmp65.not.i, label %if.end64.i.set_sample_rate_v1.exit_crit_edge, label %do.end70.i

if.end64.i.set_sample_rate_v1.exit_crit_edge:     ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %set_sample_rate_v1.exit

do.end70.i:                                       ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev71.i = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev71.i, ptr noundef nonnull @.str.38, i32 noundef %or56.i, i32 noundef %rate) #8
  br label %set_sample_rate_v1.exit

set_sample_rate_v1.exit:                          ; preds = %do.end70.i, %if.end64.i.set_sample_rate_v1.exit_crit_edge, %do.end61.i, %do.end38.i, %if.end21.i.set_sample_rate_v1.exit_crit_edge, %if.end17.i.set_sample_rate_v1.exit_crit_edge, %do.end.i, %sw.default.set_sample_rate_v1.exit_crit_edge
  %retval.0.i28 = phi i32 [ %call9.i, %do.end.i ], [ 0, %do.end38.i ], [ 0, %do.end61.i ], [ 0, %sw.default.set_sample_rate_v1.exit_crit_edge ], [ 0, %if.end17.i.set_sample_rate_v1.exit_crit_edge ], [ 0, %if.end21.i.set_sample_rate_v1.exit_crit_edge ], [ 0, %do.end70.i ], [ 0, %if.end64.i.set_sample_rate_v1.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #5
  br label %return

sw.bb8:                                           ; preds = %do.end
  %badd_profile = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 17
  %56 = ptrtoint ptr %badd_profile to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %badd_profile, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %57)
  %cmp = icmp sgt i32 %57, 31
  br i1 %cmp, label %if.then10, label %sw.bb8.sw.bb15_crit_edge

sw.bb8.sw.bb15_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb15

if.then10:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %rate)
  %cmp11.not = icmp eq i32 %rate, 48000
  %. = select i1 %cmp11.not, i32 0, i32 -6
  br label %return

sw.bb15:                                          ; preds = %sw.bb8.sw.bb15_crit_edge, %do.end.sw.bb15_crit_edge
  %call16 = tail call fastcc i32 @set_sample_rate_v2v3(ptr noundef %chip, ptr noundef %fmt, i32 noundef %rate)
  br label %return

return:                                           ; preds = %sw.bb15, %if.then10, %set_sample_rate_v1.exit
  %retval.0 = phi i32 [ %retval.0.i28, %set_sample_rate_v1.exit ], [ %call16, %sw.bb15 ], [ %., %if.then10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_sample_rate_v2v3(ptr noundef %chip, ptr noundef %fmt, i32 noundef %rate) unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i32, align 4
  %visited.i82 = alloca [8 x i32], align 4
  %visited.i = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %visited.i) #5
  %0 = call ptr @memset(ptr %visited.i, i32 0, i32 32)
  %protocol.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 19
  %1 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %protocol.i, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %2, label %snd_usb_clock_find_source.exit.thread [
    i8 32, label %entry.snd_usb_clock_find_source.exit_crit_edge
    i8 48, label %entry.snd_usb_clock_find_source.exit_crit_edge102
  ]

entry.snd_usb_clock_find_source.exit_crit_edge102: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_usb_clock_find_source.exit

entry.snd_usb_clock_find_source.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_usb_clock_find_source.exit

snd_usb_clock_find_source.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %visited.i) #5
  br label %if.then

snd_usb_clock_find_source.exit:                   ; preds = %entry.snd_usb_clock_find_source.exit_crit_edge, %entry.snd_usb_clock_find_source.exit_crit_edge102
  %clock.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 26
  %4 = ptrtoint ptr %clock.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %clock.i, align 8
  %conv1.i = zext i8 %5 to i32
  %call.i = call fastcc i32 @__uac_clock_find_source(ptr noundef %chip, ptr noundef %fmt, i32 noundef %conv1.i, ptr noundef nonnull %visited.i, i1 noundef zeroext true) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %visited.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.thenthread-pre-split, label %snd_usb_clock_find_source.exit.if.end6_crit_edge

snd_usb_clock_find_source.exit.if.end6_crit_edge: ; preds = %snd_usb_clock_find_source.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.thenthread-pre-split:                          ; preds = %snd_usb_clock_find_source.exit
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %.pr = load i8, ptr %protocol.i, align 1
  br label %if.then

if.then:                                          ; preds = %if.thenthread-pre-split, %snd_usb_clock_find_source.exit.thread
  %7 = phi i8 [ %.pr, %if.thenthread-pre-split ], [ %2, %snd_usb_clock_find_source.exit.thread ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %visited.i82) #5
  %8 = call ptr @memset(ptr %visited.i82, i32 0, i32 32)
  %9 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %7, label %snd_usb_clock_find_source.exit89.thread [
    i8 32, label %if.then.snd_usb_clock_find_source.exit89_crit_edge
    i8 48, label %if.then.snd_usb_clock_find_source.exit89_crit_edge103
  ]

if.then.snd_usb_clock_find_source.exit89_crit_edge103: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_usb_clock_find_source.exit89

if.then.snd_usb_clock_find_source.exit89_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_usb_clock_find_source.exit89

snd_usb_clock_find_source.exit89:                 ; preds = %if.then.snd_usb_clock_find_source.exit89_crit_edge, %if.then.snd_usb_clock_find_source.exit89_crit_edge103
  %clock.i84 = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 26
  %10 = ptrtoint ptr %clock.i84 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %clock.i84, align 8
  %conv1.i85 = zext i8 %11 to i32
  %call.i86 = call fastcc i32 @__uac_clock_find_source(ptr noundef %chip, ptr noundef %fmt, i32 noundef %conv1.i85, ptr noundef nonnull %visited.i82, i1 noundef zeroext false) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %visited.i82) #5
  %quirk_flags = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 12
  %12 = ptrtoint ptr %quirk_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quirk_flags, align 4
  %and = and i32 %13, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %snd_usb_clock_find_source.exit89.cleanup_crit_edge

snd_usb_clock_find_source.exit89.cleanup_crit_edge: ; preds = %snd_usb_clock_find_source.exit89
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

snd_usb_clock_find_source.exit89.thread:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %visited.i82) #5
  %quirk_flags94 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 12
  %14 = ptrtoint ptr %quirk_flags94 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %quirk_flags94, align 4
  %and95 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool.not96 = icmp eq i32 %and95, 0
  %spec.select101 = select i1 %tobool.not96, i32 -22, i32 0
  br label %cleanup

if.end:                                           ; preds = %snd_usb_clock_find_source.exit89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %cmp3 = icmp slt i32 %call.i86, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end.if.end6_crit_edge, %snd_usb_clock_find_source.exit.if.end6_crit_edge
  %clock.0 = phi i32 [ %call.i86, %if.end.if.end6_crit_edge ], [ %call.i, %snd_usb_clock_find_source.exit.if.end6_crit_edge ]
  %iface = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 6
  %16 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %iface, align 8
  %altsetting = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 7
  %18 = ptrtoint ptr %altsetting to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %altsetting, align 1
  %dev1.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %20 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #5
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %data.i, align 4, !annotation !84
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %21, align 8
  %shl.i.i = shl i32 %24, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %ctrl_intf.i.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 28
  %25 = ptrtoint ptr %ctrl_intf.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctrl_intf.i.i, align 4
  %bInterfaceNumber.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %bInterfaceNumber.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bInterfaceNumber.i.i, align 2
  %conv.i.i = zext i8 %28 to i32
  %shl.i = shl i32 %clock.0, 8
  %or4.i = or i32 %shl.i, %conv.i.i
  %conv.i = trunc i32 %or4.i to i16
  %call5.i = call i32 @snd_usb_ctl_msg(ptr noundef %21, i32 noundef %or2.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 256, i16 noundef zeroext %conv.i, ptr noundef nonnull %data.i, i16 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %conv7 = zext i8 %19 to i32
  %conv = zext i8 %17 to i32
  %dev7.i = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev7.i, ptr noundef nonnull @.str.27, i32 noundef %conv, i32 noundef %conv7, i32 noundef %call5.i) #8
  br label %get_sample_rate_v2v3.exit

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data.i, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30) #5
  br label %get_sample_rate_v2v3.exit

get_sample_rate_v2v3.exit:                        ; preds = %if.end.i, %do.end.i
  %retval.0.i90 = phi i32 [ 0, %do.end.i ], [ %31, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i90, i32 %rate)
  %cmp9 = icmp eq i32 %retval.0.i90, %rate
  br i1 %cmp9, label %get_sample_rate_v2v3.exit.validation_crit_edge, label %if.end12

get_sample_rate_v2v3.exit.validation_crit_edge:   ; preds = %get_sample_rate_v2v3.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %validation

if.end12:                                         ; preds = %get_sample_rate_v2v3.exit
  %call13 = call i32 @snd_usb_set_sample_rate_v2v3(ptr noundef %chip, ptr noundef %fmt, i32 noundef %clock.0, i32 noundef %rate)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end, label %if.end22

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1.i, align 4
  %dev17 = getelementptr inbounds %struct.usb_device, ptr %33, i32 0, i32 15
  %34 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %iface, align 8
  %conv19 = zext i8 %35 to i32
  %36 = ptrtoint ptr %altsetting to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %altsetting, align 1
  %conv21 = zext i8 %37 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.40, i32 noundef %conv19, i32 noundef %conv21, i32 noundef %rate, i32 noundef %call13) #8
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool23.not = icmp eq i32 %call13, 0
  %spec.select = select i1 %tobool23.not, i32 %retval.0.i90, i32 %call13
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %rate)
  %cmp26.not = icmp eq i32 %spec.select, %rate
  br i1 %cmp26.not, label %if.end22.validation_crit_edge, label %do.body29

if.end22.validation_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %validation

do.body29:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_sample_rate_v2v3.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_sample_rate_v2v3, %if.then34)) #5
          to label %validation [label %if.then34], !srcloc !86

if.then34:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev1.i, align 4
  %dev36 = getelementptr inbounds %struct.usb_device, ptr %39, i32 0, i32 15
  %40 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %iface, align 8
  %conv38 = zext i8 %41 to i32
  %42 = ptrtoint ptr %altsetting to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %altsetting, align 1
  %conv40 = zext i8 %43 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_sample_rate_v2v3.__UNIQUE_ID_ddebug239, ptr noundef %dev36, ptr noundef nonnull @.str.42, i32 noundef %conv38, i32 noundef %conv40, i32 noundef %rate, i32 noundef %spec.select) #5
  br label %validation

validation:                                       ; preds = %if.then34, %do.body29, %if.end22.validation_crit_edge, %get_sample_rate_v2v3.exit.validation_crit_edge
  %call45 = call fastcc zeroext i1 @uac_clock_source_is_valid(ptr noundef %chip, ptr noundef %fmt, i32 noundef %clock.0)
  %. = select i1 %call45, i32 0, i32 -6
  br label %cleanup

cleanup:                                          ; preds = %validation, %do.end, %if.end.cleanup_crit_edge, %snd_usb_clock_find_source.exit89.thread, %snd_usb_clock_find_source.exit89.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %do.end ], [ 0, %snd_usb_clock_find_source.exit89.cleanup_crit_edge ], [ %call.i86, %if.end.cleanup_crit_edge ], [ %., %validation ], [ %spec.select101, %snd_usb_clock_find_source.exit89.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @uac_clock_source_is_valid(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %fmt, i32 noundef %source_id) unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i8, align 1
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !84
  %dev1 = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 4
  %protocol = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 19
  %3 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %protocol, align 1
  %ctrl_intf.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 28
  %5 = ptrtoint ptr %ctrl_intf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl_intf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %4)
  %cmp.i = icmp eq i8 %4, 48
  %conv.i = select i1 %cmp.i, i8 11, i8 10
  %extra.i.i = getelementptr inbounds %struct.usb_host_interface, ptr %6, i32 0, i32 2
  %extralen.i.i = getelementptr inbounds %struct.usb_host_interface, ptr %6, i32 0, i32 1
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %entry
  %cs.0.i.i = phi ptr [ null, %entry ], [ %call.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %7 = ptrtoint ptr %extra.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %extra.i.i, align 4
  %9 = ptrtoint ptr %extralen.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %extralen.i.i, align 4
  %call.i.i = tail call ptr @snd_usb_find_csint_desc(ptr noundef %8, i32 noundef %10, ptr noundef %cs.0.i.i, i8 noundef zeroext %conv.i) #5
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %while.cond.i.i.cleanup_crit_edge, label %while.body.i.i

while.cond.i.i.cleanup_crit_edge:                 ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.i.i:                                   ; preds = %while.cond.i.i
  %bClockID.i.i = getelementptr inbounds %struct.uac3_clock_source_descriptor, ptr %call.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %bClockID.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %cond.in.i.i = load i8, ptr %bClockID.i.i, align 1
  %cond.i.i = zext i8 %cond.in.i.i to i32
  %cmp3.i.i = icmp eq i32 %cond.i.i, %source_id
  br i1 %cmp3.i.i, label %if.end, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i.i

if.end:                                           ; preds = %while.body.i.i
  %12 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %13)
  %cmp = icmp eq i8 %13, 48
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %bmControls6 = getelementptr inbounds %struct.uac3_clock_source_descriptor, ptr %call.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %bmControls6 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %bmControls6, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %bmControls7 = getelementptr inbounds %struct.uac_clock_source_descriptor, ptr %call.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %bmControls7 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bmControls7, align 1
  %conv8 = zext i8 %18 to i32
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then5
  %bmControls.0 = phi i32 [ %16, %if.then5 ], [ %conv8, %if.else ]
  %19 = and i32 %bmControls.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not = icmp eq i32 %19, 0
  br i1 %tobool.i.not, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %2, align 8
  %shl.i = shl i32 %21, 8
  %or14 = or i32 %shl.i, -2147483520
  %22 = ptrtoint ptr %ctrl_intf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctrl_intf.i, align 4
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv.i45 = zext i8 %25 to i32
  %shl = shl i32 %source_id, 8
  %or16 = or i32 %shl, %conv.i45
  %conv17 = trunc i32 %or16 to i16
  %call18 = call i32 @snd_usb_ctl_msg(ptr noundef %2, i32 noundef %or14, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 512, i16 noundef zeroext %conv17, ptr noundef nonnull %data, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %do.end, label %if.end23

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %dev22 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev22, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %source_id) #8
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool24.not = icmp eq i8 %27, 0
  br i1 %tobool24.not, label %if.else26, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else26:                                        ; preds = %if.end23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #5
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %data.i, align 1, !annotation !84
  %29 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev1, align 4
  %31 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %protocol, align 1
  %33 = ptrtoint ptr %ctrl_intf.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctrl_intf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %32)
  %cmp.i.i = icmp eq i8 %32, 48
  %conv.i.i = select i1 %cmp.i.i, i8 11, i8 10
  %extra.i.i.i = getelementptr inbounds %struct.usb_host_interface, ptr %34, i32 0, i32 2
  %extralen.i.i.i = getelementptr inbounds %struct.usb_host_interface, ptr %34, i32 0, i32 1
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %if.else26
  %cs.0.i.i.i = phi ptr [ null, %if.else26 ], [ %call.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ]
  %35 = ptrtoint ptr %extra.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %extra.i.i.i, align 4
  %37 = ptrtoint ptr %extralen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %extralen.i.i.i, align 4
  %call.i.i.i = call ptr @snd_usb_find_csint_desc(ptr noundef %36, i32 noundef %38, ptr noundef %cs.0.i.i.i, i8 noundef zeroext %conv.i.i) #5
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %while.cond.i.i.i.uac_clock_source_is_valid_quirk.exit_crit_edge, label %while.body.i.i.i

while.cond.i.i.i.uac_clock_source_is_valid_quirk.exit_crit_edge: ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %uac_clock_source_is_valid_quirk.exit

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %bClockID.i.i.i = getelementptr inbounds %struct.uac3_clock_source_descriptor, ptr %call.i.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %bClockID.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %cond.in.i.i.i = load i8, ptr %bClockID.i.i.i, align 1
  %cond.i.i.i = zext i8 %cond.in.i.i.i to i32
  %cmp3.i.i.i = icmp eq i32 %cond.i.i.i, %source_id
  br i1 %cmp3.i.i.i, label %if.end.i, label %while.body.i.i.i.while.cond.i.i.i_crit_edge

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i.i.i

if.end.i:                                         ; preds = %while.body.i.i.i
  %40 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %41)
  %cmp.i46 = icmp eq i8 %41, 32
  br i1 %cmp.i46, label %if.then5.i, label %if.end.i.if.end19.i_crit_edge

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i

if.then5.i:                                       ; preds = %if.end.i
  %nr_rates.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 24
  %42 = ptrtoint ptr %nr_rates.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr_rates.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp6.i = icmp eq i32 %43, 1
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.then5.i.if.end19.i_crit_edge

if.then5.i.if.end19.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i

land.lhs.true.i:                                  ; preds = %if.then5.i
  %clock.i = getelementptr inbounds %struct.audioformat, ptr %fmt, i32 0, i32 26
  %44 = ptrtoint ptr %clock.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %clock.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %cond.in.i.i.i)
  %cmp10.i = icmp eq i8 %45, %cond.in.i.i.i
  br i1 %cmp10.i, label %land.lhs.true12.i, label %land.lhs.true.i.if.end19.i_crit_edge

land.lhs.true.i.if.end19.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i

land.lhs.true12.i:                                ; preds = %land.lhs.true.i
  %bmAttributes.i = getelementptr inbounds %struct.uac_clock_source_descriptor, ptr %call.i.i.i, i32 0, i32 4
  %46 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %bmAttributes.i, align 1
  %48 = and i8 %47, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp15.not.i = icmp eq i8 %48, 0
  br i1 %cmp15.not.i, label %land.lhs.true12.i.if.end19.i_crit_edge, label %land.lhs.true12.i.uac_clock_source_is_valid_quirk.exit_crit_edge

land.lhs.true12.i.uac_clock_source_is_valid_quirk.exit_crit_edge: ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %uac_clock_source_is_valid_quirk.exit

land.lhs.true12.i.if.end19.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i

if.end19.i:                                       ; preds = %land.lhs.true12.i.if.end19.i_crit_edge, %land.lhs.true.i.if.end19.i_crit_edge, %if.then5.i.if.end19.i_crit_edge, %if.end.i.if.end19.i_crit_edge
  %usb_id.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 4
  %49 = ptrtoint ptr %usb_id.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %usb_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 134021124, i32 %50)
  %cmp20.i = icmp eq i32 %50, 134021124
  br i1 %cmp20.i, label %if.end19.i.while.body.i_crit_edge, label %if.end19.i.uac_clock_source_is_valid_quirk.exit_crit_edge

if.end19.i.uac_clock_source_is_valid_quirk.exit_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %uac_clock_source_is_valid_quirk.exit

if.end19.i.while.body.i_crit_edge:                ; preds = %if.end19.i
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end19.i.while.body.i_crit_edge
  %count.068.i = phi i32 [ %inc.i, %cleanup.i.while.body.i_crit_edge ], [ 0, %if.end19.i.while.body.i_crit_edge ]
  call void @msleep(i32 noundef 100) #5
  %51 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %30, align 8
  %shl.i.i = shl i32 %52, 8
  %or27.i = or i32 %shl.i.i, -2147483520
  %53 = ptrtoint ptr %ctrl_intf.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ctrl_intf.i, align 4
  %bInterfaceNumber.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %bInterfaceNumber.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bInterfaceNumber.i.i, align 2
  %conv.i62.i = zext i8 %56 to i32
  %or29.i = or i32 %shl, %conv.i62.i
  %conv30.i = trunc i32 %or29.i to i16
  %call31.i = call i32 @snd_usb_ctl_msg(ptr noundef %30, i32 noundef %or27.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 512, i16 noundef zeroext %conv30.i, ptr noundef nonnull %data.i, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %cleanup.thread.i, label %cleanup.i

cleanup.thread.i:                                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev35.i = getelementptr inbounds %struct.usb_device, ptr %30, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev35.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21, i32 noundef %source_id) #8
  br label %uac_clock_source_is_valid_quirk.exit

cleanup.i:                                        ; preds = %while.body.i
  %57 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool37.i = icmp ne i8 %58, 0
  %inc.i = add nuw nsw i32 %count.068.i, 1
  %tobool23.not.i = xor i1 %tobool37.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %count.068.i)
  %cmp24.i = icmp ult i32 %count.068.i, 49
  %or.cond.i = select i1 %tobool23.not.i, i1 %cmp24.i, i1 false
  br i1 %or.cond.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.uac_clock_source_is_valid_quirk.exit_crit_edge

cleanup.i.uac_clock_source_is_valid_quirk.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %uac_clock_source_is_valid_quirk.exit

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

uac_clock_source_is_valid_quirk.exit:             ; preds = %cleanup.i.uac_clock_source_is_valid_quirk.exit_crit_edge, %cleanup.thread.i, %if.end19.i.uac_clock_source_is_valid_quirk.exit_crit_edge, %land.lhs.true12.i.uac_clock_source_is_valid_quirk.exit_crit_edge, %while.cond.i.i.i.uac_clock_source_is_valid_quirk.exit_crit_edge
  %retval.2.i = phi i1 [ true, %land.lhs.true12.i.uac_clock_source_is_valid_quirk.exit_crit_edge ], [ false, %if.end19.i.uac_clock_source_is_valid_quirk.exit_crit_edge ], [ false, %cleanup.thread.i ], [ %tobool37.i, %cleanup.i.uac_clock_source_is_valid_quirk.exit_crit_edge ], [ false, %while.cond.i.i.i.uac_clock_source_is_valid_quirk.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #5
  br label %cleanup

cleanup:                                          ; preds = %uac_clock_source_is_valid_quirk.exit, %if.end23.cleanup_crit_edge, %do.end, %if.end9.cleanup_crit_edge, %while.cond.i.i.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.end ], [ %retval.2.i, %uac_clock_source_is_valid_quirk.exit ], [ true, %if.end9.cleanup_crit_edge ], [ true, %if.end23.cleanup_crit_edge ], [ false, %while.cond.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #5
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uac_clock_selector_set_val(ptr nocapture noundef readonly %chip, i32 noundef %selector_id, i8 noundef zeroext %pin) unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca i8, align 1
  %pin.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pin.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %pin, ptr %pin.addr, align 1
  %dev = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %shl.i = shl i32 %4, 8
  %or = or i32 %shl.i, -2147483648
  %ctrl_intf.i = getelementptr inbounds %struct.snd_usb_audio, ptr %chip, i32 0, i32 28
  %5 = ptrtoint ptr %ctrl_intf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl_intf.i, align 4
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv.i = zext i8 %8 to i32
  %shl = shl i32 %selector_id, 8
  %or3 = or i32 %shl, %conv.i
  %conv = trunc i32 %or3 to i16
  %call4 = call i32 @snd_usb_ctl_msg(ptr noundef %2, i32 noundef %or, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext 256, i16 noundef zeroext %conv, ptr noundef nonnull %pin.addr, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp6.not = icmp eq i32 %call4, 1
  br i1 %cmp6.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %dev10 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.22, i32 noundef %selector_id, i32 noundef %call4) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #5
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %buf.i, align 1, !annotation !84
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i = shl i32 %15, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %16 = ptrtoint ptr %ctrl_intf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl_intf.i, align 4
  %bInterfaceNumber.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %bInterfaceNumber.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bInterfaceNumber.i.i, align 2
  %conv.i.i = zext i8 %19 to i32
  %or4.i = or i32 %shl, %conv.i.i
  %conv.i45 = trunc i32 %or4.i to i16
  %call5.i = call i32 @snd_usb_ctl_msg(ptr noundef %13, i32 noundef %or2.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 256, i16 noundef zeroext %conv.i45, ptr noundef nonnull %buf.i, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %uac_clock_selector_get_val.exit.thread, label %uac_clock_selector_get_val.exit

uac_clock_selector_get_val.exit.thread:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #5
  br label %cleanup

uac_clock_selector_get_val.exit:                  ; preds = %if.end11
  %20 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %buf.i, align 1
  %conv7.i = zext i8 %21 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #5
  %22 = ptrtoint ptr %pin.addr to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pin.addr, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp18.not = icmp eq i8 %21, %23
  br i1 %cmp18.not, label %uac_clock_selector_get_val.exit.cleanup_crit_edge, label %do.end23

uac_clock_selector_get_val.exit.cleanup_crit_edge: ; preds = %uac_clock_selector_get_val.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end23:                                         ; preds = %uac_clock_selector_get_val.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv17 = zext i8 %23 to i32
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %dev25 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.25, i32 noundef %selector_id, i32 noundef %conv17, i32 noundef %conv7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %uac_clock_selector_get_val.exit.cleanup_crit_edge, %uac_clock_selector_get_val.exit.thread, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end23 ], [ %call4, %entry.cleanup_crit_edge ], [ %conv7.i, %uac_clock_selector_get_val.exit.cleanup_crit_edge ], [ %call5.i, %uac_clock_selector_get_val.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_usb_find_csint_desc(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/usb/clock.c", i32 585, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @snd_usb_init_sample_rate.__UNIQUE_ID_ddebug240, !1, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/usb/clock.c", i32 268, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__uac_clock_find_source._entry, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @__uac_clock_find_source._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/usb/clock.c", i32 280, i32 4}
!15 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__uac_clock_find_source._entry.8, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @__uac_clock_find_source._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/usb/clock.c", i32 312, i32 4}
!20 = !{ptr @__uac_clock_find_source._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @__uac_clock_find_source._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/usb/clock.c", i32 354, i32 4}
!24 = !{ptr @.str.17, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @__uac_clock_find_source._entry.15, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @__uac_clock_find_source._entry_ptr.18, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.19, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/usb/clock.c", i32 242, i32 3}
!29 = !{ptr @.str.20, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @uac_clock_source_is_valid._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @uac_clock_source_is_valid._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/usb/clock.c", i32 197, i32 5}
!34 = !{ptr @uac_clock_source_is_valid_quirk._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @uac_clock_source_is_valid_quirk._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/usb/clock.c", i32 129, i32 3}
!38 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @uac_clock_selector_set_val._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @uac_clock_selector_set_val._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/usb/clock.c", i32 140, i32 3}
!43 = !{ptr @uac_clock_selector_set_val._entry.24, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @uac_clock_selector_set_val._entry_ptr.26, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/usb/clock.c", i32 471, i32 3}
!47 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @get_sample_rate_v2v3._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @get_sample_rate_v2v3._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/usb/clock.c", i32 419, i32 3}
!52 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @set_sample_rate_v1._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @set_sample_rate_v1._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/usb/clock.c", i32 437, i32 3}
!57 = !{ptr @set_sample_rate_v1._entry.31, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @set_sample_rate_v1._entry_ptr.33, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/usb/clock.c", i32 445, i32 3}
!61 = !{ptr @set_sample_rate_v1._entry.34, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @set_sample_rate_v1._entry_ptr.36, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.38, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/usb/clock.c", i32 451, i32 3}
!65 = !{ptr @set_sample_rate_v1._entry.37, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @set_sample_rate_v1._entry_ptr.39, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.40, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/usb/clock.c", i32 559, i32 3}
!69 = !{ptr @.str.41, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @set_sample_rate_v2v3._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @set_sample_rate_v2v3._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.42, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/usb/clock.c", i32 569, i32 3}
!74 = !{ptr @set_sample_rate_v2v3.__UNIQUE_ID_ddebug239, !73, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{!"auto-init"}
!85 = !{i8 0, i8 2}
!86 = !{i64 2148947717, i64 2148947722, i64 2148947735, i64 2148947779, i64 2148947813, i64 2148947834}
