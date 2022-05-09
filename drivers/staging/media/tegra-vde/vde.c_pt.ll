; ModuleID = '/llk/IR_all_yes/drivers/staging/media/tegra-vde/vde.c_pt.bc'
source_filename = "../drivers/staging/media/tegra-vde/vde.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.95 }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.97, %struct.trace_event, ptr, ptr, %union.anon.98, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.97 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.98 = type { ptr }
%union.anon.99 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.100 = type { %struct.bpf_raw_event_map }
%union.anon.101 = type { %struct.bpf_raw_event_map }
%union.anon.102 = type { %struct.bpf_raw_event_map }
%union.anon.103 = type { %struct.bpf_raw_event_map }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.trace_print_flags = type { i32, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.tegra_vde_soc = type { i8 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.tegra_vde = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.list_head, %struct.miscdevice, ptr, ptr, ptr, %struct.completion, ptr, ptr, ptr, %struct.iova_domain, ptr, ptr, ptr, ptr, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.rb_root = type { ptr }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.trace_event_raw_register_access = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_vde_setup_iram_entry = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_vde_ref_l0 = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_vde_ref_l1 = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.tegra_core_opp_params = type { i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tegra_vde_bo = type { ptr, %struct.sg_table, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.tegra_vde_h264_decoder_ctx = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [11 x i32] }
%struct.file = type { %union.anon.16, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.tegra_vde_h264_frame = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32] }
%struct.video_frame = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32 }

@__tpstrtab_vde_writel = internal constant [11 x i8] c"vde_writel\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_vde_writel = dso_local global %struct.static_call_key { ptr @__traceiter_vde_writel }, align 4
@__tracepoint_vde_writel = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_vde_writel, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_vde_writel, ptr null, ptr @__traceiter_vde_writel, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_vde_writel = internal constant ptr @__tracepoint_vde_writel, section "__tracepoints_ptrs", align 4
@__tpstrtab_vde_readl = internal constant [10 x i8] c"vde_readl\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_vde_readl = dso_local global %struct.static_call_key { ptr @__traceiter_vde_readl }, align 4
@__tracepoint_vde_readl = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_vde_readl, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_vde_readl, ptr null, ptr @__traceiter_vde_readl, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_vde_readl = internal constant ptr @__tracepoint_vde_readl, section "__tracepoints_ptrs", align 4
@__tpstrtab_vde_setup_iram_entry = internal constant [21 x i8] c"vde_setup_iram_entry\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_vde_setup_iram_entry = dso_local global %struct.static_call_key { ptr @__traceiter_vde_setup_iram_entry }, align 4
@__tracepoint_vde_setup_iram_entry = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_vde_setup_iram_entry, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_vde_setup_iram_entry, ptr null, ptr @__traceiter_vde_setup_iram_entry, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_vde_setup_iram_entry = internal constant ptr @__tracepoint_vde_setup_iram_entry, section "__tracepoints_ptrs", align 4
@__tpstrtab_vde_ref_l0 = internal constant [11 x i8] c"vde_ref_l0\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_vde_ref_l0 = dso_local global %struct.static_call_key { ptr @__traceiter_vde_ref_l0 }, align 4
@__tracepoint_vde_ref_l0 = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_vde_ref_l0, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_vde_ref_l0, ptr null, ptr @__traceiter_vde_ref_l0, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_vde_ref_l0 = internal constant ptr @__tracepoint_vde_ref_l0, section "__tracepoints_ptrs", align 4
@__tpstrtab_vde_ref_l1 = internal constant [11 x i8] c"vde_ref_l1\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_vde_ref_l1 = dso_local global %struct.static_call_key { ptr @__traceiter_vde_ref_l1 }, align 4
@__tracepoint_vde_ref_l1 = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_vde_ref_l1, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_vde_ref_l1, ptr null, ptr @__traceiter_vde_ref_l1, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_vde_ref_l1 = internal constant ptr @__tracepoint_vde_ref_l1, section "__tracepoints_ptrs", align 4
@str__tegra_vde__trace_system_name = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra_vde\00", [22 x i8] zeroinitializer }, align 32
@trace_event_fields_register_access = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.11, %union.anon.95 { %struct.anon.96 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_register_access = internal global %struct.trace_event_class { ptr @str__tegra_vde__trace_system_name, ptr @trace_event_raw_event_register_access, ptr @perf_trace_register_access, ptr @trace_event_reg, ptr @trace_event_fields_register_access, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_register_access, i64 24), ptr getelementptr (i8, ptr @event_class_register_access, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_register_access = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_register_access, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_register_access = internal global { [64 x i8], [32 x i8] } { [64 x i8] c"\22%s:0x%03x 0x%08x\22, __get_str(hw_name), REC->offset, REC->value\00", [32 x i8] zeroinitializer }, align 32
@event_vde_writel = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_register_access, %union.anon.97 { ptr @__tracepoint_vde_writel }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_register_access }, ptr @print_fmt_register_access, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_vde_writel = internal global ptr @event_vde_writel, section "_ftrace_events", align 4
@event_vde_readl = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_register_access, %union.anon.97 { ptr @__tracepoint_vde_readl }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_register_access }, ptr @print_fmt_register_access, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_vde_readl = internal global ptr @event_vde_readl, section "_ftrace_events", align 4
@trace_event_fields_vde_setup_iram_entry = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.17, %union.anon.95 { %struct.anon.96 { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.95 { %struct.anon.96 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_vde_setup_iram_entry = internal global %struct.trace_event_class { ptr @str__tegra_vde__trace_system_name, ptr @trace_event_raw_event_vde_setup_iram_entry, ptr @perf_trace_vde_setup_iram_entry, ptr @trace_event_reg, ptr @trace_event_fields_vde_setup_iram_entry, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_vde_setup_iram_entry, i64 24), ptr getelementptr (i8, ptr @event_class_vde_setup_iram_entry, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_vde_setup_iram_entry = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_vde_setup_iram_entry, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_vde_setup_iram_entry = internal global { [187 x i8], [37 x i8] } { [187 x i8] c"\22[%u][%u] = { 0x%08x (flags = \22%s\22, frame_num = %u); 0x%08x }\22, REC->table, REC->row, REC->value, __print_flags(REC->value, \22 \22, { (1 << 25), \22B\22 }), REC->value & 0x7FFFFF, REC->aux_addr\00", [37 x i8] zeroinitializer }, align 32
@event_vde_setup_iram_entry = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_vde_setup_iram_entry, %union.anon.97 { ptr @__tracepoint_vde_setup_iram_entry }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_vde_setup_iram_entry }, ptr @print_fmt_vde_setup_iram_entry, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_vde_setup_iram_entry = internal global ptr @event_vde_setup_iram_entry, section "_ftrace_events", align 4
@trace_event_fields_vde_ref_l0 = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.17, %union.anon.95 { %struct.anon.96 { ptr @.str.24, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_vde_ref_l0 = internal global %struct.trace_event_class { ptr @str__tegra_vde__trace_system_name, ptr @trace_event_raw_event_vde_ref_l0, ptr @perf_trace_vde_ref_l0, ptr @trace_event_reg, ptr @trace_event_fields_vde_ref_l0, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_vde_ref_l0, i64 24), ptr getelementptr (i8, ptr @event_class_vde_ref_l0, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_vde_ref_l0 = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_vde_ref_l0, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_vde_ref_l0 = internal global { [55 x i8], [41 x i8] } { [55 x i8] c"\22REF L0: DPB: Frame 0: frame_num = %u\22, REC->frame_num\00", [41 x i8] zeroinitializer }, align 32
@event_vde_ref_l0 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_vde_ref_l0, %union.anon.97 { ptr @__tracepoint_vde_ref_l0 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_vde_ref_l0 }, ptr @print_fmt_vde_ref_l0, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_vde_ref_l0 = internal global ptr @event_vde_ref_l0, section "_ftrace_events", align 4
@trace_event_fields_vde_ref_l1 = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.17, %union.anon.95 { %struct.anon.96 { ptr @.str.26, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.95 { %struct.anon.96 { ptr @.str.27, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_vde_ref_l1 = internal global %struct.trace_event_class { ptr @str__tegra_vde__trace_system_name, ptr @trace_event_raw_event_vde_ref_l1, ptr @perf_trace_vde_ref_l1, ptr @trace_event_reg, ptr @trace_event_fields_vde_ref_l1, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_vde_ref_l1, i64 24), ptr getelementptr (i8, ptr @event_class_vde_ref_l1, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_vde_ref_l1 = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_vde_ref_l1, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_vde_ref_l1 = internal global { [105 x i8], [55 x i8] } { [105 x i8] c"\22REF L1: with_later_poc_nb %u, with_earlier_poc_nb %u\22, REC->with_later_poc_nb, REC->with_earlier_poc_nb\00", [55 x i8] zeroinitializer }, align 32
@event_vde_ref_l1 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_vde_ref_l1, %union.anon.97 { ptr @__tracepoint_vde_ref_l1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_vde_ref_l1 }, ptr @print_fmt_vde_ref_l1, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_vde_ref_l1 = internal global ptr @event_vde_ref_l1, section "_ftrace_events", align 4
@__bpf_trace_tp_map_vde_writel = internal global %union.anon.99 { %struct.bpf_raw_event_map { ptr @__tracepoint_vde_writel, ptr @__bpf_trace_register_access, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_vde_readl = internal global %union.anon.100 { %struct.bpf_raw_event_map { ptr @__tracepoint_vde_readl, ptr @__bpf_trace_register_access, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_vde_setup_iram_entry = internal global %union.anon.101 { %struct.bpf_raw_event_map { ptr @__tracepoint_vde_setup_iram_entry, ptr @__bpf_trace_vde_setup_iram_entry, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_vde_ref_l0 = internal global %union.anon.102 { %struct.bpf_raw_event_map { ptr @__tracepoint_vde_ref_l0, ptr @__bpf_trace_vde_ref_l0, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_vde_ref_l1 = internal global %union.anon.103 { %struct.bpf_raw_event_map { ptr @__tracepoint_vde_ref_l1, ptr @__bpf_trace_vde_ref_l1, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__initcall__kmod_tegra_vde__285_1354_tegra_vde_driver_init6 = internal global ptr @tegra_vde_driver_init, section ".initcall6.init", align 4
@tegra_vde_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_vde_probe, ptr @tegra_vde_remove, ptr @tegra_vde_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.29, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_vde_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_vde_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_vde_driver_exit = internal global ptr @tegra_vde_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description286 = internal constant [56 x i8] c"tegra_vde.description=NVIDIA Tegra Video Decoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author287 = internal constant [52 x i8] c"tegra_vde.author=Dmitry Osipenko <digetx@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file288 = internal constant [57 x i8] c"tegra_vde.file=drivers/staging/media/tegra-vde/tegra-vde\00", section ".modinfo", align 1
@__UNIQUE_ID_license289 = internal constant [22 x i8] c"tegra_vde.license=GPL\00", section ".modinfo", align 1
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SXE\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BSEV\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MBE\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PPE\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MCE\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TFE\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PPB\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VDMA\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FRAMEID\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hw_name\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"u32\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"value\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s:0x%03x 0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"table\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"row\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aux_addr\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[%u][%u] = { 0x%08x (flags = \22%s\22, frame_num = %u); 0x%08x }\0A\00", [34 x i8] zeroinitializer }, align 32
@trace_raw_output_vde_setup_iram_entry.__flags = internal constant { [2 x %struct.trace_print_flags], [16 x i8] } { [2 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 33554432, ptr @.str.22 }, %struct.trace_print_flags { i32 -1, ptr null }], [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"frame_num\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"REF L0: DPB: Frame 0: frame_num = %u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"with_later_poc_nb\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"with_earlier_poc_nb\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"REF L1: with_later_poc_nb %u, with_earlier_poc_nb %u\0A\00", [42 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra-vde\00", [22 x i8] zeroinitializer }, align 32
@tegra_vde_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-vde\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_vde_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-vde\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra114_vde_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-vde\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_vde_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-vde\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_vde_soc }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@tegra_vde_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_vde_pm_suspend, ptr @tegra_vde_pm_resume, ptr @tegra_vde_pm_suspend, ptr @tegra_vde_pm_resume, ptr @tegra_vde_pm_suspend, ptr @tegra_vde_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_vde_runtime_suspend, ptr @tegra_vde_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sxe\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bsev\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mbe\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ppe\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mce\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tfe\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ppb\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdma\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"frameid\00", [24 x i8] zeroinitializer }, align 32
@tegra_vde_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.41, i32 1131, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Could not get VDE clk %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra_vde_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/staging/media/tegra-vde/vde.c\00", [58 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_vde_probe._entry_ptr = internal global ptr @tegra_vde_probe._entry, section ".printk_index", align 4
@tegra_vde_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.41, i32 1138, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not get VDE reset %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_vde_probe._entry_ptr.46 = internal global ptr @tegra_vde_probe._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mc\00", [29 x i8] zeroinitializer }, align 32
@tegra_vde_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.40, ptr @.str.41, i32 1145, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Could not get MC reset %d\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_vde_probe._entry_ptr.50 = internal global ptr @tegra_vde_probe._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sync-token\00", [21 x i8] zeroinitializer }, align 32
@tegra_vde_probe._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.40, ptr @.str.41, i32 1156, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Could not request IRQ %d\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_vde_probe._entry_ptr.54 = internal global ptr @tegra_vde_probe._entry.52, section ".printk_index", align 4
@tegra_vde_probe._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.40, ptr @.str.41, i32 1162, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could initialize OPP table %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_vde_probe._entry_ptr.57 = internal global ptr @tegra_vde_probe._entry.55, section ".printk_index", align 4
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iram\00", [27 x i8] zeroinitializer }, align 32
@tegra_vde_probe._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.40, ptr @.str.41, i32 1168, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not get IRAM pool\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra_vde_probe._entry_ptr.61 = internal global ptr @tegra_vde_probe._entry.59, section ".printk_index", align 4
@tegra_vde_probe._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.40, ptr @.str.41, i32 1176, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Could not reserve IRAM\0A\00", [40 x i8] zeroinitializer }, align 32
@tegra_vde_probe._entry_ptr.64 = internal global ptr @tegra_vde_probe._entry.62, section ".printk_index", align 4
@tegra_vde_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&vde->map_lock\00", [17 x i8] zeroinitializer }, align 32
@tegra_vde_probe.__key.66 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&vde->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra_vde\00", [22 x i8] zeroinitializer }, align 32
@tegra_vde_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_vde_unlocked_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @tegra_vde_release_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@tegra_vde_probe._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.40, ptr @.str.41, i32 1192, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize IOMMU: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_vde_probe._entry_ptr.71 = internal global ptr @tegra_vde_probe._entry.69, section ".printk_index", align 4
@tegra_vde_probe._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.40, ptr @.str.41, i32 1213, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to allocate secure BO: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@tegra_vde_probe._entry_ptr.74 = internal global ptr @tegra_vde_probe._entry.72, section ".printk_index", align 4
@tegra_vde_probe._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.40, ptr @.str.41, i32 1219, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to register misc device: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra_vde_probe._entry_ptr.77 = internal global ptr @tegra_vde_probe._entry.75, section ".printk_index", align 4
@.str.78 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/staging/media/tegra-vde/trace.h\00", [56 x i8] zeroinitializer }, align 32
@trace_vde_readl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.79 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@trace_vde_writel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@tegra_vde_unlocked_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.41, i32 977, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid IOCTL command %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_vde_unlocked_ioctl\00", [39 x i8] zeroinitializer }, align 32
@tegra_vde_unlocked_ioctl._entry_ptr = internal global ptr @tegra_vde_unlocked_ioctl._entry, section ".printk_index", align 4
@tegra_vde_ioctl_decode_h264._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.41, i32 883, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"DEC start: Failed to assert MC reset: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tegra_vde_ioctl_decode_h264\00", [36 x i8] zeroinitializer }, align 32
@tegra_vde_ioctl_decode_h264._entry_ptr = internal global ptr @tegra_vde_ioctl_decode_h264._entry, section ".printk_index", align 4
@tegra_vde_ioctl_decode_h264._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.41, i32 889, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DEC start: Failed to reset HW: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_vde_ioctl_decode_h264._entry_ptr.88 = internal global ptr @tegra_vde_ioctl_decode_h264._entry.86, section ".printk_index", align 4
@tegra_vde_ioctl_decode_h264._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.85, ptr @.str.41, i32 896, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"DEC start: Failed to deassert MC reset: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@tegra_vde_ioctl_decode_h264._entry_ptr.91 = internal global ptr @tegra_vde_ioctl_decode_h264._entry.89, section ".printk_index", align 4
@tegra_vde_ioctl_decode_h264._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.85, ptr @.str.41, i32 917, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Decoding failed: read 0x%X bytes, %u macroblocks parsed\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra_vde_ioctl_decode_h264._entry_ptr.94 = internal global ptr @tegra_vde_ioctl_decode_h264._entry.92, section ".printk_index", align 4
@tegra_vde_ioctl_decode_h264._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.85, ptr @.str.41, i32 931, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DEC end: Failed to assert MC reset: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@tegra_vde_ioctl_decode_h264._entry_ptr.97 = internal global ptr @tegra_vde_ioctl_decode_h264._entry.95, section ".printk_index", align 4
@tegra_vde_ioctl_decode_h264._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.85, ptr @.str.41, i32 935, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DEC end: Failed to assert HW reset: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@tegra_vde_ioctl_decode_h264._entry_ptr.100 = internal global ptr @tegra_vde_ioctl_decode_h264._entry.98, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.101 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@tegra_vde_validate_h264_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.41, i32 721, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Bad DPB size %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tegra_vde_validate_h264_ctx\00", [36 x i8] zeroinitializer }, align 32
@tegra_vde_validate_h264_ctx._entry_ptr = internal global ptr @tegra_vde_validate_h264_ctx._entry, section ".printk_index", align 4
@tegra_vde_validate_h264_ctx._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.41, i32 726, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Bad level value %u\0A\00", [44 x i8] zeroinitializer }, align 32
@tegra_vde_validate_h264_ctx._entry_ptr.108 = internal global ptr @tegra_vde_validate_h264_ctx._entry.106, section ".printk_index", align 4
@tegra_vde_validate_h264_ctx._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.105, ptr @.str.41, i32 731, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Bad pic_init_qp value %u\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_vde_validate_h264_ctx._entry_ptr.111 = internal global ptr @tegra_vde_validate_h264_ctx._entry.109, section ".printk_index", align 4
@tegra_vde_validate_h264_ctx._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.105, ptr @.str.41, i32 737, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Bad log2_max_pic_order_cnt_lsb value %u\0A\00", [55 x i8] zeroinitializer }, align 32
@tegra_vde_validate_h264_ctx._entry_ptr.114 = internal global ptr @tegra_vde_validate_h264_ctx._entry.112, section ".printk_index", align 4
@tegra_vde_validate_h264_ctx._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.105, ptr @.str.41, i32 743, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Bad log2_max_frame_num value %u\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_vde_validate_h264_ctx._entry_ptr.117 = internal global ptr @tegra_vde_validate_h264_ctx._entry.115, section ".printk_index", align 4
@tegra_vde_validate_h264_ctx._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.105, ptr @.str.41, i32 749, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Bad chroma_qp_index_offset value %u\0A\00", [59 x i8] zeroinitializer }, align 32
@tegra_vde_validate_h264_ctx._entry_ptr.120 = internal global ptr @tegra_vde_validate_h264_ctx._entry.118, section ".printk_index", align 4
@tegra_vde_validate_h264_ctx._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.105, ptr @.str.41, i32 755, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Bad pic_order_cnt_type value %u\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_vde_validate_h264_ctx._entry_ptr.123 = internal global ptr @tegra_vde_validate_h264_ctx._entry.121, section ".printk_index", align 4
@tegra_vde_validate_h264_ctx._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.105, ptr @.str.41, i32 761, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Bad num_ref_idx_l0_active_minus1 value %u\0A\00", [53 x i8] zeroinitializer }, align 32
@tegra_vde_validate_h264_ctx._entry_ptr.126 = internal global ptr @tegra_vde_validate_h264_ctx._entry.124, section ".printk_index", align 4
@tegra_vde_validate_h264_ctx._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.105, ptr @.str.41, i32 767, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Bad num_ref_idx_l1_active_minus1 value %u\0A\00", [53 x i8] zeroinitializer }, align 32
@tegra_vde_validate_h264_ctx._entry_ptr.129 = internal global ptr @tegra_vde_validate_h264_ctx._entry.127, section ".printk_index", align 4
@tegra_vde_validate_h264_ctx._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.105, ptr @.str.41, i32 773, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Bad pic_width_in_mbs value %u\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_vde_validate_h264_ctx._entry_ptr.132 = internal global ptr @tegra_vde_validate_h264_ctx._entry.130, section ".printk_index", align 4
@tegra_vde_validate_h264_ctx._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.105, ptr @.str.41, i32 779, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Bad pic_height_in_mbs value %u\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_vde_validate_h264_ctx._entry_ptr.135 = internal global ptr @tegra_vde_validate_h264_ctx._entry.133, section ".printk_index", align 4
@tegra_vde_attach_dmabuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.41, i32 600, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid dmabuf FD\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_vde_attach_dmabuf\00", [40 x i8] zeroinitializer }, align 32
@tegra_vde_attach_dmabuf._entry_ptr = internal global ptr @tegra_vde_attach_dmabuf._entry, section ".printk_index", align 4
@tegra_vde_attach_dmabuf._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.137, ptr @.str.41, i32 606, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Unaligned dmabuf 0x%zX, should be aligned to 0x%zX\0A\00", [44 x i8] zeroinitializer }, align 32
@tegra_vde_attach_dmabuf._entry_ptr.140 = internal global ptr @tegra_vde_attach_dmabuf._entry.138, section ".printk_index", align 4
@tegra_vde_attach_dmabuf._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.137, ptr @.str.41, i32 612, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Too small dmabuf size %zu @0x%lX, should be at least %zu\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_vde_attach_dmabuf._entry_ptr.143 = internal global ptr @tegra_vde_attach_dmabuf._entry.141, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tegra_vde_validate_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.41, i32 710, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Bad frame_num %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_vde_validate_frame\00", [39 x i8] zeroinitializer }, align 32
@tegra_vde_validate_frame._entry_ptr = internal global ptr @tegra_vde_validate_frame._entry, section ".printk_index", align 4
@tegra_vde_setup_hw_context._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.41, i32 547, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MBE frames setup failed %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_vde_setup_hw_context\00", [37 x i8] zeroinitializer }, align 32
@tegra_vde_setup_hw_context._entry_ptr = internal global ptr @tegra_vde_setup_hw_context._entry, section ".printk_index", align 4
@tegra_vde_setup_hw_context._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.147, ptr @.str.41, i32 567, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MBE programming failed %d\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_vde_setup_hw_context._entry_ptr.150 = internal global ptr @tegra_vde_setup_hw_context._entry.148, section ".printk_index", align 4
@trace_vde_ref_l0.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_vde_setup_iram_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_vde_ref_l1.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tegra_vde_wait_bsev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.41, i32 241, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"BSEV unknown bit timeout\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tegra_vde_wait_bsev\00", [44 x i8] zeroinitializer }, align 32
@tegra_vde_wait_bsev._entry_ptr = internal global ptr @tegra_vde_wait_bsev._entry, section ".printk_index", align 4
@tegra_vde_wait_bsev._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.152, ptr @.str.41, i32 248, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"BSEV ICMDQUE flush timeout\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_vde_wait_bsev._entry_ptr.155 = internal global ptr @tegra_vde_wait_bsev._entry.153, section ".printk_index", align 4
@tegra_vde_wait_bsev._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.152, ptr @.str.41, i32 258, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"BSEV DMA timeout\0A\00", [46 x i8] zeroinitializer }, align 32
@tegra_vde_wait_bsev._entry_ptr.158 = internal global ptr @tegra_vde_wait_bsev._entry.156, section ".printk_index", align 4
@tegra_vde_alloc_bo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.41, i32 114, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to allocate DMA buffer of size: %zu\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra_vde_alloc_bo\00", [45 x i8] zeroinitializer }, align 32
@tegra_vde_alloc_bo._entry_ptr = internal global ptr @tegra_vde_alloc_bo._entry, section ".printk_index", align 4
@tegra_vde_alloc_bo._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.160, ptr @.str.41, i32 122, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to get DMA buffer SG table: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra_vde_alloc_bo._entry_ptr.163 = internal global ptr @tegra_vde_alloc_bo._entry.161, section ".printk_index", align 4
@tegra_vde_alloc_bo._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.160, ptr @.str.41, i32 128, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to map DMA buffer SG table: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra_vde_alloc_bo._entry_ptr.166 = internal global ptr @tegra_vde_alloc_bo._entry.164, section ".printk_index", align 4
@tegra_vde_alloc_bo._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.160, ptr @.str.41, i32 135, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to map DMA buffer IOVA: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_vde_alloc_bo._entry_ptr.169 = internal global ptr @tegra_vde_alloc_bo._entry.167, section ".printk_index", align 4
@tegra124_vde_soc = internal constant { %struct.tegra_vde_soc, [31 x i8] } { %struct.tegra_vde_soc { i8 1 }, [31 x i8] zeroinitializer }, align 32
@tegra114_vde_soc = internal constant { %struct.tegra_vde_soc, [31 x i8] } { %struct.tegra_vde_soc { i8 1 }, [31 x i8] zeroinitializer }, align 32
@tegra30_vde_soc = internal constant { %struct.tegra_vde_soc, [31 x i8] } zeroinitializer, align 32
@tegra20_vde_soc = internal constant { %struct.tegra_vde_soc, [31 x i8] } zeroinitializer, align 32
@tegra_vde_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.171, ptr @.str.41, i32 1020, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to power down HW: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_vde_runtime_suspend\00", [38 x i8] zeroinitializer }, align 32
@tegra_vde_runtime_suspend._entry_ptr = internal global ptr @tegra_vde_runtime_suspend._entry, section ".printk_index", align 4
@tegra_vde_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.173, ptr @.str.41, i32 1039, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to acquire mc reset: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_vde_runtime_resume\00", [39 x i8] zeroinitializer }, align 32
@tegra_vde_runtime_resume._entry_ptr = internal global ptr @tegra_vde_runtime_resume._entry, section ".printk_index", align 4
@tegra_vde_runtime_resume._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.173, ptr @.str.41, i32 1045, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to acquire reset: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra_vde_runtime_resume._entry_ptr.176 = internal global ptr @tegra_vde_runtime_resume._entry.174, section ".printk_index", align 4
@tegra_vde_runtime_resume._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.173, ptr @.str.41, i32 1053, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to power up HW : %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_vde_runtime_resume._entry_ptr.179 = internal global ptr @tegra_vde_runtime_resume._entry.177, section ".printk_index", align 4
@tegra_vde_runtime_resume._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.173, ptr @.str.41, i32 1063, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable clock: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_vde_runtime_resume._entry_ptr.182 = internal global ptr @tegra_vde_runtime_resume._entry.180, section ".printk_index", align 4
@___asan_gen_.183 = private unnamed_addr constant [34 x i8] c"str__tegra_vde__trace_system_name\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 36, i32 1 }
@___asan_gen_.186 = private unnamed_addr constant [35 x i8] c"trace_event_fields_register_access\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_register_access\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [26 x i8] c"print_fmt_register_access\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [17 x i8] c"event_vde_writel\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 31, i32 1 }
@___asan_gen_.198 = private unnamed_addr constant [16 x i8] c"event_vde_readl\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [40 x i8] c"trace_event_fields_vde_setup_iram_entry\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_vde_setup_iram_entry\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [31 x i8] c"print_fmt_vde_setup_iram_entry\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [27 x i8] c"event_vde_setup_iram_entry\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [30 x i8] c"trace_event_fields_vde_ref_l0\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [34 x i8] c"trace_event_type_funcs_vde_ref_l0\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [21 x i8] c"print_fmt_vde_ref_l0\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"event_vde_ref_l0\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [30 x i8] c"trace_event_fields_vde_ref_l1\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [34 x i8] c"trace_event_type_funcs_vde_ref_l1\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [21 x i8] c"print_fmt_vde_ref_l1\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [17 x i8] c"event_vde_ref_l1\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [17 x i8] c"tegra_vde_driver\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1344, i32 31 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 96, i32 10 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 99, i32 10 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 102, i32 10 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 105, i32 10 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 108, i32 10 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 111, i32 10 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 114, i32 10 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 117, i32 10 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 120, i32 10 }
@___asan_gen_.268 = private unnamed_addr constant [41 x i8] c"../drivers/staging/media/tegra-vde/vde.h\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.268, i32 122, i32 9 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 13, i32 1 }
@___asan_gen_.303 = private unnamed_addr constant [8 x i8] c"__flags\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 40, i32 1 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 61, i32 1 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 73, i32 1 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1349, i32 12 }
@___asan_gen_.330 = private unnamed_addr constant [19 x i8] c"tegra_vde_of_match\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1335, i32 34 }
@___asan_gen_.333 = private unnamed_addr constant [17 x i8] c"tegra_vde_pm_ops\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1311, i32 32 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1092, i32 57 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1096, i32 58 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1100, i32 57 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1104, i32 57 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1108, i32 57 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1112, i32 57 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1116, i32 57 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1120, i32 58 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1124, i32 61 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1131, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1138, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1142, i32 72 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1145, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1149, i32 38 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1156, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1162, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1166, i32 49 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1168, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1176, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1181, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1182, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1186, i32 22 }
@___asan_gen_.441 = private unnamed_addr constant [15 x i8] c"tegra_vde_fops\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 993, i32 37 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1192, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1213, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1219, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant [63 x i8] c"../include/trace/../../drivers/staging/media/tegra-vde/trace.h\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 35, i32 1 }
@___asan_gen_.469 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 108, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.475 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 87, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 977, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 882, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 889, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 895, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 916, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 931, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 935, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 230, i32 6 }
@___asan_gen_.529 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.529, i32 214, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 156, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 721, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 726, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 731, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 736, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 742, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 748, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 754, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 760, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 766, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 772, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 778, i32 3 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 600, i32 3 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 605, i32 3 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 611, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 710, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 547, i32 3 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 567, i32 3 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 241, i32 3 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 248, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 258, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 113, i32 3 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 122, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 128, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 135, i32 4 }
@___asan_gen_.696 = private unnamed_addr constant [17 x i8] c"tegra124_vde_soc\00", align 1
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1319, i32 35 }
@___asan_gen_.699 = private unnamed_addr constant [17 x i8] c"tegra114_vde_soc\00", align 1
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1323, i32 35 }
@___asan_gen_.702 = private unnamed_addr constant [16 x i8] c"tegra30_vde_soc\00", align 1
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1327, i32 35 }
@___asan_gen_.705 = private unnamed_addr constant [16 x i8] c"tegra20_vde_soc\00", align 1
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1331, i32 35 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1020, i32 4 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1039, i32 3 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1045, i32 3 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1053, i32 4 }
@___asan_gen_.738 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.741 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.742 = private constant [41 x i8] c"../drivers/staging/media/tegra-vde/vde.c\00", align 1
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.742, i32 1063, i32 4 }
@llvm.compiler.used = appending global [264 x ptr] [ptr @__UNIQUE_ID_author287, ptr @__UNIQUE_ID_description286, ptr @__UNIQUE_ID_file288, ptr @__UNIQUE_ID_license289, ptr @__bpf_trace_tp_map_vde_readl, ptr @__bpf_trace_tp_map_vde_ref_l0, ptr @__bpf_trace_tp_map_vde_ref_l1, ptr @__bpf_trace_tp_map_vde_setup_iram_entry, ptr @__bpf_trace_tp_map_vde_writel, ptr @__event_vde_readl, ptr @__event_vde_ref_l0, ptr @__event_vde_ref_l1, ptr @__event_vde_setup_iram_entry, ptr @__event_vde_writel, ptr @__exitcall_tegra_vde_driver_exit, ptr @__initcall__kmod_tegra_vde__285_1354_tegra_vde_driver_init6, ptr @__tracepoint_ptr_vde_readl, ptr @__tracepoint_ptr_vde_ref_l0, ptr @__tracepoint_ptr_vde_ref_l1, ptr @__tracepoint_ptr_vde_setup_iram_entry, ptr @__tracepoint_ptr_vde_writel, ptr @__tracepoint_vde_readl, ptr @__tracepoint_vde_ref_l0, ptr @__tracepoint_vde_ref_l1, ptr @__tracepoint_vde_setup_iram_entry, ptr @__tracepoint_vde_writel, ptr @event_class_register_access, ptr @event_class_vde_ref_l0, ptr @event_class_vde_ref_l1, ptr @event_class_vde_setup_iram_entry, ptr @event_vde_readl, ptr @event_vde_ref_l0, ptr @event_vde_ref_l1, ptr @event_vde_setup_iram_entry, ptr @event_vde_writel, ptr @tegra_vde_alloc_bo._entry, ptr @tegra_vde_alloc_bo._entry.161, ptr @tegra_vde_alloc_bo._entry.164, ptr @tegra_vde_alloc_bo._entry.167, ptr @tegra_vde_alloc_bo._entry_ptr, ptr @tegra_vde_alloc_bo._entry_ptr.163, ptr @tegra_vde_alloc_bo._entry_ptr.166, ptr @tegra_vde_alloc_bo._entry_ptr.169, ptr @tegra_vde_attach_dmabuf._entry, ptr @tegra_vde_attach_dmabuf._entry.138, ptr @tegra_vde_attach_dmabuf._entry.141, ptr @tegra_vde_attach_dmabuf._entry_ptr, ptr @tegra_vde_attach_dmabuf._entry_ptr.140, ptr @tegra_vde_attach_dmabuf._entry_ptr.143, ptr @tegra_vde_driver_exit, ptr @tegra_vde_ioctl_decode_h264._entry, ptr @tegra_vde_ioctl_decode_h264._entry.86, ptr @tegra_vde_ioctl_decode_h264._entry.89, ptr @tegra_vde_ioctl_decode_h264._entry.92, ptr @tegra_vde_ioctl_decode_h264._entry.95, ptr @tegra_vde_ioctl_decode_h264._entry.98, ptr @tegra_vde_ioctl_decode_h264._entry_ptr, ptr @tegra_vde_ioctl_decode_h264._entry_ptr.100, ptr @tegra_vde_ioctl_decode_h264._entry_ptr.88, ptr @tegra_vde_ioctl_decode_h264._entry_ptr.91, ptr @tegra_vde_ioctl_decode_h264._entry_ptr.94, ptr @tegra_vde_ioctl_decode_h264._entry_ptr.97, ptr @tegra_vde_probe._entry, ptr @tegra_vde_probe._entry.44, ptr @tegra_vde_probe._entry.48, ptr @tegra_vde_probe._entry.52, ptr @tegra_vde_probe._entry.55, ptr @tegra_vde_probe._entry.59, ptr @tegra_vde_probe._entry.62, ptr @tegra_vde_probe._entry.69, ptr @tegra_vde_probe._entry.72, ptr @tegra_vde_probe._entry.75, ptr @tegra_vde_probe._entry_ptr, ptr @tegra_vde_probe._entry_ptr.46, ptr @tegra_vde_probe._entry_ptr.50, ptr @tegra_vde_probe._entry_ptr.54, ptr @tegra_vde_probe._entry_ptr.57, ptr @tegra_vde_probe._entry_ptr.61, ptr @tegra_vde_probe._entry_ptr.64, ptr @tegra_vde_probe._entry_ptr.71, ptr @tegra_vde_probe._entry_ptr.74, ptr @tegra_vde_probe._entry_ptr.77, ptr @tegra_vde_runtime_resume._entry, ptr @tegra_vde_runtime_resume._entry.174, ptr @tegra_vde_runtime_resume._entry.177, ptr @tegra_vde_runtime_resume._entry.180, ptr @tegra_vde_runtime_resume._entry_ptr, ptr @tegra_vde_runtime_resume._entry_ptr.176, ptr @tegra_vde_runtime_resume._entry_ptr.179, ptr @tegra_vde_runtime_resume._entry_ptr.182, ptr @tegra_vde_runtime_suspend._entry, ptr @tegra_vde_runtime_suspend._entry_ptr, ptr @tegra_vde_setup_hw_context._entry, ptr @tegra_vde_setup_hw_context._entry.148, ptr @tegra_vde_setup_hw_context._entry_ptr, ptr @tegra_vde_setup_hw_context._entry_ptr.150, ptr @tegra_vde_unlocked_ioctl._entry, ptr @tegra_vde_unlocked_ioctl._entry_ptr, ptr @tegra_vde_validate_frame._entry, ptr @tegra_vde_validate_frame._entry_ptr, ptr @tegra_vde_validate_h264_ctx._entry, ptr @tegra_vde_validate_h264_ctx._entry.106, ptr @tegra_vde_validate_h264_ctx._entry.109, ptr @tegra_vde_validate_h264_ctx._entry.112, ptr @tegra_vde_validate_h264_ctx._entry.115, ptr @tegra_vde_validate_h264_ctx._entry.118, ptr @tegra_vde_validate_h264_ctx._entry.121, ptr @tegra_vde_validate_h264_ctx._entry.124, ptr @tegra_vde_validate_h264_ctx._entry.127, ptr @tegra_vde_validate_h264_ctx._entry.130, ptr @tegra_vde_validate_h264_ctx._entry.133, ptr @tegra_vde_validate_h264_ctx._entry_ptr, ptr @tegra_vde_validate_h264_ctx._entry_ptr.108, ptr @tegra_vde_validate_h264_ctx._entry_ptr.111, ptr @tegra_vde_validate_h264_ctx._entry_ptr.114, ptr @tegra_vde_validate_h264_ctx._entry_ptr.117, ptr @tegra_vde_validate_h264_ctx._entry_ptr.120, ptr @tegra_vde_validate_h264_ctx._entry_ptr.123, ptr @tegra_vde_validate_h264_ctx._entry_ptr.126, ptr @tegra_vde_validate_h264_ctx._entry_ptr.129, ptr @tegra_vde_validate_h264_ctx._entry_ptr.132, ptr @tegra_vde_validate_h264_ctx._entry_ptr.135, ptr @tegra_vde_wait_bsev._entry, ptr @tegra_vde_wait_bsev._entry.153, ptr @tegra_vde_wait_bsev._entry.156, ptr @tegra_vde_wait_bsev._entry_ptr, ptr @tegra_vde_wait_bsev._entry_ptr.155, ptr @tegra_vde_wait_bsev._entry_ptr.158, ptr @str__tegra_vde__trace_system_name, ptr @trace_event_fields_register_access, ptr @trace_event_type_funcs_register_access, ptr @print_fmt_register_access, ptr @trace_event_fields_vde_setup_iram_entry, ptr @trace_event_type_funcs_vde_setup_iram_entry, ptr @print_fmt_vde_setup_iram_entry, ptr @trace_event_fields_vde_ref_l0, ptr @trace_event_type_funcs_vde_ref_l0, ptr @print_fmt_vde_ref_l0, ptr @trace_event_fields_vde_ref_l1, ptr @trace_event_type_funcs_vde_ref_l1, ptr @print_fmt_vde_ref_l1, ptr @tegra_vde_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @trace_raw_output_vde_setup_iram_entry.__flags, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @tegra_vde_of_match, ptr @tegra_vde_pm_ops, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @tegra_vde_probe.__key, ptr @.str.65, ptr @tegra_vde_probe.__key.66, ptr @.str.67, ptr @.str.68, ptr @tegra_vde_fops, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @init_completion.__key, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.119, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @.str.136, ptr @.str.137, ptr @.str.139, ptr @.str.142, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.149, ptr @.str.151, ptr @.str.152, ptr @.str.154, ptr @.str.157, ptr @.str.159, ptr @.str.160, ptr @.str.162, ptr @.str.165, ptr @.str.168, ptr @tegra124_vde_soc, ptr @tegra114_vde_soc, ptr @tegra30_vde_soc, ptr @tegra20_vde_soc, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.175, ptr @.str.178, ptr @.str.181], section "llvm.metadata"
@0 = internal global [187 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__tegra_vde__trace_system_name to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_register_access to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_register_access to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_register_access to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_vde_writel to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_vde_readl to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_vde_setup_iram_entry to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_vde_setup_iram_entry to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_vde_setup_iram_entry to i32), i32 187, i32 224, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_vde_setup_iram_entry to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_vde_ref_l0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_vde_ref_l0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_vde_ref_l0 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_vde_ref_l0 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_vde_ref_l1 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_vde_ref_l1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_vde_ref_l1 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_vde_ref_l1 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_vde_setup_iram_entry.__flags to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_probe._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_probe._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_probe._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_probe._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_probe.__key.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_probe._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_probe._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_probe._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_unlocked_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_ioctl_decode_h264._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_ioctl_decode_h264._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_ioctl_decode_h264._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_ioctl_decode_h264._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_ioctl_decode_h264._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_ioctl_decode_h264._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_validate_h264_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_validate_h264_ctx._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_validate_h264_ctx._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_validate_h264_ctx._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_validate_h264_ctx._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_validate_h264_ctx._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_validate_h264_ctx._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_validate_h264_ctx._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_validate_h264_ctx._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_validate_h264_ctx._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_validate_h264_ctx._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_attach_dmabuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_attach_dmabuf._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_attach_dmabuf._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_validate_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_setup_hw_context._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_setup_hw_context._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_wait_bsev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_wait_bsev._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_wait_bsev._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_alloc_bo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_alloc_bo._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_alloc_bo._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_alloc_bo._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_vde_soc to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra114_vde_soc to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_vde_soc to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_vde_soc to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_runtime_resume._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_runtime_resume._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_vde_runtime_resume._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_vde_writel(ptr nocapture readnone %__data, ptr noundef %vde, ptr noundef %base, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_vde_writel, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %vde, ptr noundef %base, i32 noundef %offset, i32 noundef %value) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_vde_readl(ptr nocapture readnone %__data, ptr noundef %vde, ptr noundef %base, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_vde_readl, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %vde, ptr noundef %base, i32 noundef %offset, i32 noundef %value) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_vde_setup_iram_entry(ptr nocapture readnone %__data, i32 noundef %table, i32 noundef %row, i32 noundef %value, i32 noundef %aux_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_vde_setup_iram_entry, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, i32 noundef %table, i32 noundef %row, i32 noundef %value, i32 noundef %aux_addr) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_vde_ref_l0(ptr nocapture readnone %__data, i32 noundef %frame_num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_vde_ref_l0, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, i32 noundef %frame_num) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_vde_ref_l1(ptr nocapture readnone %__data, i32 noundef %with_later_poc_nb, i32 noundef %with_earlier_poc_nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_vde_ref_l1, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, i32 noundef %with_later_poc_nb, i32 noundef %with_earlier_poc_nb) #14
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_register_access(ptr noundef %__data, ptr noundef readonly %vde, ptr noundef readnone %base, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #14
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !392

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !393

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #14
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %vde to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vde, align 4
  %cmp.i.i = icmp eq ptr %4, %base
  br i1 %cmp.i.i, label %if.end.trace_event_get_offsets_register_access.exit_crit_edge, label %if.end.i.i

if.end.trace_event_get_offsets_register_access.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %trace_event_get_offsets_register_access.exit

if.end.i.i:                                       ; preds = %if.end
  %bsev.i2.i = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 1
  %5 = ptrtoint ptr %bsev.i2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bsev.i2.i, align 4
  %cmp1.i3.i = icmp eq ptr %6, %base
  br i1 %cmp1.i3.i, label %if.end.i.i.trace_event_get_offsets_register_access.exit_crit_edge, label %if.end3.i7.i

if.end.i.i.trace_event_get_offsets_register_access.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %trace_event_get_offsets_register_access.exit

if.end3.i7.i:                                     ; preds = %if.end.i.i
  %mbe.i5.i = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 2
  %7 = ptrtoint ptr %mbe.i5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mbe.i5.i, align 4
  %cmp4.i6.i = icmp eq ptr %8, %base
  br i1 %cmp4.i6.i, label %if.end3.i7.i.trace_event_get_offsets_register_access.exit_crit_edge, label %if.end6.i10.i

if.end3.i7.i.trace_event_get_offsets_register_access.exit_crit_edge: ; preds = %if.end3.i7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %trace_event_get_offsets_register_access.exit

if.end6.i10.i:                                    ; preds = %if.end3.i7.i
  %ppe.i8.i = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 3
  %9 = ptrtoint ptr %ppe.i8.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ppe.i8.i, align 4
  %cmp7.i9.i = icmp eq ptr %10, %base
  br i1 %cmp7.i9.i, label %if.end6.i10.i.trace_event_get_offsets_register_access.exit_crit_edge, label %if.end9.i13.i

if.end6.i10.i.trace_event_get_offsets_register_access.exit_crit_edge: ; preds = %if.end6.i10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %trace_event_get_offsets_register_access.exit

if.end9.i13.i:                                    ; preds = %if.end6.i10.i
  %mce.i11.i = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 4
  %11 = ptrtoint ptr %mce.i11.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mce.i11.i, align 4
  %cmp10.i12.i = icmp eq ptr %12, %base
  br i1 %cmp10.i12.i, label %if.end9.i13.i.trace_event_get_offsets_register_access.exit_crit_edge, label %if.end12.i16.i

if.end9.i13.i.trace_event_get_offsets_register_access.exit_crit_edge: ; preds = %if.end9.i13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %trace_event_get_offsets_register_access.exit

if.end12.i16.i:                                   ; preds = %if.end9.i13.i
  %tfe.i14.i = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 5
  %13 = ptrtoint ptr %tfe.i14.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tfe.i14.i, align 4
  %cmp13.i15.i = icmp eq ptr %14, %base
  br i1 %cmp13.i15.i, label %if.end12.i16.i.trace_event_get_offsets_register_access.exit_crit_edge, label %if.end15.i19.i

if.end12.i16.i.trace_event_get_offsets_register_access.exit_crit_edge: ; preds = %if.end12.i16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %trace_event_get_offsets_register_access.exit

if.end15.i19.i:                                   ; preds = %if.end12.i16.i
  %ppb.i17.i = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 6
  %15 = ptrtoint ptr %ppb.i17.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ppb.i17.i, align 4
  %cmp16.i18.i = icmp eq ptr %16, %base
  br i1 %cmp16.i18.i, label %if.end15.i19.i.trace_event_get_offsets_register_access.exit_crit_edge, label %if.end18.i22.i

if.end15.i19.i.trace_event_get_offsets_register_access.exit_crit_edge: ; preds = %if.end15.i19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %trace_event_get_offsets_register_access.exit

if.end18.i22.i:                                   ; preds = %if.end15.i19.i
  %vdma.i20.i = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 7
  %17 = ptrtoint ptr %vdma.i20.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vdma.i20.i, align 4
  %cmp19.i21.i = icmp eq ptr %18, %base
  br i1 %cmp19.i21.i, label %if.end18.i22.i.trace_event_get_offsets_register_access.exit_crit_edge, label %if.end21.i26.i

if.end18.i22.i.trace_event_get_offsets_register_access.exit_crit_edge: ; preds = %if.end18.i22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %trace_event_get_offsets_register_access.exit

if.end21.i26.i:                                   ; preds = %if.end18.i22.i
  call void @__sanitizer_cov_trace_pc() #16
  %frameid.i23.i = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 8
  %19 = ptrtoint ptr %frameid.i23.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %frameid.i23.i, align 4
  %cmp22.i24.i = icmp eq ptr %20, %base
  %.str.9..str.10.i25.i = select i1 %cmp22.i24.i, ptr @.str.9, ptr @.str.10
  br label %trace_event_get_offsets_register_access.exit

trace_event_get_offsets_register_access.exit:     ; preds = %if.end21.i26.i, %if.end18.i22.i.trace_event_get_offsets_register_access.exit_crit_edge, %if.end15.i19.i.trace_event_get_offsets_register_access.exit_crit_edge, %if.end12.i16.i.trace_event_get_offsets_register_access.exit_crit_edge, %if.end9.i13.i.trace_event_get_offsets_register_access.exit_crit_edge, %if.end6.i10.i.trace_event_get_offsets_register_access.exit_crit_edge, %if.end3.i7.i.trace_event_get_offsets_register_access.exit_crit_edge, %if.end.i.i.trace_event_get_offsets_register_access.exit_crit_edge, %if.end.trace_event_get_offsets_register_access.exit_crit_edge
  %retval.0.i27.i = phi ptr [ @.str.2, %if.end.i.i.trace_event_get_offsets_register_access.exit_crit_edge ], [ @.str.3, %if.end3.i7.i.trace_event_get_offsets_register_access.exit_crit_edge ], [ @.str.4, %if.end6.i10.i.trace_event_get_offsets_register_access.exit_crit_edge ], [ @.str.5, %if.end9.i13.i.trace_event_get_offsets_register_access.exit_crit_edge ], [ @.str.6, %if.end12.i16.i.trace_event_get_offsets_register_access.exit_crit_edge ], [ @.str.7, %if.end15.i19.i.trace_event_get_offsets_register_access.exit_crit_edge ], [ @.str.8, %if.end18.i22.i.trace_event_get_offsets_register_access.exit_crit_edge ], [ %.str.9..str.10.i25.i, %if.end21.i26.i ], [ @.str.1, %if.end.trace_event_get_offsets_register_access.exit_crit_edge ]
  %call3.i = tail call i32 @strlen(ptr noundef nonnull %retval.0.i27.i) #17
  %add = add i32 %call3.i, 21
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_register_access.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_register_access.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_register_access.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_register_access.exit
  %add.i = shl i32 %call3.i, 16
  %or.i = add i32 %add.i, 65556
  %__data_loc_hw_name = getelementptr inbounds %struct.trace_event_raw_register_access, ptr %call3, i32 0, i32 1
  %21 = ptrtoint ptr %__data_loc_hw_name to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i, ptr %__data_loc_hw_name, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 20
  %22 = ptrtoint ptr %vde to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vde, align 4
  %cmp.i = icmp eq ptr %23, %base
  br i1 %cmp.i, label %if.end5.cond.end_crit_edge, label %if.end.i29

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.end.i29:                                       ; preds = %if.end5
  %bsev.i32 = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 1
  %24 = ptrtoint ptr %bsev.i32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bsev.i32, align 4
  %cmp1.i33 = icmp eq ptr %25, %base
  br i1 %cmp1.i33, label %if.end.i29.cond.end_crit_edge, label %if.end3.i37

if.end.i29.cond.end_crit_edge:                    ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.end3.i37:                                      ; preds = %if.end.i29
  %mbe.i35 = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 2
  %26 = ptrtoint ptr %mbe.i35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mbe.i35, align 4
  %cmp4.i36 = icmp eq ptr %27, %base
  br i1 %cmp4.i36, label %if.end3.i37.cond.end_crit_edge, label %if.end6.i40

if.end3.i37.cond.end_crit_edge:                   ; preds = %if.end3.i37
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.end6.i40:                                      ; preds = %if.end3.i37
  %ppe.i38 = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 3
  %28 = ptrtoint ptr %ppe.i38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ppe.i38, align 4
  %cmp7.i39 = icmp eq ptr %29, %base
  br i1 %cmp7.i39, label %if.end6.i40.cond.end_crit_edge, label %if.end9.i43

if.end6.i40.cond.end_crit_edge:                   ; preds = %if.end6.i40
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.end9.i43:                                      ; preds = %if.end6.i40
  %mce.i41 = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 4
  %30 = ptrtoint ptr %mce.i41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mce.i41, align 4
  %cmp10.i42 = icmp eq ptr %31, %base
  br i1 %cmp10.i42, label %if.end9.i43.cond.end_crit_edge, label %if.end12.i46

if.end9.i43.cond.end_crit_edge:                   ; preds = %if.end9.i43
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.end12.i46:                                     ; preds = %if.end9.i43
  %tfe.i44 = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 5
  %32 = ptrtoint ptr %tfe.i44 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tfe.i44, align 4
  %cmp13.i45 = icmp eq ptr %33, %base
  br i1 %cmp13.i45, label %if.end12.i46.cond.end_crit_edge, label %if.end15.i49

if.end12.i46.cond.end_crit_edge:                  ; preds = %if.end12.i46
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.end15.i49:                                     ; preds = %if.end12.i46
  %ppb.i47 = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 6
  %34 = ptrtoint ptr %ppb.i47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ppb.i47, align 4
  %cmp16.i48 = icmp eq ptr %35, %base
  br i1 %cmp16.i48, label %if.end15.i49.cond.end_crit_edge, label %if.end18.i52

if.end15.i49.cond.end_crit_edge:                  ; preds = %if.end15.i49
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.end18.i52:                                     ; preds = %if.end15.i49
  %vdma.i50 = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 7
  %36 = ptrtoint ptr %vdma.i50 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vdma.i50, align 4
  %cmp19.i51 = icmp eq ptr %37, %base
  br i1 %cmp19.i51, label %if.end18.i52.cond.end_crit_edge, label %if.end21.i56

if.end18.i52.cond.end_crit_edge:                  ; preds = %if.end18.i52
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.end21.i56:                                     ; preds = %if.end18.i52
  call void @__sanitizer_cov_trace_pc() #16
  %frameid.i53 = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 8
  %38 = ptrtoint ptr %frameid.i53 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %frameid.i53, align 4
  %cmp22.i54 = icmp eq ptr %39, %base
  %.str.9..str.10.i55 = select i1 %cmp22.i54, ptr @.str.9, ptr @.str.10
  br label %cond.end

cond.end:                                         ; preds = %if.end21.i56, %if.end18.i52.cond.end_crit_edge, %if.end15.i49.cond.end_crit_edge, %if.end12.i46.cond.end_crit_edge, %if.end9.i43.cond.end_crit_edge, %if.end6.i40.cond.end_crit_edge, %if.end3.i37.cond.end_crit_edge, %if.end.i29.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %retval.0.i57 = phi ptr [ @.str.2, %if.end.i29.cond.end_crit_edge ], [ @.str.3, %if.end3.i37.cond.end_crit_edge ], [ @.str.4, %if.end6.i40.cond.end_crit_edge ], [ @.str.5, %if.end9.i43.cond.end_crit_edge ], [ @.str.6, %if.end12.i46.cond.end_crit_edge ], [ @.str.7, %if.end15.i49.cond.end_crit_edge ], [ @.str.8, %if.end18.i52.cond.end_crit_edge ], [ %.str.9..str.10.i55, %if.end21.i56 ], [ @.str.1, %if.end5.cond.end_crit_edge ]
  %call10 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %retval.0.i57) #18
  %offset11 = getelementptr inbounds %struct.trace_event_raw_register_access, ptr %call3, i32 0, i32 2
  %40 = ptrtoint ptr %offset11 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %offset, ptr %offset11, align 4
  %value12 = getelementptr inbounds %struct.trace_event_raw_register_access, ptr %call3, i32 0, i32 3
  %41 = ptrtoint ptr %value12 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %value, ptr %value12, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #14
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_register_access.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_register_access(ptr noundef %__data, ptr noundef readonly %vde, ptr noundef readnone %base, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #14
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !394
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #14
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !394
  %2 = ptrtoint ptr %vde to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vde, align 4
  %cmp.i.i = icmp eq ptr %3, %base
  br i1 %cmp.i.i, label %entry.trace_event_get_offsets_register_access.exit_crit_edge, label %if.end.i.i

entry.trace_event_get_offsets_register_access.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %trace_event_get_offsets_register_access.exit

if.end.i.i:                                       ; preds = %entry
  %bsev.i2.i = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 1
  %4 = ptrtoint ptr %bsev.i2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bsev.i2.i, align 4
  %cmp1.i3.i = icmp eq ptr %5, %base
  br i1 %cmp1.i3.i, label %if.end.i.i.trace_event_get_offsets_register_access.exit_crit_edge, label %if.end3.i7.i

if.end.i.i.trace_event_get_offsets_register_access.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %trace_event_get_offsets_register_access.exit

if.end3.i7.i:                                     ; preds = %if.end.i.i
  %mbe.i5.i = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 2
  %6 = ptrtoint ptr %mbe.i5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mbe.i5.i, align 4
  %cmp4.i6.i = icmp eq ptr %7, %base
  br i1 %cmp4.i6.i, label %if.end3.i7.i.trace_event_get_offsets_register_access.exit_crit_edge, label %if.end6.i10.i

if.end3.i7.i.trace_event_get_offsets_register_access.exit_crit_edge: ; preds = %if.end3.i7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %trace_event_get_offsets_register_access.exit

if.end6.i10.i:                                    ; preds = %if.end3.i7.i
  %ppe.i8.i = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 3
  %8 = ptrtoint ptr %ppe.i8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ppe.i8.i, align 4
  %cmp7.i9.i = icmp eq ptr %9, %base
  br i1 %cmp7.i9.i, label %if.end6.i10.i.trace_event_get_offsets_register_access.exit_crit_edge, label %if.end9.i13.i

if.end6.i10.i.trace_event_get_offsets_register_access.exit_crit_edge: ; preds = %if.end6.i10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %trace_event_get_offsets_register_access.exit

if.end9.i13.i:                                    ; preds = %if.end6.i10.i
  %mce.i11.i = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 4
  %10 = ptrtoint ptr %mce.i11.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mce.i11.i, align 4
  %cmp10.i12.i = icmp eq ptr %11, %base
  br i1 %cmp10.i12.i, label %if.end9.i13.i.trace_event_get_offsets_register_access.exit_crit_edge, label %if.end12.i16.i

if.end9.i13.i.trace_event_get_offsets_register_access.exit_crit_edge: ; preds = %if.end9.i13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %trace_event_get_offsets_register_access.exit

if.end12.i16.i:                                   ; preds = %if.end9.i13.i
  %tfe.i14.i = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 5
  %12 = ptrtoint ptr %tfe.i14.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tfe.i14.i, align 4
  %cmp13.i15.i = icmp eq ptr %13, %base
  br i1 %cmp13.i15.i, label %if.end12.i16.i.trace_event_get_offsets_register_access.exit_crit_edge, label %if.end15.i19.i

if.end12.i16.i.trace_event_get_offsets_register_access.exit_crit_edge: ; preds = %if.end12.i16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %trace_event_get_offsets_register_access.exit

if.end15.i19.i:                                   ; preds = %if.end12.i16.i
  %ppb.i17.i = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 6
  %14 = ptrtoint ptr %ppb.i17.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ppb.i17.i, align 4
  %cmp16.i18.i = icmp eq ptr %15, %base
  br i1 %cmp16.i18.i, label %if.end15.i19.i.trace_event_get_offsets_register_access.exit_crit_edge, label %if.end18.i22.i

if.end15.i19.i.trace_event_get_offsets_register_access.exit_crit_edge: ; preds = %if.end15.i19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %trace_event_get_offsets_register_access.exit

if.end18.i22.i:                                   ; preds = %if.end15.i19.i
  %vdma.i20.i = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 7
  %16 = ptrtoint ptr %vdma.i20.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vdma.i20.i, align 4
  %cmp19.i21.i = icmp eq ptr %17, %base
  br i1 %cmp19.i21.i, label %if.end18.i22.i.trace_event_get_offsets_register_access.exit_crit_edge, label %if.end21.i26.i

if.end18.i22.i.trace_event_get_offsets_register_access.exit_crit_edge: ; preds = %if.end18.i22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %trace_event_get_offsets_register_access.exit

if.end21.i26.i:                                   ; preds = %if.end18.i22.i
  call void @__sanitizer_cov_trace_pc() #16
  %frameid.i23.i = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 8
  %18 = ptrtoint ptr %frameid.i23.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %frameid.i23.i, align 4
  %cmp22.i24.i = icmp eq ptr %19, %base
  %.str.9..str.10.i25.i = select i1 %cmp22.i24.i, ptr @.str.9, ptr @.str.10
  br label %trace_event_get_offsets_register_access.exit

trace_event_get_offsets_register_access.exit:     ; preds = %if.end21.i26.i, %if.end18.i22.i.trace_event_get_offsets_register_access.exit_crit_edge, %if.end15.i19.i.trace_event_get_offsets_register_access.exit_crit_edge, %if.end12.i16.i.trace_event_get_offsets_register_access.exit_crit_edge, %if.end9.i13.i.trace_event_get_offsets_register_access.exit_crit_edge, %if.end6.i10.i.trace_event_get_offsets_register_access.exit_crit_edge, %if.end3.i7.i.trace_event_get_offsets_register_access.exit_crit_edge, %if.end.i.i.trace_event_get_offsets_register_access.exit_crit_edge, %entry.trace_event_get_offsets_register_access.exit_crit_edge
  %retval.0.i27.i = phi ptr [ @.str.2, %if.end.i.i.trace_event_get_offsets_register_access.exit_crit_edge ], [ @.str.3, %if.end3.i7.i.trace_event_get_offsets_register_access.exit_crit_edge ], [ @.str.4, %if.end6.i10.i.trace_event_get_offsets_register_access.exit_crit_edge ], [ @.str.5, %if.end9.i13.i.trace_event_get_offsets_register_access.exit_crit_edge ], [ @.str.6, %if.end12.i16.i.trace_event_get_offsets_register_access.exit_crit_edge ], [ @.str.7, %if.end15.i19.i.trace_event_get_offsets_register_access.exit_crit_edge ], [ @.str.8, %if.end18.i22.i.trace_event_get_offsets_register_access.exit_crit_edge ], [ %.str.9..str.10.i25.i, %if.end21.i26.i ], [ @.str.1, %entry.trace_event_get_offsets_register_access.exit_crit_edge ]
  %call3.i = tail call i32 @strlen(ptr noundef nonnull %retval.0.i27.i) #17
  %add.i = shl i32 %call3.i, 16
  %or.i = add i32 %add.i, 65556
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %20 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %perf_events, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %add = add i32 %28, %22
  %29 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %30 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %31, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_register_access.exit.if.end_crit_edge

trace_event_get_offsets_register_access.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_register_access.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_register_access.exit
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %29, align 4
  %tobool.not.i.not = icmp eq ptr %33, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_register_access.exit.if.end_crit_edge
  %add12 = add i32 %call3.i, 32
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  %36 = call ptr @llvm.returnaddress(i32 0) #14
  %37 = ptrtoint ptr %36 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %35, i32 0, i32 15
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx.i, align 4
  %39 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %40 = ptrtoint ptr %39 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %35, i32 0, i32 11
  %41 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx2.i, align 4
  %42 = call i32 @llvm.read_register.i32(metadata !382) #14
  %arrayidx4.i = getelementptr [18 x i32], ptr %35, i32 0, i32 13
  %43 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %35, i32 0, i32 16
  %44 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_hw_name = getelementptr inbounds %struct.trace_event_raw_register_access, ptr %call13, i32 0, i32 1
  %45 = ptrtoint ptr %__data_loc_hw_name to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or.i, ptr %__data_loc_hw_name, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 20
  %46 = ptrtoint ptr %vde to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vde, align 4
  %cmp.i = icmp eq ptr %47, %base
  br i1 %cmp.i, label %if.end16.cond.end_crit_edge, label %if.end.i

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.end.i:                                         ; preds = %if.end16
  %bsev.i54 = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 1
  %48 = ptrtoint ptr %bsev.i54 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bsev.i54, align 4
  %cmp1.i55 = icmp eq ptr %49, %base
  br i1 %cmp1.i55, label %if.end.i.cond.end_crit_edge, label %if.end3.i59

if.end.i.cond.end_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.end3.i59:                                      ; preds = %if.end.i
  %mbe.i57 = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 2
  %50 = ptrtoint ptr %mbe.i57 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mbe.i57, align 4
  %cmp4.i58 = icmp eq ptr %51, %base
  br i1 %cmp4.i58, label %if.end3.i59.cond.end_crit_edge, label %if.end6.i62

if.end3.i59.cond.end_crit_edge:                   ; preds = %if.end3.i59
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.end6.i62:                                      ; preds = %if.end3.i59
  %ppe.i60 = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 3
  %52 = ptrtoint ptr %ppe.i60 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ppe.i60, align 4
  %cmp7.i61 = icmp eq ptr %53, %base
  br i1 %cmp7.i61, label %if.end6.i62.cond.end_crit_edge, label %if.end9.i65

if.end6.i62.cond.end_crit_edge:                   ; preds = %if.end6.i62
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.end9.i65:                                      ; preds = %if.end6.i62
  %mce.i63 = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 4
  %54 = ptrtoint ptr %mce.i63 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mce.i63, align 4
  %cmp10.i64 = icmp eq ptr %55, %base
  br i1 %cmp10.i64, label %if.end9.i65.cond.end_crit_edge, label %if.end12.i68

if.end9.i65.cond.end_crit_edge:                   ; preds = %if.end9.i65
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.end12.i68:                                     ; preds = %if.end9.i65
  %tfe.i66 = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 5
  %56 = ptrtoint ptr %tfe.i66 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tfe.i66, align 4
  %cmp13.i67 = icmp eq ptr %57, %base
  br i1 %cmp13.i67, label %if.end12.i68.cond.end_crit_edge, label %if.end15.i71

if.end12.i68.cond.end_crit_edge:                  ; preds = %if.end12.i68
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.end15.i71:                                     ; preds = %if.end12.i68
  %ppb.i69 = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 6
  %58 = ptrtoint ptr %ppb.i69 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ppb.i69, align 4
  %cmp16.i70 = icmp eq ptr %59, %base
  br i1 %cmp16.i70, label %if.end15.i71.cond.end_crit_edge, label %if.end18.i74

if.end15.i71.cond.end_crit_edge:                  ; preds = %if.end15.i71
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.end18.i74:                                     ; preds = %if.end15.i71
  %vdma.i72 = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 7
  %60 = ptrtoint ptr %vdma.i72 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vdma.i72, align 4
  %cmp19.i73 = icmp eq ptr %61, %base
  br i1 %cmp19.i73, label %if.end18.i74.cond.end_crit_edge, label %if.end21.i78

if.end18.i74.cond.end_crit_edge:                  ; preds = %if.end18.i74
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

if.end21.i78:                                     ; preds = %if.end18.i74
  call void @__sanitizer_cov_trace_pc() #16
  %frameid.i75 = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 8
  %62 = ptrtoint ptr %frameid.i75 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %frameid.i75, align 4
  %cmp22.i76 = icmp eq ptr %63, %base
  %.str.9..str.10.i77 = select i1 %cmp22.i76, ptr @.str.9, ptr @.str.10
  br label %cond.end

cond.end:                                         ; preds = %if.end21.i78, %if.end18.i74.cond.end_crit_edge, %if.end15.i71.cond.end_crit_edge, %if.end12.i68.cond.end_crit_edge, %if.end9.i65.cond.end_crit_edge, %if.end6.i62.cond.end_crit_edge, %if.end3.i59.cond.end_crit_edge, %if.end.i.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %retval.0.i79 = phi ptr [ @.str.2, %if.end.i.cond.end_crit_edge ], [ @.str.3, %if.end3.i59.cond.end_crit_edge ], [ @.str.4, %if.end6.i62.cond.end_crit_edge ], [ @.str.5, %if.end9.i65.cond.end_crit_edge ], [ @.str.6, %if.end12.i68.cond.end_crit_edge ], [ @.str.7, %if.end15.i71.cond.end_crit_edge ], [ @.str.8, %if.end18.i74.cond.end_crit_edge ], [ %.str.9..str.10.i77, %if.end21.i78 ], [ @.str.1, %if.end16.cond.end_crit_edge ]
  %call22 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %retval.0.i79) #18
  %offset23 = getelementptr inbounds %struct.trace_event_raw_register_access, ptr %call13, i32 0, i32 2
  %64 = ptrtoint ptr %offset23 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %offset, ptr %offset23, align 4
  %value24 = getelementptr inbounds %struct.trace_event_raw_register_access, ptr %call13, i32 0, i32 3
  %65 = ptrtoint ptr %value24 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %value, ptr %value24, align 4
  %66 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rctx, align 4
  %68 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %67, ptr noundef %__data, i64 noundef 1, ptr noundef %69, ptr noundef %29, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_vde_setup_iram_entry(ptr noundef %__data, i32 noundef %table, i32 noundef %row, i32 noundef %value, i32 noundef %aux_addr) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #14
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !392

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !393

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #14
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %table6 = getelementptr inbounds %struct.trace_event_raw_vde_setup_iram_entry, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %table6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %table, ptr %table6, align 4
  %row7 = getelementptr inbounds %struct.trace_event_raw_vde_setup_iram_entry, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %row7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %row, ptr %row7, align 4
  %value8 = getelementptr inbounds %struct.trace_event_raw_vde_setup_iram_entry, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %value8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %value, ptr %value8, align 4
  %aux_addr9 = getelementptr inbounds %struct.trace_event_raw_vde_setup_iram_entry, ptr %call3, i32 0, i32 4
  %6 = ptrtoint ptr %aux_addr9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %aux_addr, ptr %aux_addr9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_vde_setup_iram_entry(ptr noundef %__data, i32 noundef %table, i32 noundef %row, i32 noundef %value, i32 noundef %aux_addr) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #14
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !394
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #14
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !394
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #14
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !382) #14
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %table17 = getelementptr inbounds %struct.trace_event_raw_vde_setup_iram_entry, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %table17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %table, ptr %table17, align 4
  %row18 = getelementptr inbounds %struct.trace_event_raw_vde_setup_iram_entry, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %row18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %row, ptr %row18, align 4
  %value19 = getelementptr inbounds %struct.trace_event_raw_vde_setup_iram_entry, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %value19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %value, ptr %value19, align 4
  %aux_addr20 = getelementptr inbounds %struct.trace_event_raw_vde_setup_iram_entry, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %aux_addr20 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %aux_addr, ptr %aux_addr20, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_vde_ref_l0(ptr noundef %__data, i32 noundef %frame_num) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #14
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !392

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !393

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #14
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %frame_num6 = getelementptr inbounds %struct.trace_event_raw_vde_ref_l0, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %frame_num6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %frame_num, ptr %frame_num6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_vde_ref_l0(ptr noundef %__data, i32 noundef %frame_num) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #14
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !394
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #14
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !394
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #14
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !382) #14
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %frame_num17 = getelementptr inbounds %struct.trace_event_raw_vde_ref_l0, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %frame_num17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %frame_num, ptr %frame_num17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_vde_ref_l1(ptr noundef %__data, i32 noundef %with_later_poc_nb, i32 noundef %with_earlier_poc_nb) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #14
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !392

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !393

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #14
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #14
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %with_later_poc_nb6 = getelementptr inbounds %struct.trace_event_raw_vde_ref_l1, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %with_later_poc_nb6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %with_later_poc_nb, ptr %with_later_poc_nb6, align 4
  %with_earlier_poc_nb7 = getelementptr inbounds %struct.trace_event_raw_vde_ref_l1, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %with_earlier_poc_nb7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %with_earlier_poc_nb, ptr %with_earlier_poc_nb7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_vde_ref_l1(ptr noundef %__data, i32 noundef %with_later_poc_nb, i32 noundef %with_earlier_poc_nb) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #14
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !394
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #14
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !394
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #14
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !382) #14
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %with_later_poc_nb17 = getelementptr inbounds %struct.trace_event_raw_vde_ref_l1, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %with_later_poc_nb17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %with_later_poc_nb, ptr %with_later_poc_nb17, align 4
  %with_earlier_poc_nb18 = getelementptr inbounds %struct.trace_event_raw_vde_ref_l1, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %with_earlier_poc_nb18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %with_earlier_poc_nb, ptr %with_earlier_poc_nb18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_register_access(ptr noundef %__data, ptr noundef %vde, ptr noundef %base, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %vde to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %base to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %offset to i64
  %conv12 = zext i32 %value to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_vde_setup_iram_entry(ptr noundef %__data, i32 noundef %table, i32 noundef %row, i32 noundef %value, i32 noundef %aux_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i32 %table to i64
  %conv4 = zext i32 %row to i64
  %conv8 = zext i32 %value to i64
  %conv12 = zext i32 %aux_addr to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_vde_ref_l0(ptr noundef %__data, i32 noundef %frame_num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i32 %frame_num to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_vde_ref_l1(ptr noundef %__data, i32 noundef %with_later_poc_nb, i32 noundef %with_earlier_poc_nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %conv = zext i32 %with_later_poc_nb to i64
  %conv4 = zext i32 %with_earlier_poc_nb to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #14
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_vde_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_vde_driver, ptr noundef null) #14
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_vde_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_vde_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_register_access(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_hw_name = getelementptr inbounds %struct.trace_event_raw_register_access, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_hw_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_hw_name, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %offset = getelementptr inbounds %struct.trace_event_raw_register_access, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %value = getelementptr inbounds %struct.trace_event_raw_register_access, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.16, ptr noundef %add.ptr, i32 noundef %5, i32 noundef %7) #14
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_vde_setup_iram_entry(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %table = getelementptr inbounds %struct.trace_event_raw_vde_setup_iram_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %table, align 4
  %row = getelementptr inbounds %struct.trace_event_raw_vde_setup_iram_entry, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %row to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %row, align 4
  %value = getelementptr inbounds %struct.trace_event_raw_vde_setup_iram_entry, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 4
  %call2 = tail call ptr @trace_print_flags_seq(ptr noundef %tmp_seq, ptr noundef nonnull @.str.23, i32 noundef %7, ptr noundef nonnull @trace_raw_output_vde_setup_iram_entry.__flags) #14
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 4
  %and = and i32 %9, 8388607
  %aux_addr = getelementptr inbounds %struct.trace_event_raw_vde_setup_iram_entry, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %aux_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %aux_addr, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.21, i32 noundef %3, i32 noundef %5, i32 noundef %7, ptr noundef %call2, i32 noundef %and, i32 noundef %11) #14
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_flags_seq(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_vde_ref_l0(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %frame_num = getelementptr inbounds %struct.trace_event_raw_vde_ref_l0, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %frame_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frame_num, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.25, i32 noundef %3) #14
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_vde_ref_l1(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %with_later_poc_nb = getelementptr inbounds %struct.trace_event_raw_vde_ref_l1, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %with_later_poc_nb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %with_later_poc_nb, align 4
  %with_earlier_poc_nb = getelementptr inbounds %struct.trace_event_raw_vde_ref_l1, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %with_earlier_poc_nb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %with_earlier_poc_nb, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.28, i32 noundef %3, i32 noundef %5) #14
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_vde_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %opp_params.i = alloca %struct.tegra_core_opp_params, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1552, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #14
  %soc = getelementptr inbounds %struct.tegra_vde, ptr %call.i, i32 0, i32 23
  %1 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %soc, align 4
  %call4 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.30) #14
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.31) #14
  %bsev = getelementptr inbounds %struct.tegra_vde, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %bsev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call11, ptr %bsev, align 4
  %cmp.i296 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i296, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %call18 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.32) #14
  %mbe = getelementptr inbounds %struct.tegra_vde, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %mbe to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call18, ptr %mbe, align 4
  %cmp.i297 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i297, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %call25 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.33) #14
  %ppe = getelementptr inbounds %struct.tegra_vde, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %ppe to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call25, ptr %ppe, align 4
  %cmp.i298 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i298, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %call25 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %call32 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.34) #14
  %mce = getelementptr inbounds %struct.tegra_vde, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %mce to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call32, ptr %mce, align 4
  %cmp.i299 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i299, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %11 = ptrtoint ptr %call32 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end31
  %call39 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.35) #14
  %tfe = getelementptr inbounds %struct.tegra_vde, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %tfe to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call39, ptr %tfe, align 4
  %cmp.i300 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i300, label %if.then42, label %if.end45

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %call39 to i32
  br label %cleanup

if.end45:                                         ; preds = %if.end38
  %call46 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.36) #14
  %ppb = getelementptr inbounds %struct.tegra_vde, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %ppb to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call46, ptr %ppb, align 4
  %cmp.i301 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i301, label %if.then49, label %if.end52

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %call46 to i32
  br label %cleanup

if.end52:                                         ; preds = %if.end45
  %call53 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.37) #14
  %vdma = getelementptr inbounds %struct.tegra_vde, ptr %call.i, i32 0, i32 7
  %16 = ptrtoint ptr %vdma to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call53, ptr %vdma, align 4
  %cmp.i302 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i302, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %call53 to i32
  br label %cleanup

if.end59:                                         ; preds = %if.end52
  %call60 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.38) #14
  %frameid = getelementptr inbounds %struct.tegra_vde, ptr %call.i, i32 0, i32 8
  %18 = ptrtoint ptr %frameid to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call60, ptr %frameid, align 4
  %cmp.i303 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i303, label %if.then63, label %if.end66

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %call60 to i32
  br label %cleanup

if.end66:                                         ; preds = %if.end59
  %call67 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #14
  %clk = getelementptr inbounds %struct.tegra_vde, ptr %call.i, i32 0, i32 17
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call67, ptr %clk, align 4
  %cmp.i304 = icmp ugt ptr %call67, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i304, label %if.then70, label %if.end73

if.then70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %call67 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.39, i32 noundef %21) #19
  br label %cleanup

if.end73:                                         ; preds = %if.end66
  %call.i305 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #14
  %rst = getelementptr inbounds %struct.tegra_vde, ptr %call.i, i32 0, i32 13
  %22 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i305, ptr %rst, align 4
  %cmp.i306 = icmp ugt ptr %call.i305, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i306, label %if.then77, label %if.end83

if.then77:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %call.i305 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.45, i32 noundef %23) #19
  br label %cleanup

if.end83:                                         ; preds = %if.end73
  %call.i307 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.47, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false) #14
  %rst_mc = getelementptr inbounds %struct.tegra_vde, ptr %call.i, i32 0, i32 14
  %24 = ptrtoint ptr %rst_mc to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i307, ptr %rst_mc, align 4
  %cmp.i308 = icmp ugt ptr %call.i307, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i308, label %if.then87, label %if.end93

if.then87:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %call.i307 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.49, i32 noundef %25) #19
  br label %cleanup

if.end93:                                         ; preds = %if.end83
  %call94 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.51) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp = icmp slt i32 %call94, 0
  br i1 %cmp, label %if.end93.cleanup_crit_edge, label %if.end96

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end96:                                         ; preds = %if.end93
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end96.dev_name.exit_crit_edge

if.end96.dev_name.exit_crit_edge:                 ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end96.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %29, %if.end.i ], [ %27, %if.end96.dev_name.exit_crit_edge ]
  %call.i309 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call94, ptr noundef nonnull @tegra_vde_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i309)
  %tobool99.not = icmp eq i32 %call.i309, 0
  br i1 %tobool99.not, label %if.end104, label %do.end103

do.end103:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.53, i32 noundef %call.i309) #19
  br label %cleanup

if.end104:                                        ; preds = %dev_name.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %opp_params.i) #14
  %30 = ptrtoint ptr %opp_params.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %opp_params.i, align 1
  %call.i310 = call i32 @devm_tegra_core_dev_init_opp_table(ptr noundef %dev1, ptr noundef nonnull %opp_params.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call.i310)
  %cmp.not.i = icmp eq i32 %call.i310, -19
  %.call.i = select i1 %cmp.not.i, i32 0, i32 %call.i310
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %opp_params.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.call.i)
  %tobool106.not = icmp eq i32 %.call.i, 0
  br i1 %tobool106.not, label %if.end111, label %do.end110

do.end110:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.56, i32 noundef %.call.i) #19
  br label %cleanup

if.end111:                                        ; preds = %if.end104
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %31 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node, align 8
  %call112 = call ptr @of_gen_pool_get(ptr noundef %32, ptr noundef nonnull @.str.58, i32 noundef 0) #14
  %iram_pool = getelementptr inbounds %struct.tegra_vde, ptr %call.i, i32 0, i32 15
  %33 = ptrtoint ptr %iram_pool to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call112, ptr %iram_pool, align 4
  %tobool114.not = icmp eq ptr %call112, null
  br i1 %tobool114.not, label %do.end118, label %if.end119

do.end118:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.60) #19
  br label %cleanup

if.end119:                                        ; preds = %if.end111
  %call122 = call i32 @gen_pool_size(ptr noundef nonnull %call112) #14
  %iram_lists_addr = getelementptr inbounds %struct.tegra_vde, ptr %call.i, i32 0, i32 25
  %call123 = call ptr @gen_pool_dma_alloc(ptr noundef nonnull %call112, i32 noundef %call122, ptr noundef %iram_lists_addr) #14
  %iram = getelementptr inbounds %struct.tegra_vde, ptr %call.i, i32 0, i32 26
  %34 = ptrtoint ptr %iram to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call123, ptr %iram, align 4
  %tobool125.not = icmp eq ptr %call123, null
  br i1 %tobool125.not, label %do.end129, label %if.end130

do.end129:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.63) #19
  br label %cleanup

if.end130:                                        ; preds = %if.end119
  %map_list = getelementptr inbounds %struct.tegra_vde, ptr %call.i, i32 0, i32 11
  %35 = ptrtoint ptr %map_list to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %map_list, ptr %map_list, align 4
  %prev.i = getelementptr inbounds %struct.tegra_vde, ptr %call.i, i32 0, i32 11, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %map_list, ptr %prev.i, align 4
  %map_lock = getelementptr inbounds %struct.tegra_vde, ptr %call.i, i32 0, i32 10
  call void @__mutex_init(ptr noundef %map_lock, ptr noundef nonnull @.str.65, ptr noundef nonnull @tegra_vde_probe.__key) #14
  %lock = getelementptr inbounds %struct.tegra_vde, ptr %call.i, i32 0, i32 9
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.67, ptr noundef nonnull @tegra_vde_probe.__key.66) #14
  %decode_completion = getelementptr inbounds %struct.tegra_vde, ptr %call.i, i32 0, i32 16
  %37 = ptrtoint ptr %decode_completion to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %decode_completion, align 4
  %wait.i = getelementptr inbounds %struct.tegra_vde, ptr %call.i, i32 0, i32 16, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.81, ptr noundef nonnull @init_completion.__key) #14
  %miscdev = getelementptr inbounds %struct.tegra_vde, ptr %call.i, i32 0, i32 12
  %38 = ptrtoint ptr %miscdev to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 255, ptr %miscdev, align 4
  %name = getelementptr inbounds %struct.tegra_vde, ptr %call.i, i32 0, i32 12, i32 1
  %39 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.68, ptr %name, align 4
  %fops = getelementptr inbounds %struct.tegra_vde, ptr %call.i, i32 0, i32 12, i32 2
  %40 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @tegra_vde_fops, ptr %fops, align 4
  %parent = getelementptr inbounds %struct.tegra_vde, ptr %call.i, i32 0, i32 12, i32 4
  %41 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %dev1, ptr %parent, align 4
  %call140 = call i32 @tegra_vde_iommu_init(ptr noundef nonnull %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end146, label %do.end145

do.end145:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.70, i32 noundef %call140) #19
  br label %err_gen_free

if.end146:                                        ; preds = %if.end130
  call void @pm_runtime_enable(ptr noundef %dev1) #14
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #14
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 300) #14
  %call147 = call fastcc i32 @pm_runtime_resume_and_get(ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end150, label %if.end146.err_pm_runtime_crit_edge

if.end146.err_pm_runtime_crit_edge:               ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_pm_runtime

if.end150:                                        ; preds = %if.end146
  %call.i311 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #14
  %secure_bo = getelementptr inbounds %struct.tegra_vde, ptr %call.i, i32 0, i32 24
  %call152 = call fastcc i32 @tegra_vde_alloc_bo(ptr noundef nonnull %call.i, ptr noundef %secure_bo)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.end158, label %do.end157

do.end157:                                        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.73, i32 noundef %call152) #19
  br label %err_pm_runtime

if.end158:                                        ; preds = %if.end150
  %call160 = call i32 @misc_register(ptr noundef %miscdev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.end158.cleanup_crit_edge, label %do.end165

if.end158.cleanup_crit_edge:                      ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end165:                                        ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.76, i32 noundef %call160) #19
  %42 = ptrtoint ptr %secure_bo to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %secure_bo, align 4
  call fastcc void @tegra_vde_free_bo(ptr noundef %43)
  br label %err_pm_runtime

err_pm_runtime:                                   ; preds = %do.end165, %do.end157, %if.end146.err_pm_runtime_crit_edge
  %err.0 = phi i32 [ %call147, %if.end146.err_pm_runtime_crit_edge ], [ %call152, %do.end157 ], [ %call160, %do.end165 ]
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext false) #14
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #14
  call void @tegra_vde_iommu_deinit(ptr noundef nonnull %call.i) #14
  br label %err_gen_free

err_gen_free:                                     ; preds = %err_pm_runtime, %do.end145
  %err.1 = phi i32 [ %call140, %do.end145 ], [ %err.0, %err_pm_runtime ]
  %44 = ptrtoint ptr %iram_pool to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iram_pool, align 4
  %46 = ptrtoint ptr %iram to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %iram, align 4
  %48 = ptrtoint ptr %47 to i32
  %call171 = call i32 @gen_pool_size(ptr noundef %45) #14
  call void @gen_pool_free_owner(ptr noundef %45, i32 noundef %48, i32 noundef %call171, ptr noundef null) #14
  br label %cleanup

cleanup:                                          ; preds = %err_gen_free, %if.end158.cleanup_crit_edge, %do.end129, %do.end118, %do.end110, %do.end103, %if.end93.cleanup_crit_edge, %if.then87, %if.then77, %if.then70, %if.then63, %if.then56, %if.then49, %if.then42, %if.then35, %if.then28, %if.then21, %if.then14, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then7 ], [ %5, %if.then14 ], [ %7, %if.then21 ], [ %9, %if.then28 ], [ %11, %if.then35 ], [ %13, %if.then42 ], [ %15, %if.then49 ], [ %17, %if.then56 ], [ %19, %if.then63 ], [ %21, %if.then70 ], [ %23, %if.then77 ], [ %25, %if.then87 ], [ %call.i309, %do.end103 ], [ %.call.i, %do.end110 ], [ %err.1, %err_gen_free ], [ -12, %do.end129 ], [ -517, %do.end118 ], [ -12, %entry.cleanup_crit_edge ], [ %call94, %if.end93.cleanup_crit_edge ], [ 0, %if.end158.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_vde_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %miscdev = getelementptr inbounds %struct.tegra_vde, ptr %1, i32 0, i32 12
  tail call void @misc_deregister(ptr noundef %miscdev) #14
  %secure_bo = getelementptr inbounds %struct.tegra_vde, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %secure_bo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %secure_bo, align 4
  tail call fastcc void @tegra_vde_free_bo(ptr noundef %3)
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #14
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext false) #14
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #14
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !395
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #14
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #14, !srcloc !396
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !397
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  %clk = getelementptr inbounds %struct.tegra_vde, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %6) #14
  tail call void @clk_unprepare(ptr noundef %6) #14
  tail call void @tegra_vde_dmabuf_cache_unmap_all(ptr noundef %1) #14
  tail call void @tegra_vde_iommu_deinit(ptr noundef %1) #14
  %iram_pool = getelementptr inbounds %struct.tegra_vde, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %iram_pool to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iram_pool, align 4
  %iram = getelementptr inbounds %struct.tegra_vde, ptr %1, i32 0, i32 26
  %9 = ptrtoint ptr %iram to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iram, align 4
  %11 = ptrtoint ptr %10 to i32
  %call4 = tail call i32 @gen_pool_size(ptr noundef %8) #14
  tail call void @gen_pool_free_owner(ptr noundef %8, i32 noundef %11, i32 noundef %call4, ptr noundef null) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_vde_shutdown(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_vde_isr(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %decode_completion = getelementptr inbounds %struct.tegra_vde, ptr %data, i32 0, i32 16
  %call = tail call zeroext i1 @completion_done(ptr noundef %decode_completion) #14
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %frameid = getelementptr inbounds %struct.tegra_vde, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %frameid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %frameid, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 520
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !398
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #14
  tail call fastcc void @trace_vde_readl(ptr noundef %data, ptr noundef %1, i32 noundef 520, i32 noundef %3) #14
  tail call fastcc void @trace_vde_writel(ptr noundef %data, ptr noundef %1, i32 noundef 520, i32 noundef %3) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #14, !srcloc !399
  tail call void @complete(ptr noundef %decode_completion) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_gen_pool_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_dma_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_vde_iommu_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pm_runtime_resume_and_get(ptr noundef %dev) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %entry
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !395
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #14, !srcloc !396
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !397
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then.cleanup_crit_edge ], [ %call, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_vde_alloc_bo(ptr noundef %vde, ptr nocapture noundef writeonly %ret_bo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 12, i32 4
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 44) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %vde1 = getelementptr inbounds %struct.tegra_vde_bo, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %vde1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %vde, ptr %vde1, align 8
  %size2 = getelementptr inbounds %struct.tegra_vde_bo, ptr %call7.i.i, i32 0, i32 8
  %4 = ptrtoint ptr %size2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %size2, align 8
  %dma_dir3 = getelementptr inbounds %struct.tegra_vde_bo, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %dma_dir3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %dma_dir3, align 4
  %dma_attrs = getelementptr inbounds %struct.tegra_vde_bo, ptr %call7.i.i, i32 0, i32 4
  %domain = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 18
  %6 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %domain, align 4
  %tobool4.not = icmp eq ptr %7, null
  %spec.store.select = select i1 %tobool4.not, i32 84, i32 20
  %8 = ptrtoint ptr %dma_attrs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.store.select, ptr %dma_attrs, align 8
  %dma_handle = getelementptr inbounds %struct.tegra_vde_bo, ptr %call7.i.i, i32 0, i32 5
  %call10 = tail call ptr @dma_alloc_attrs(ptr noundef %1, i32 noundef 4096, ptr noundef %dma_handle, i32 noundef 3264, i32 noundef %spec.store.select) #14
  %dma_cookie = getelementptr inbounds %struct.tegra_vde_bo, ptr %call7.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %dma_cookie to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call10, ptr %dma_cookie, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size2, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.159, i32 noundef %11) #19
  br label %free_bo

if.end15:                                         ; preds = %if.end
  %sgt = getelementptr inbounds %struct.tegra_vde_bo, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_handle, align 4
  %14 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size2, align 8
  %16 = ptrtoint ptr %dma_attrs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_attrs, align 8
  %call20 = tail call i32 @dma_get_sgtable_attrs(ptr noundef %1, ptr noundef %sgt, ptr noundef nonnull %call10, i32 noundef %13, i32 noundef %15, i32 noundef %17) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end26, label %do.end25

do.end25:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.162, i32 noundef %call20) #19
  br label %free_attrs

if.end26:                                         ; preds = %if.end15
  %18 = ptrtoint ptr %dma_dir3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_dir3, align 4
  %20 = ptrtoint ptr %dma_attrs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_attrs, align 8
  %call30 = tail call i32 @dma_map_sgtable(ptr noundef %1, ptr noundef %sgt, i32 noundef %19, i32 noundef %21) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end36, label %do.end35

do.end35:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.165, i32 noundef %call30) #19
  br label %free_table

if.end36:                                         ; preds = %if.end26
  %22 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %domain, align 4
  %tobool38.not = icmp eq ptr %23, null
  br i1 %tobool38.not, label %if.else, label %if.then39

if.then39:                                        ; preds = %if.end36
  %24 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size2, align 8
  %call42 = tail call i32 @tegra_vde_iommu_map(ptr noundef %vde, ptr noundef %sgt, ptr noundef nonnull %call7.i.i, i32 noundef %25) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end48, label %do.end47

do.end47:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.168, i32 noundef %call42) #19
  %26 = ptrtoint ptr %dma_dir3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_dir3, align 4
  %28 = ptrtoint ptr %dma_attrs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_attrs, align 8
  %30 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sgt, align 4
  %orig_nents.i = getelementptr inbounds %struct.tegra_vde_bo, ptr %call7.i.i, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %1, ptr noundef %31, i32 noundef %33, i32 noundef %27, i32 noundef %29) #14
  br label %free_table

if.end48:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call7.i.i, align 8
  %pfn_lo.i = getelementptr inbounds %struct.iova, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %pfn_lo.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pfn_lo.i, align 4
  %granule.i.i = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 20, i32 4
  %38 = ptrtoint ptr %granule.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %granule.i.i, align 4
  %40 = tail call i32 @llvm.cttz.i32(i32 %39, i1 false) #14, !range !400
  %shl.i = shl i32 %37, %40
  br label %if.end54

if.else:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sgt, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma_address, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.end48
  %.sink = phi i32 [ %44, %if.else ], [ %shl.i, %if.end48 ]
  %dma_addr53 = getelementptr inbounds %struct.tegra_vde_bo, ptr %call7.i.i, i32 0, i32 6
  %45 = ptrtoint ptr %dma_addr53 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %.sink, ptr %dma_addr53, align 8
  %46 = ptrtoint ptr %ret_bo to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call7.i.i, ptr %ret_bo, align 4
  br label %cleanup

free_table:                                       ; preds = %do.end47, %do.end35
  %err.0 = phi i32 [ %call30, %do.end35 ], [ %call42, %do.end47 ]
  tail call void @sg_free_table(ptr noundef %sgt) #14
  br label %free_attrs

free_attrs:                                       ; preds = %free_table, %do.end25
  %err.1 = phi i32 [ %call20, %do.end25 ], [ %err.0, %free_table ]
  %47 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %size2, align 8
  %49 = ptrtoint ptr %dma_cookie to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dma_cookie, align 4
  %51 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dma_handle, align 4
  %53 = ptrtoint ptr %dma_attrs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dma_attrs, align 8
  tail call void @dma_free_attrs(ptr noundef %1, i32 noundef %48, ptr noundef %50, i32 noundef %52, i32 noundef %54) #14
  br label %free_bo

free_bo:                                          ; preds = %free_attrs, %do.end
  %err.2 = phi i32 [ %err.1, %free_attrs ], [ -12, %do.end ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %free_bo, %if.end54, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %free_bo ], [ 0, %if.end54 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_vde_free_bo(ptr noundef %bo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vde1 = getelementptr inbounds %struct.tegra_vde_bo, ptr %bo, i32 0, i32 2
  %0 = ptrtoint ptr %vde1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vde1, align 4
  %parent = getelementptr inbounds %struct.tegra_vde, ptr %1, i32 0, i32 12, i32 4
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %domain = getelementptr inbounds %struct.tegra_vde, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %domain, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %bo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bo, align 4
  tail call void @tegra_vde_iommu_unmap(ptr noundef %1, ptr noundef %7) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sgt = getelementptr inbounds %struct.tegra_vde_bo, ptr %bo, i32 0, i32 1
  %dma_dir = getelementptr inbounds %struct.tegra_vde_bo, ptr %bo, i32 0, i32 3
  %8 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_dir, align 4
  %dma_attrs = getelementptr inbounds %struct.tegra_vde_bo, ptr %bo, i32 0, i32 4
  %10 = ptrtoint ptr %dma_attrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_attrs, align 4
  %12 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sgt, align 4
  %orig_nents.i = getelementptr inbounds %struct.tegra_vde_bo, ptr %bo, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %13, i32 noundef %15, i32 noundef %9, i32 noundef %11) #14
  tail call void @sg_free_table(ptr noundef %sgt) #14
  %size = getelementptr inbounds %struct.tegra_vde_bo, ptr %bo, i32 0, i32 8
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  %dma_cookie = getelementptr inbounds %struct.tegra_vde_bo, ptr %bo, i32 0, i32 7
  %18 = ptrtoint ptr %dma_cookie to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_cookie, align 4
  %dma_handle = getelementptr inbounds %struct.tegra_vde_bo, ptr %bo, i32 0, i32 5
  %20 = ptrtoint ptr %dma_handle to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_handle, align 4
  %22 = ptrtoint ptr %dma_attrs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_attrs, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef %17, ptr noundef %19, i32 noundef %21, i32 noundef %23) #14
  tail call void @kfree(ptr noundef %bo) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_vde_iommu_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @completion_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_vde_readl(ptr noundef %vde, ptr noundef %base, i32 noundef %offset, i32 noundef %value) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_vde_readl, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_vde_readl, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !401

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !392

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.80, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !402
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_vde_readl, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %vde, ptr noundef %base, i32 noundef %offset, i32 noundef %value) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !403
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !403
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !392

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.80, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !404
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_vde_readl, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_vde_readl.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_vde_readl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.78, i32 noundef 38, ptr noundef nonnull @.str.79) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !405
  %38 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %base, i32 noundef %offset, i32 noundef %value) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_vde_writel, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_vde_writel, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !401

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !392

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.80, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !406
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_vde_writel, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %vde, ptr noundef %base, i32 noundef %offset, i32 noundef %value) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !407
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !407
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !392

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.80, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !404
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_vde_writel, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_vde_writel.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_vde_writel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.78, i32 noundef 34, ptr noundef nonnull @.str.79) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !405
  %38 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_tegra_core_dev_init_opp_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_vde_unlocked_ioctl(ptr nocapture noundef readonly %filp, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %ctx.i = alloca %struct.tegra_vde_h264_decoder_ctx, align 8
  %bitstream_data_dmabuf_attachment.i = alloca ptr, align 4
  %bitstream_data_addr.i = alloca i32, align 4
  %bitstream_data_size.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1082168832, i32 %cmd)
  %cond = icmp eq i32 %cmd, 1082168832
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -228
  %parent.i = getelementptr i8, ptr %1, i32 20
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ctx.i) #14
  %4 = call ptr @memset(ptr %ctx.i, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitstream_data_dmabuf_attachment.i) #14
  %5 = ptrtoint ptr %bitstream_data_dmabuf_attachment.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %bitstream_data_dmabuf_attachment.i, align 4, !annotation !394
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitstream_data_addr.i) #14
  %6 = ptrtoint ptr %bitstream_data_addr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %bitstream_data_addr.i, align 4, !annotation !394
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitstream_data_size.i) #14
  %7 = ptrtoint ptr %bitstream_data_size.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %bitstream_data_size.i, align 4, !annotation !394
  %8 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.103, i32 noundef 156) #14
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i.i, label %sw.bb.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb.if.then11.i.i.i_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 128, i32 -1226833920) #21, !srcloc !408
  %asmresult.i.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !392

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ctx.i, i32 noundef 128) #14
  %10 = call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #6, !srcloc !409
  %and.i.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #14, !srcloc !410
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !411
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ctx.i, ptr noundef %8, i32 noundef 128) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #14, !srcloc !410
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !411
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !392

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb.if.then11.i.i.i_crit_edge
  %res.0.i.i280.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 128, %sw.bb.if.then11.i.i.i_crit_edge ], [ 128, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 128, %res.0.i.i280.i
  %add.ptr.i.i.i = getelementptr i8, ptr %ctx.i, i32 %sub.i.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i280.i)
  br label %tegra_vde_ioctl_decode_h264.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %dpb_frames_nb.i.i = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx.i, i32 0, i32 3
  %14 = ptrtoint ptr %dpb_frames_nb.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dpb_frames_nb.i.i, align 8
  %16 = add i32 %15, -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %16)
  %17 = icmp ult i32 %16, -17
  br i1 %17, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.104, i32 noundef %15) #19
  br label %tegra_vde_ioctl_decode_h264.exit

if.end.i.i:                                       ; preds = %if.end.i
  %level_idc.i.i = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx.i, i32 0, i32 6
  %18 = ptrtoint ptr %level_idc.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %level_idc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %19)
  %cmp4.i.i = icmp ugt i32 %19, 15
  br i1 %cmp4.i.i, label %do.end7.i.i, label %if.end9.i.i

do.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.107, i32 noundef %19) #19
  br label %tegra_vde_ioctl_decode_h264.exit

if.end9.i.i:                                      ; preds = %if.end.i.i
  %pic_init_qp.i.i = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx.i, i32 0, i32 13
  %20 = ptrtoint ptr %pic_init_qp.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pic_init_qp.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %21)
  %cmp10.i.i = icmp ugt i32 %21, 52
  br i1 %cmp10.i.i, label %do.end13.i.i, label %if.end15.i.i

do.end13.i.i:                                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.110, i32 noundef %21) #19
  br label %tegra_vde_ioctl_decode_h264.exit

if.end15.i.i:                                     ; preds = %if.end9.i.i
  %log2_max_pic_order_cnt_lsb.i.i = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx.i, i32 0, i32 7
  %22 = ptrtoint ptr %log2_max_pic_order_cnt_lsb.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %log2_max_pic_order_cnt_lsb.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %23)
  %cmp16.i.i = icmp ugt i32 %23, 16
  br i1 %cmp16.i.i, label %do.end19.i.i, label %if.end21.i.i

do.end19.i.i:                                     ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.113, i32 noundef %23) #19
  br label %tegra_vde_ioctl_decode_h264.exit

if.end21.i.i:                                     ; preds = %if.end15.i.i
  %log2_max_frame_num.i.i = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx.i, i32 0, i32 8
  %24 = ptrtoint ptr %log2_max_frame_num.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %log2_max_frame_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %25)
  %cmp22.i.i = icmp ugt i32 %25, 16
  br i1 %cmp22.i.i, label %do.end25.i.i, label %if.end27.i.i

do.end25.i.i:                                     ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.116, i32 noundef %25) #19
  br label %tegra_vde_ioctl_decode_h264.exit

if.end27.i.i:                                     ; preds = %if.end21.i.i
  %chroma_qp_index_offset.i.i = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx.i, i32 0, i32 16
  %26 = ptrtoint ptr %chroma_qp_index_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chroma_qp_index_offset.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %27)
  %cmp28.i.i = icmp ugt i32 %27, 31
  br i1 %cmp28.i.i, label %do.end31.i.i, label %if.end33.i.i

do.end31.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.119, i32 noundef %27) #19
  br label %tegra_vde_ioctl_decode_h264.exit

if.end33.i.i:                                     ; preds = %if.end27.i.i
  %pic_order_cnt_type.i.i = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx.i, i32 0, i32 9
  %28 = ptrtoint ptr %pic_order_cnt_type.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pic_order_cnt_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp34.i.i = icmp ugt i32 %29, 2
  br i1 %cmp34.i.i, label %do.end37.i.i, label %if.end39.i.i

do.end37.i.i:                                     ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.122, i32 noundef %29) #19
  br label %tegra_vde_ioctl_decode_h264.exit

if.end39.i.i:                                     ; preds = %if.end33.i.i
  %num_ref_idx_l0_active_minus1.i.i = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx.i, i32 0, i32 18
  %30 = ptrtoint ptr %num_ref_idx_l0_active_minus1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_ref_idx_l0_active_minus1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %31)
  %cmp40.i.i = icmp ugt i32 %31, 15
  br i1 %cmp40.i.i, label %do.end43.i.i, label %if.end45.i.i

do.end43.i.i:                                     ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.125, i32 noundef %31) #19
  br label %tegra_vde_ioctl_decode_h264.exit

if.end45.i.i:                                     ; preds = %if.end39.i.i
  %num_ref_idx_l1_active_minus1.i.i = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx.i, i32 0, i32 19
  %32 = ptrtoint ptr %num_ref_idx_l1_active_minus1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_ref_idx_l1_active_minus1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %33)
  %cmp46.i.i = icmp ugt i32 %33, 15
  br i1 %cmp46.i.i, label %do.end49.i.i, label %if.end51.i.i

do.end49.i.i:                                     ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.128, i32 noundef %33) #19
  br label %tegra_vde_ioctl_decode_h264.exit

if.end51.i.i:                                     ; preds = %if.end45.i.i
  %pic_width_in_mbs.i.i = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx.i, i32 0, i32 11
  %34 = ptrtoint ptr %pic_width_in_mbs.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pic_width_in_mbs.i.i, align 8
  %36 = add i32 %35, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127, i32 %36)
  %37 = icmp ult i32 %36, -127
  br i1 %37, label %do.end57.i.i, label %if.end59.i.i

do.end57.i.i:                                     ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.131, i32 noundef %35) #19
  br label %tegra_vde_ioctl_decode_h264.exit

if.end59.i.i:                                     ; preds = %if.end51.i.i
  %pic_height_in_mbs.i.i = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx.i, i32 0, i32 12
  %38 = ptrtoint ptr %pic_height_in_mbs.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pic_height_in_mbs.i.i, align 4
  %40 = add i32 %39, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127, i32 %40)
  %41 = icmp ult i32 %40, -127
  br i1 %41, label %do.end66.i.i, label %if.end4.i

do.end66.i.i:                                     ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.134, i32 noundef %39) #19
  br label %tegra_vde_ioctl_decode_h264.exit

if.end4.i:                                        ; preds = %if.end59.i.i
  %42 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ctx.i, align 8
  %bitstream_data_offset.i = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx.i, i32 0, i32 1
  %44 = ptrtoint ptr %bitstream_data_offset.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bitstream_data_offset.i, align 4
  %call5.i = call fastcc i32 @tegra_vde_attach_dmabuf(ptr noundef %add.ptr, i32 noundef %43, i32 noundef %45, i32 noundef 16384, i32 noundef 16384, ptr noundef nonnull %bitstream_data_dmabuf_attachment.i, ptr noundef nonnull %bitstream_data_addr.i, ptr noundef nonnull %bitstream_data_size.i, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.tegra_vde_ioctl_decode_h264.exit_crit_edge

if.end4.i.tegra_vde_ioctl_decode_h264.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tegra_vde_ioctl_decode_h264.exit

if.end8.i:                                        ; preds = %if.end4.i
  %46 = ptrtoint ptr %dpb_frames_nb.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dpb_frames_nb.i.i, align 8
  %48 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %47, i32 64) #14
  %49 = extractvalue { i32, i1 } %48, 1
  br i1 %49, label %if.end8.i.release_bitstream_dmabuf.i_crit_edge, label %if.end7.i.i, !prof !393

if.end8.i.release_bitstream_dmabuf.i_crit_edge:   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %release_bitstream_dmabuf.i

if.end7.i.i:                                      ; preds = %if.end8.i
  %50 = extractvalue { i32, i1 } %48, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %50, i32 noundef 3264) #22
  %tobool10.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool10.not.i, label %if.end7.i.i.release_bitstream_dmabuf.i_crit_edge, label %if.end12.i

if.end7.i.i.release_bitstream_dmabuf.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %release_bitstream_dmabuf.i

if.end12.i:                                       ; preds = %if.end7.i.i
  %51 = ptrtoint ptr %dpb_frames_nb.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dpb_frames_nb.i.i, align 8
  %53 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %52, i32 40) #14
  %54 = extractvalue { i32, i1 } %53, 1
  br i1 %54, label %if.end12.i.free_frames.i_crit_edge, label %if.end7.i.i.i, !prof !393

if.end12.i.free_frames.i_crit_edge:               ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_frames.i

if.end7.i.i.i:                                    ; preds = %if.end12.i
  %55 = extractvalue { i32, i1 } %53, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %55, i32 noundef 3520) #22
  %tobool15.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool15.not.i, label %if.end7.i.i.i.free_frames.i_crit_edge, label %if.end17.i

if.end7.i.i.i.free_frames.i_crit_edge:            ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_frames.i

if.end17.i:                                       ; preds = %if.end7.i.i.i
  %56 = ptrtoint ptr %pic_width_in_mbs.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pic_width_in_mbs.i.i, align 8
  %58 = ptrtoint ptr %pic_height_in_mbs.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pic_height_in_mbs.i.i, align 4
  %mul.i = mul i32 %59, %57
  %dpb_frames_ptr.i = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx.i, i32 0, i32 2
  %60 = ptrtoint ptr %dpb_frames_ptr.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %dpb_frames_ptr.i, align 8
  %conv19.i = trunc i64 %61 to i32
  %62 = inttoptr i32 %conv19.i to ptr
  %63 = ptrtoint ptr %dpb_frames_nb.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dpb_frames_nb.i.i, align 8
  %mul21.i = shl i32 %64, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul21.i)
  %cmp9.i.i.i = icmp slt i32 %mul21.i, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end17.i
  %.b1.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs16.i.i.i.free_dpb_frames.i_crit_edge, label %if.then27.i.i.i, !prof !392

land.rhs16.i.i.i.free_dpb_frames.i_crit_edge:     ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_dpb_frames.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.101, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %free_dpb_frames.i

if.then.i.i.i.i:                                  ; preds = %if.end17.i
  call void @__check_object_size(ptr noundef nonnull %call8.i.i, i32 noundef %mul21.i, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.103, i32 noundef 156) #14
  %call.i.i234.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i234.i, label %if.then.i.i.i.i.if.end.i.i247.i_crit_edge, label %land.lhs.true.i.i237.i

if.then.i.i.i.i.if.end.i.i247.i_crit_edge:        ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i247.i

land.lhs.true.i.i237.i:                           ; preds = %if.then.i.i.i.i
  %65 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %62, i32 %mul21.i, i32 -1226833920) #21, !srcloc !408
  %asmresult.i.i235.i = extractvalue { i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i235.i)
  %cmp.i6.i236.i = icmp eq i32 %asmresult.i.i235.i, 0
  br i1 %cmp.i6.i236.i, label %if.then.i7.i244.i, label %land.lhs.true.i.i237.i.if.end.i.i247.i_crit_edge, !prof !392

land.lhs.true.i.i237.i.if.end.i.i247.i_crit_edge: ; preds = %land.lhs.true.i.i237.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i247.i

if.then.i7.i244.i:                                ; preds = %land.lhs.true.i.i237.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i238.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call8.i.i, i32 noundef %mul21.i) #14
  %66 = call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i.i.i.i.i.i239.i = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i.i.i.i239.i to ptr
  %cpu_domain.i.i.i.i.i240.i = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 4
  %68 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i240.i) #6, !srcloc !409
  %and.i.i.i.i241.i = and i32 %68, -13
  %or.i.i.i.i242.i = or i32 %and.i.i.i.i241.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i242.i) #14, !srcloc !410
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !411
  %call1.i.i.i243.i = call i32 @arm_copy_from_user(ptr noundef nonnull %call8.i.i, ptr noundef %62, i32 noundef %mul21.i) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %68) #14, !srcloc !410
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !411
  br label %if.end.i.i247.i

if.end.i.i247.i:                                  ; preds = %if.then.i7.i244.i, %land.lhs.true.i.i237.i.if.end.i.i247.i_crit_edge, %if.then.i.i.i.i.if.end.i.i247.i_crit_edge
  %res.0.i.i245.i = phi i32 [ %mul21.i, %if.then.i.i.i.i.if.end.i.i247.i_crit_edge ], [ %call1.i.i.i243.i, %if.then.i7.i244.i ], [ %mul21.i, %land.lhs.true.i.i237.i.if.end.i.i247.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i245.i)
  %tobool4.not.i.i246.i = icmp eq i32 %res.0.i.i245.i, 0
  br i1 %tobool4.not.i.i246.i, label %if.end25.i, label %if.then11.i.i250.i, !prof !392

if.then11.i.i250.i:                               ; preds = %if.end.i.i247.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i248.i = sub i32 %mul21.i, %res.0.i.i245.i
  %add.ptr.i.i249.i = getelementptr i8, ptr %call8.i.i, i32 %sub.i.i248.i
  %69 = call ptr @memset(ptr %add.ptr.i.i249.i, i32 0, i32 %res.0.i.i245.i)
  br label %free_dpb_frames.i

if.end25.i:                                       ; preds = %if.end.i.i247.i
  %70 = ptrtoint ptr %pic_width_in_mbs.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pic_width_in_mbs.i.i, align 8
  %mul27.i = shl i32 %71, 3
  %add.i = add i32 %mul27.i, 15
  %and.i = and i32 %add.i, 536870896
  %72 = ptrtoint ptr %pic_height_in_mbs.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pic_height_in_mbs.i.i, align 4
  %mul29.i = shl i32 %73, 3
  %mul30.i = mul i32 %and.i, %mul29.i
  %mul31.i = shl i32 %mul.i, 8
  %74 = ptrtoint ptr %dpb_frames_nb.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dpb_frames_nb.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp33340.not.i = icmp eq i32 %75, 0
  br i1 %cmp33340.not.i, label %if.end25.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end25.i.for.end.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end25.i
  %baseline_profile.i = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx.i, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0341.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %frame_num.i.i = getelementptr %struct.tegra_vde_h264_frame, ptr %call8.i.i, i32 %i.0341.i, i32 8
  %76 = ptrtoint ptr %frame_num.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %frame_num.i.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388607, i32 %77)
  %cmp.i.i = icmp ugt i32 %77, 8388607
  br i1 %cmp.i.i, label %tegra_vde_validate_frame.exit.i, label %if.end38.i

tegra_vde_validate_frame.exit.i:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.144, i32 noundef %77) #19
  br label %release_dpb_frames.i

if.end38.i:                                       ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.tegra_vde_h264_frame, ptr %call8.i.i, i32 %i.0341.i
  %flags.i = getelementptr %struct.tegra_vde_h264_frame, ptr %call8.i.i, i32 %i.0341.i, i32 9
  %78 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags.i, align 4
  %arrayidx40.i = getelementptr %struct.video_frame, ptr %call8.i.i.i, i32 %i.0341.i
  %flags41.i = getelementptr %struct.video_frame, ptr %call8.i.i.i, i32 %i.0341.i, i32 9
  %80 = ptrtoint ptr %flags41.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %flags41.i, align 4
  %81 = ptrtoint ptr %frame_num.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %frame_num.i.i, align 32
  %frame_num44.i = getelementptr %struct.video_frame, ptr %call8.i.i.i, i32 %i.0341.i, i32 8
  %83 = ptrtoint ptr %frame_num44.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %frame_num44.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0341.i)
  %cmp45.i = icmp eq i32 %i.0341.i, 0
  %cond.i = select i1 %cmp45.i, i32 2, i32 1
  %84 = ptrtoint ptr %baseline_profile.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %baseline_profile.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool49.not.i = icmp eq i32 %85, 0
  %86 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i, align 64
  %y_offset.i.i = getelementptr %struct.tegra_vde_h264_frame, ptr %call8.i.i, i32 %i.0341.i, i32 4
  %88 = ptrtoint ptr %y_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %y_offset.i.i, align 16
  %y_addr.i.i = getelementptr %struct.video_frame, ptr %call8.i.i.i, i32 %i.0341.i, i32 4
  %call.i.i = call fastcc i32 @tegra_vde_attach_dmabuf(ptr noundef %add.ptr, i32 noundef %87, i32 noundef %89, i32 noundef %mul31.i, i32 noundef 256, ptr noundef %arrayidx40.i, ptr noundef %y_addr.i.i, ptr noundef null, i32 noundef %cond.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i268.i, label %if.end38.i.release_dpb_frames.i_crit_edge

if.end38.i.release_dpb_frames.i_crit_edge:        ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %release_dpb_frames.i

if.end.i268.i:                                    ; preds = %if.end38.i
  %cb_fd.i.i = getelementptr %struct.tegra_vde_h264_frame, ptr %call8.i.i, i32 %i.0341.i, i32 1
  %90 = ptrtoint ptr %cb_fd.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cb_fd.i.i, align 4
  %cb_offset.i.i = getelementptr %struct.tegra_vde_h264_frame, ptr %call8.i.i, i32 %i.0341.i, i32 5
  %92 = ptrtoint ptr %cb_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %cb_offset.i.i, align 4
  %cb_dmabuf_attachment.i.i = getelementptr %struct.video_frame, ptr %call8.i.i.i, i32 %i.0341.i, i32 1
  %cb_addr.i.i = getelementptr %struct.video_frame, ptr %call8.i.i.i, i32 %i.0341.i, i32 5
  %call1.i.i = call fastcc i32 @tegra_vde_attach_dmabuf(ptr noundef %add.ptr, i32 noundef %91, i32 noundef %93, i32 noundef %mul30.i, i32 noundef 256, ptr noundef %cb_dmabuf_attachment.i.i, ptr noundef %cb_addr.i.i, ptr noundef null, i32 noundef %cond.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i268.i.err_release_y.i.i_crit_edge

if.end.i268.i.err_release_y.i.i_crit_edge:        ; preds = %if.end.i268.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_release_y.i.i

if.end4.i.i:                                      ; preds = %if.end.i268.i
  %cr_fd.i.i = getelementptr %struct.tegra_vde_h264_frame, ptr %call8.i.i, i32 %i.0341.i, i32 2
  %94 = ptrtoint ptr %cr_fd.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cr_fd.i.i, align 8
  %cr_offset.i.i = getelementptr %struct.tegra_vde_h264_frame, ptr %call8.i.i, i32 %i.0341.i, i32 6
  %96 = ptrtoint ptr %cr_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cr_offset.i.i, align 8
  %cr_dmabuf_attachment.i.i = getelementptr %struct.video_frame, ptr %call8.i.i.i, i32 %i.0341.i, i32 2
  %cr_addr.i.i = getelementptr %struct.video_frame, ptr %call8.i.i.i, i32 %i.0341.i, i32 6
  %call5.i.i = call fastcc i32 @tegra_vde_attach_dmabuf(ptr noundef %add.ptr, i32 noundef %95, i32 noundef %97, i32 noundef %mul30.i, i32 noundef 256, ptr noundef %cr_dmabuf_attachment.i.i, ptr noundef %cr_addr.i.i, ptr noundef null, i32 noundef %cond.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end4.i.i.err_release_cb.i.i_crit_edge

if.end4.i.i.err_release_cb.i.i_crit_edge:         ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_release_cb.i.i

if.end8.i.i:                                      ; preds = %if.end4.i.i
  br i1 %tobool49.not.i, label %if.end11.i.i, label %if.then10.i.i

if.then10.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %aux_addr.i.i = getelementptr %struct.video_frame, ptr %call8.i.i.i, i32 %i.0341.i, i32 7
  %98 = ptrtoint ptr %aux_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1692314880, ptr %aux_addr.i.i, align 4
  br label %for.inc.i

if.end11.i.i:                                     ; preds = %if.end8.i.i
  %aux_fd.i.i = getelementptr %struct.tegra_vde_h264_frame, ptr %call8.i.i, i32 %i.0341.i, i32 3
  %99 = ptrtoint ptr %aux_fd.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %aux_fd.i.i, align 4
  %aux_offset.i.i = getelementptr %struct.tegra_vde_h264_frame, ptr %call8.i.i, i32 %i.0341.i, i32 7
  %101 = ptrtoint ptr %aux_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %aux_offset.i.i, align 4
  %aux_dmabuf_attachment.i.i = getelementptr %struct.video_frame, ptr %call8.i.i.i, i32 %i.0341.i, i32 3
  %aux_addr12.i.i = getelementptr %struct.video_frame, ptr %call8.i.i.i, i32 %i.0341.i, i32 7
  %call13.i.i = call fastcc i32 @tegra_vde_attach_dmabuf(ptr noundef %add.ptr, i32 noundef %100, i32 noundef %102, i32 noundef %mul30.i, i32 noundef 256, ptr noundef %aux_dmabuf_attachment.i.i, ptr noundef %aux_addr12.i.i, ptr noundef null, i32 noundef %cond.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end11.i.i.for.inc.i_crit_edge, label %err_release_cr.i.i

if.end11.i.i.for.inc.i_crit_edge:                 ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

err_release_cr.i.i:                               ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %103 = ptrtoint ptr %cr_dmabuf_attachment.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cr_dmabuf_attachment.i.i, align 8
  call void @tegra_vde_dmabuf_cache_unmap(ptr noundef %add.ptr, ptr noundef %104, i1 noundef zeroext true) #14
  br label %err_release_cb.i.i

err_release_cb.i.i:                               ; preds = %err_release_cr.i.i, %if.end4.i.i.err_release_cb.i.i_crit_edge
  %err.0.i.i = phi i32 [ %call13.i.i, %err_release_cr.i.i ], [ %call5.i.i, %if.end4.i.i.err_release_cb.i.i_crit_edge ]
  %105 = ptrtoint ptr %cb_dmabuf_attachment.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cb_dmabuf_attachment.i.i, align 4
  call void @tegra_vde_dmabuf_cache_unmap(ptr noundef %add.ptr, ptr noundef %106, i1 noundef zeroext true) #14
  br label %err_release_y.i.i

err_release_y.i.i:                                ; preds = %err_release_cb.i.i, %if.end.i268.i.err_release_y.i.i_crit_edge
  %err.1.i.i = phi i32 [ %err.0.i.i, %err_release_cb.i.i ], [ %call1.i.i, %if.end.i268.i.err_release_y.i.i_crit_edge ]
  %107 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx40.i, align 8
  call void @tegra_vde_dmabuf_cache_unmap(ptr noundef %add.ptr, ptr noundef %108, i1 noundef zeroext true) #14
  br label %release_dpb_frames.i

for.inc.i:                                        ; preds = %if.end11.i.i.for.inc.i_crit_edge, %if.then10.i.i
  %inc.i = add nuw i32 %i.0341.i, 1
  %109 = ptrtoint ptr %dpb_frames_nb.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dpb_frames_nb.i.i, align 8
  %cmp33.i = icmp ult i32 %inc.i, %110
  br i1 %cmp33.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end25.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end25.i.for.end.i_crit_edge ], [ %inc.i, %for.inc.i.for.end.i_crit_edge ]
  %lock.i = getelementptr i8, ptr %1, i32 -192
  %call54.i = call i32 @mutex_lock_interruptible_nested(ptr noundef %lock.i, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %if.end57.i, label %for.end.i.release_dpb_frames.i_crit_edge

for.end.i.release_dpb_frames.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %release_dpb_frames.i

if.end57.i:                                       ; preds = %for.end.i
  %call58.i = call fastcc i32 @pm_runtime_resume_and_get(ptr noundef %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %cmp59.i = icmp slt i32 %call58.i, 0
  br i1 %cmp59.i, label %if.end57.i.unlock.i_crit_edge, label %if.end62.i

if.end57.i.unlock.i_crit_edge:                    ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock.i

if.end62.i:                                       ; preds = %if.end57.i
  %rst_mc.i = getelementptr i8, ptr %1, i32 44
  %111 = ptrtoint ptr %rst_mc.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %rst_mc.i, align 4
  %call63.i = call i32 @reset_control_assert(ptr noundef %112) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %if.end66.i, label %do.end.i

do.end.i:                                         ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.84, i32 noundef %call63.i) #19
  br label %put_runtime_pm.i

if.end66.i:                                       ; preds = %if.end62.i
  %rst.i = getelementptr i8, ptr %1, i32 40
  %113 = ptrtoint ptr %rst.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rst.i, align 4
  %call67.i = call i32 @reset_control_reset(ptr noundef %114) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %if.end73.i, label %do.end72.i

do.end72.i:                                       ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.87, i32 noundef %call67.i) #19
  br label %put_runtime_pm.i

if.end73.i:                                       ; preds = %if.end66.i
  %115 = ptrtoint ptr %rst_mc.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rst_mc.i, align 4
  %call75.i = call i32 @reset_control_deassert(ptr noundef %116) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %if.end81.i, label %do.end80.i

do.end80.i:                                       ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.90, i32 noundef %call75.i) #19
  br label %put_runtime_pm.i

if.end81.i:                                       ; preds = %if.end73.i
  %117 = ptrtoint ptr %bitstream_data_addr.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %bitstream_data_addr.i, align 4
  %119 = ptrtoint ptr %bitstream_data_size.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %bitstream_data_size.i, align 4
  %call82.i = call fastcc i32 @tegra_vde_setup_hw_context(ptr noundef %add.ptr, ptr noundef nonnull %ctx.i, ptr noundef nonnull %call8.i.i.i, i32 noundef %118, i32 noundef %120, i32 noundef %mul.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %tobool83.not.i = icmp eq i32 %call82.i, 0
  br i1 %tobool83.not.i, label %if.end85.i, label %if.end81.i.put_runtime_pm.i_crit_edge

if.end81.i.put_runtime_pm.i_crit_edge:            ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_runtime_pm.i

if.end85.i:                                       ; preds = %if.end81.i
  call fastcc void @tegra_vde_decode_frame(ptr noundef %add.ptr, i32 noundef %mul.i) #14
  %decode_completion.i = getelementptr i8, ptr %1, i32 52
  %call87.i = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %decode_completion.i, i32 noundef 100) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.i)
  %cmp88.i = icmp eq i32 %call87.i, 0
  br i1 %cmp88.i, label %if.then90.i, label %if.else.i

if.then90.i:                                      ; preds = %if.end85.i
  %bsev.i = getelementptr i8, ptr %1, i32 -224
  %121 = ptrtoint ptr %bsev.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %bsev.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %122, i32 16
  %123 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !398
  %124 = call i32 @llvm.bswap.i32(i32 %123) #14
  call fastcc void @trace_vde_readl(ptr noundef %add.ptr, ptr noundef %122, i32 noundef 16, i32 noundef %124) #14
  %125 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i270.i = getelementptr i8, ptr %126, i32 200
  %127 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i270.i) #14, !srcloc !398
  %128 = call i32 @llvm.bswap.i32(i32 %127) #14
  call fastcc void @trace_vde_readl(ptr noundef %add.ptr, ptr noundef %126, i32 noundef 200, i32 noundef %128) #14
  %and93.i = and i32 %128, 8191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool94.not.i = icmp eq i32 %123, 0
  br i1 %tobool94.not.i, label %if.then90.i.cond.end.i_crit_edge, label %cond.true.i

if.then90.i.cond.end.i_crit_edge:                 ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #16
  %129 = ptrtoint ptr %bitstream_data_addr.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %bitstream_data_addr.i, align 4
  %sub.i = sub i32 %124, %130
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then90.i.cond.end.i_crit_edge
  %cond95.i = phi i32 [ %sub.i, %cond.true.i ], [ 0, %if.then90.i.cond.end.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.93, i32 noundef %cond95.i, i32 noundef %and93.i) #19
  br label %if.end103.i

if.else.i:                                        ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #16
  %131 = call i32 @llvm.smin.i32(i32 %call87.i, i32 0) #14
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.else.i, %cond.end.i
  %ret.0.i = phi i32 [ -5, %cond.end.i ], [ %131, %if.else.i ]
  %132 = ptrtoint ptr %rst_mc.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rst_mc.i, align 4
  %call105.i = call i32 @reset_control_assert(ptr noundef %133) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.i)
  %tobool106.not.i = icmp eq i32 %call105.i, 0
  br i1 %tobool106.not.i, label %if.end103.i.if.end111.i_crit_edge, label %do.end110.i

if.end103.i.if.end111.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end111.i

do.end110.i:                                      ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.96, i32 noundef %call105.i) #19
  br label %if.end111.i

if.end111.i:                                      ; preds = %do.end110.i, %if.end103.i.if.end111.i_crit_edge
  %134 = ptrtoint ptr %rst.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rst.i, align 4
  %call113.i = call i32 @reset_control_assert(ptr noundef %135) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113.i)
  %tobool114.not.i = icmp eq i32 %call113.i, 0
  br i1 %tobool114.not.i, label %if.end111.i.put_runtime_pm.i_crit_edge, label %do.end118.i

if.end111.i.put_runtime_pm.i_crit_edge:           ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %put_runtime_pm.i

do.end118.i:                                      ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.99, i32 noundef %call113.i) #19
  br label %put_runtime_pm.i

put_runtime_pm.i:                                 ; preds = %do.end118.i, %if.end111.i.put_runtime_pm.i_crit_edge, %if.end81.i.put_runtime_pm.i_crit_edge, %do.end80.i, %do.end72.i, %do.end.i
  %ret.1.i = phi i32 [ %call63.i, %do.end.i ], [ %call67.i, %do.end72.i ], [ %call75.i, %do.end80.i ], [ %call82.i, %if.end81.i.put_runtime_pm.i_crit_edge ], [ %ret.0.i, %do.end118.i ], [ %ret.0.i, %if.end111.i.put_runtime_pm.i_crit_edge ]
  %call.i271.i = call i64 @ktime_get_mono_fast_ns() #14
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %136 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %136)
  store volatile i64 %call.i271.i, ptr %last_busy.i.i, align 8
  %call.i272.i = call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #14
  br label %unlock.i

unlock.i:                                         ; preds = %put_runtime_pm.i, %if.end57.i.unlock.i_crit_edge
  %ret.2.i = phi i32 [ %call58.i, %if.end57.i.unlock.i_crit_edge ], [ %ret.1.i, %put_runtime_pm.i ]
  call void @mutex_unlock(ptr noundef %lock.i) #14
  br label %release_dpb_frames.i

release_dpb_frames.i:                             ; preds = %unlock.i, %for.end.i.release_dpb_frames.i_crit_edge, %err_release_y.i.i, %if.end38.i.release_dpb_frames.i_crit_edge, %tegra_vde_validate_frame.exit.i
  %i.0318.i = phi i32 [ %i.0341.i, %tegra_vde_validate_frame.exit.i ], [ %i.0.lcssa.i, %for.end.i.release_dpb_frames.i_crit_edge ], [ %i.0.lcssa.i, %unlock.i ], [ %i.0341.i, %err_release_y.i.i ], [ %i.0341.i, %if.end38.i.release_dpb_frames.i_crit_edge ]
  %ret.3.i = phi i32 [ -22, %tegra_vde_validate_frame.exit.i ], [ %call54.i, %for.end.i.release_dpb_frames.i_crit_edge ], [ %ret.2.i, %unlock.i ], [ %err.1.i.i, %err_release_y.i.i ], [ %call.i.i, %if.end38.i.release_dpb_frames.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0318.i)
  %tobool122.not343.i = icmp eq i32 %i.0318.i, 0
  br i1 %tobool122.not343.i, label %release_dpb_frames.i.free_dpb_frames.i_crit_edge, label %while.body.lr.ph.i

release_dpb_frames.i.free_dpb_frames.i_crit_edge: ; preds = %release_dpb_frames.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_dpb_frames.i

while.body.lr.ph.i:                               ; preds = %release_dpb_frames.i
  %baseline_profile127.i = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx.i, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i)
  %cmp129.i = icmp ne i32 %ret.3.i, 0
  br label %while.body.i

while.body.i:                                     ; preds = %tegra_vde_release_frame_dmabufs.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %i.1344.i = phi i32 [ %i.0318.i, %while.body.lr.ph.i ], [ %dec.i, %tegra_vde_release_frame_dmabufs.exit.i.while.body.i_crit_edge ]
  %dec.i = add i32 %i.1344.i, -1
  %arrayidx126.i = getelementptr %struct.video_frame, ptr %call8.i.i.i, i32 %dec.i
  %137 = ptrtoint ptr %baseline_profile127.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %baseline_profile127.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool128.not.i = icmp eq i32 %138, 0
  br i1 %tobool128.not.i, label %if.then.i274.i, label %while.body.i.tegra_vde_release_frame_dmabufs.exit.i_crit_edge

while.body.i.tegra_vde_release_frame_dmabufs.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tegra_vde_release_frame_dmabufs.exit.i

if.then.i274.i:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %aux_dmabuf_attachment.i273.i = getelementptr %struct.video_frame, ptr %call8.i.i.i, i32 %dec.i, i32 3
  %139 = ptrtoint ptr %aux_dmabuf_attachment.i273.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %aux_dmabuf_attachment.i273.i, align 4
  call void @tegra_vde_dmabuf_cache_unmap(ptr noundef %add.ptr, ptr noundef %140, i1 noundef zeroext %cmp129.i) #14
  br label %tegra_vde_release_frame_dmabufs.exit.i

tegra_vde_release_frame_dmabufs.exit.i:           ; preds = %if.then.i274.i, %while.body.i.tegra_vde_release_frame_dmabufs.exit.i_crit_edge
  %cr_dmabuf_attachment.i275.i = getelementptr %struct.video_frame, ptr %call8.i.i.i, i32 %dec.i, i32 2
  %141 = ptrtoint ptr %cr_dmabuf_attachment.i275.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cr_dmabuf_attachment.i275.i, align 8
  call void @tegra_vde_dmabuf_cache_unmap(ptr noundef %add.ptr, ptr noundef %142, i1 noundef zeroext %cmp129.i) #14
  %cb_dmabuf_attachment.i276.i = getelementptr %struct.video_frame, ptr %call8.i.i.i, i32 %dec.i, i32 1
  %143 = ptrtoint ptr %cb_dmabuf_attachment.i276.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %cb_dmabuf_attachment.i276.i, align 4
  call void @tegra_vde_dmabuf_cache_unmap(ptr noundef %add.ptr, ptr noundef %144, i1 noundef zeroext %cmp129.i) #14
  %145 = ptrtoint ptr %arrayidx126.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx126.i, align 8
  call void @tegra_vde_dmabuf_cache_unmap(ptr noundef %add.ptr, ptr noundef %146, i1 noundef zeroext %cmp129.i) #14
  %tobool122.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool122.not.i, label %tegra_vde_release_frame_dmabufs.exit.i.free_dpb_frames.i_crit_edge, label %tegra_vde_release_frame_dmabufs.exit.i.while.body.i_crit_edge

tegra_vde_release_frame_dmabufs.exit.i.while.body.i_crit_edge: ; preds = %tegra_vde_release_frame_dmabufs.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

tegra_vde_release_frame_dmabufs.exit.i.free_dpb_frames.i_crit_edge: ; preds = %tegra_vde_release_frame_dmabufs.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %free_dpb_frames.i

free_dpb_frames.i:                                ; preds = %tegra_vde_release_frame_dmabufs.exit.i.free_dpb_frames.i_crit_edge, %release_dpb_frames.i.free_dpb_frames.i_crit_edge, %if.then11.i.i250.i, %if.then27.i.i.i, %land.rhs16.i.i.i.free_dpb_frames.i_crit_edge
  %ret.4.i = phi i32 [ -14, %if.then11.i.i250.i ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.free_dpb_frames.i_crit_edge ], [ %ret.3.i, %release_dpb_frames.i.free_dpb_frames.i_crit_edge ], [ %ret.3.i, %tegra_vde_release_frame_dmabufs.exit.i.free_dpb_frames.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #14
  br label %free_frames.i

free_frames.i:                                    ; preds = %free_dpb_frames.i, %if.end7.i.i.i.free_frames.i_crit_edge, %if.end12.i.free_frames.i_crit_edge
  %ret.5.i = phi i32 [ %ret.4.i, %free_dpb_frames.i ], [ -12, %if.end7.i.i.i.free_frames.i_crit_edge ], [ -12, %if.end12.i.free_frames.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i) #14
  br label %release_bitstream_dmabuf.i

release_bitstream_dmabuf.i:                       ; preds = %free_frames.i, %if.end7.i.i.release_bitstream_dmabuf.i_crit_edge, %if.end8.i.release_bitstream_dmabuf.i_crit_edge
  %ret.6.i = phi i32 [ %ret.5.i, %free_frames.i ], [ -12, %if.end7.i.i.release_bitstream_dmabuf.i_crit_edge ], [ -12, %if.end8.i.release_bitstream_dmabuf.i_crit_edge ]
  %147 = ptrtoint ptr %bitstream_data_dmabuf_attachment.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %bitstream_data_dmabuf_attachment.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.6.i)
  %cmp131.i = icmp ne i32 %ret.6.i, 0
  call void @tegra_vde_dmabuf_cache_unmap(ptr noundef %add.ptr, ptr noundef %148, i1 noundef zeroext %cmp131.i) #14
  br label %tegra_vde_ioctl_decode_h264.exit

tegra_vde_ioctl_decode_h264.exit:                 ; preds = %release_bitstream_dmabuf.i, %if.end4.i.tegra_vde_ioctl_decode_h264.exit_crit_edge, %do.end66.i.i, %do.end57.i.i, %do.end49.i.i, %do.end43.i.i, %do.end37.i.i, %do.end31.i.i, %do.end25.i.i, %do.end19.i.i, %do.end13.i.i, %do.end7.i.i, %do.end.i.i, %if.then11.i.i.i
  %retval.0.i = phi i32 [ %ret.6.i, %release_bitstream_dmabuf.i ], [ %call5.i, %if.end4.i.tegra_vde_ioctl_decode_h264.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ -22, %do.end.i.i ], [ -22, %do.end7.i.i ], [ -22, %do.end13.i.i ], [ -22, %do.end19.i.i ], [ -22, %do.end25.i.i ], [ -22, %do.end31.i.i ], [ -22, %do.end37.i.i ], [ -22, %do.end43.i.i ], [ -22, %do.end49.i.i ], [ -22, %do.end57.i.i ], [ -22, %do.end66.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitstream_data_size.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitstream_data_addr.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitstream_data_dmabuf_attachment.i) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ctx.i) #14
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %parent = getelementptr inbounds %struct.miscdevice, ptr %1, i32 0, i32 4
  %149 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %150, ptr noundef nonnull @.str.82, i32 noundef %cmd) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end, %tegra_vde_ioctl_decode_h264.exit
  %retval.0 = phi i32 [ %retval.0.i, %tegra_vde_ioctl_decode_h264.exit ], [ -25, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_vde_release_file(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -228
  tail call void @tegra_vde_dmabuf_cache_unmap_sync(ptr noundef %add.ptr) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_vde_attach_dmabuf(ptr noundef %vde, i32 noundef %fd, i32 noundef %offset, i32 noundef %min_size, i32 noundef %align_size, ptr noundef %a, ptr noundef %addrp, ptr noundef writeonly %size, i32 noundef %dma_dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 12, i32 4
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %call = tail call ptr @dma_buf_get(i32 noundef %fd) #14
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.136) #19
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call, align 4
  %sub = add i32 %align_size, -1
  %and = and i32 %4, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.139, i32 noundef %4, i32 noundef %align_size) #19
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %conv = zext i32 %offset to i64
  %conv10 = zext i32 %min_size to i64
  %add = add nuw nsw i64 %conv10, %conv
  %conv12 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv12)
  %cmp = icmp ugt i64 %add, %conv12
  br i1 %cmp, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.142, i32 noundef %4, i32 noundef %offset, i32 noundef %min_size) #19
  br label %cleanup

if.end19:                                         ; preds = %if.end9
  %call20 = tail call i32 @tegra_vde_dmabuf_cache_map(ptr noundef %vde, ptr noundef %call, i32 noundef %dma_dir, ptr noundef %a, ptr noundef %addrp) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %err_put

if.end23:                                         ; preds = %if.end19
  %5 = ptrtoint ptr %addrp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addrp, align 4
  %add24 = add i32 %6, %offset
  store i32 %add24, ptr %addrp, align 4
  %tobool25.not = icmp eq ptr %size, null
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.then26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call, align 4
  %sub28 = sub i32 %8, %offset
  %9 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub28, ptr %size, align 4
  br label %cleanup

err_put:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @dma_buf_put(ptr noundef %call) #14
  br label %cleanup

cleanup:                                          ; preds = %err_put, %if.then26, %if.end23.cleanup_crit_edge, %do.end17, %do.end7, %do.end
  %retval.0 = phi i32 [ %2, %do.end ], [ -22, %do.end7 ], [ -22, %do.end17 ], [ %call20, %err_put ], [ 0, %if.then26 ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_vde_setup_hw_context(ptr noundef %vde, ptr nocapture noundef readonly %ctx, ptr noundef readonly %dpb_frames, i32 noundef %bitstream_data_addr, i32 noundef %bitstream_data_size, i32 noundef %macroblocks_nb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 12, i32 4
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %2 = ptrtoint ptr %vde to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vde, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 240
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #14, !srcloc !398
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #14
  tail call fastcc void @trace_vde_readl(ptr noundef %vde, ptr noundef %3, i32 noundef 240, i32 noundef %5) #14
  %or.i = or i32 %5, 10
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %3, i32 noundef 240, i32 noundef %or.i) #14
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #14, !srcloc !399
  %bsev = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 1
  %7 = ptrtoint ptr %bsev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bsev, align 4
  %add.ptr.i.i382 = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i382) #14, !srcloc !398
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #14
  tail call fastcc void @trace_vde_readl(ptr noundef %vde, ptr noundef %8, i32 noundef 8, i32 noundef %10) #14
  %or.i383 = or i32 %10, 11
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %8, i32 noundef 8, i32 noundef %or.i383) #14
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i383) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i382, i32 %11) #14, !srcloc !399
  %mbe = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 2
  %12 = ptrtoint ptr %mbe to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mbe, align 4
  %add.ptr.i.i384 = getelementptr i8, ptr %13, i32 80
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i384) #14, !srcloc !398
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #14
  tail call fastcc void @trace_vde_readl(ptr noundef %vde, ptr noundef %13, i32 noundef 80, i32 noundef %15) #14
  %or.i385 = or i32 %15, 32770
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %13, i32 noundef 80, i32 noundef %or.i385) #14
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i385) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i384, i32 %16) #14, !srcloc !399
  %17 = ptrtoint ptr %mbe to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mbe, align 4
  %add.ptr.i.i386 = getelementptr i8, ptr %18, i32 160
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i386) #14, !srcloc !398
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #14
  tail call fastcc void @trace_vde_readl(ptr noundef %vde, ptr noundef %18, i32 noundef 160, i32 noundef %20) #14
  %or.i387 = or i32 %20, 10
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %18, i32 noundef 160, i32 noundef %or.i387) #14
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i387) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i386, i32 %21) #14, !srcloc !399
  %ppe = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 3
  %22 = ptrtoint ptr %ppe to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ppe, align 4
  %add.ptr.i.i388 = getelementptr i8, ptr %23, i32 20
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i388) #14, !srcloc !398
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #14
  tail call fastcc void @trace_vde_readl(ptr noundef %vde, ptr noundef %23, i32 noundef 20, i32 noundef %25) #14
  %or.i389 = or i32 %25, 10
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %23, i32 noundef 20, i32 noundef %or.i389) #14
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i389) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i388, i32 %26) #14, !srcloc !399
  %27 = ptrtoint ptr %ppe to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ppe, align 4
  %add.ptr.i.i390 = getelementptr i8, ptr %28, i32 40
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i390) #14, !srcloc !398
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #14
  tail call fastcc void @trace_vde_readl(ptr noundef %vde, ptr noundef %28, i32 noundef 40, i32 noundef %30) #14
  %or.i391 = or i32 %30, 10
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %28, i32 noundef 40, i32 noundef %or.i391) #14
  %31 = tail call i32 @llvm.bswap.i32(i32 %or.i391) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i390, i32 %31) #14, !srcloc !399
  %mce = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 4
  %32 = ptrtoint ptr %mce to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mce, align 4
  %add.ptr.i.i392 = getelementptr i8, ptr %33, i32 8
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i392) #14, !srcloc !398
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #14
  tail call fastcc void @trace_vde_readl(ptr noundef %vde, ptr noundef %33, i32 noundef 8, i32 noundef %35) #14
  %or.i393 = or i32 %35, 2560
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %33, i32 noundef 8, i32 noundef %or.i393) #14
  %36 = tail call i32 @llvm.bswap.i32(i32 %or.i393) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i392, i32 %36) #14, !srcloc !399
  %tfe = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 5
  %37 = ptrtoint ptr %tfe to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tfe, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #14, !srcloc !398
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #14
  tail call fastcc void @trace_vde_readl(ptr noundef %vde, ptr noundef %38, i32 noundef 0, i32 noundef %40) #14
  %or.i394 = or i32 %40, 10
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %38, i32 noundef 0, i32 noundef %or.i394) #14
  %41 = tail call i32 @llvm.bswap.i32(i32 %or.i394) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %41) #14, !srcloc !399
  %vdma = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 7
  %42 = ptrtoint ptr %vdma to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vdma, align 4
  %add.ptr.i.i395 = getelementptr i8, ptr %43, i32 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i395) #14, !srcloc !398
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #14
  tail call fastcc void @trace_vde_readl(ptr noundef %vde, ptr noundef %43, i32 noundef 4, i32 noundef %45) #14
  %or.i396 = or i32 %45, 5
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %43, i32 noundef 4, i32 noundef %or.i396) #14
  %46 = tail call i32 @llvm.bswap.i32(i32 %or.i396) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i395, i32 %46) #14, !srcloc !399
  %47 = ptrtoint ptr %vdma to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vdma, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %48, i32 noundef 28, i32 noundef 0) #14
  %add.ptr.i = getelementptr i8, ptr %48, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #14, !srcloc !399
  %49 = ptrtoint ptr %vdma to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vdma, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %50, i32 noundef 0, i32 noundef 0) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 0) #14, !srcloc !399
  %51 = ptrtoint ptr %vdma to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %vdma, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %52, i32 noundef 4, i32 noundef 7) #14
  %add.ptr.i397 = getelementptr i8, ptr %52, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i397, i32 117440512) #14, !srcloc !399
  %frameid = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 8
  %53 = ptrtoint ptr %frameid to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %frameid, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %54, i32 noundef 512, i32 noundef 7) #14
  %add.ptr.i398 = getelementptr i8, ptr %54, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i398, i32 117440512) #14, !srcloc !399
  %55 = ptrtoint ptr %tfe to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tfe, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %56, i32 noundef 4, i32 noundef 5) #14
  %add.ptr.i399 = getelementptr i8, ptr %56, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i399, i32 83886080) #14, !srcloc !399
  %57 = ptrtoint ptr %mbe to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mbe, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %58, i32 noundef 132, i32 noundef 0) #14
  %add.ptr.i400 = getelementptr i8, ptr %58, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i400, i32 0) #14, !srcloc !399
  %59 = ptrtoint ptr %vde to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %vde, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %60, i32 noundef 8, i32 noundef 16) #14
  %add.ptr.i401 = getelementptr i8, ptr %60, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i401, i32 268435456) #14, !srcloc !399
  %61 = ptrtoint ptr %vde to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vde, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %62, i32 noundef 84, i32 noundef 336) #14
  %add.ptr.i402 = getelementptr i8, ptr %62, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i402, i32 1342242816) #14, !srcloc !399
  %63 = ptrtoint ptr %vde to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vde, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %64, i32 noundef 88, i32 noundef 1356) #14
  %add.ptr.i403 = getelementptr i8, ptr %64, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i403, i32 1275396096) #14, !srcloc !399
  %65 = ptrtoint ptr %vde to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %vde, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %66, i32 noundef 92, i32 noundef 3636) #14
  %add.ptr.i404 = getelementptr i8, ptr %66, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i404, i32 873332736) #14, !srcloc !399
  %67 = ptrtoint ptr %mce to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mce, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %68, i32 noundef 16, i32 noundef 104597052) #14
  %add.ptr.i405 = getelementptr i8, ptr %68, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i405, i32 1007041542) #14, !srcloc !399
  %69 = ptrtoint ptr %bsev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bsev, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %70, i32 noundef 24, i32 noundef 261120) #14
  %add.ptr.i406 = getelementptr i8, ptr %70, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i406, i32 16515840) #14, !srcloc !399
  %71 = ptrtoint ptr %bsev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bsev, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %72, i32 noundef 68, i32 noundef 5389) #14
  %add.ptr.i407 = getelementptr i8, ptr %72, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i407, i32 219480064) #14, !srcloc !399
  %73 = ptrtoint ptr %bsev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bsev, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %74, i32 noundef 64, i32 noundef 256) #14
  %add.ptr.i408 = getelementptr i8, ptr %74, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i408, i32 65536) #14, !srcloc !399
  %75 = ptrtoint ptr %bsev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bsev, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %76, i32 noundef 152, i32 noundef 0) #14
  %add.ptr.i409 = getelementptr i8, ptr %76, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i409, i32 0) #14, !srcloc !399
  %77 = ptrtoint ptr %bsev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bsev, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %78, i32 noundef 156, i32 noundef 96) #14
  %add.ptr.i410 = getelementptr i8, ptr %78, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i410, i32 1610612736) #14, !srcloc !399
  %iram = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 26
  %79 = ptrtoint ptr %iram to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %iram, align 4
  %add.ptr = getelementptr i32, ptr %80, i32 128
  %div381 = lshr i32 %macroblocks_nb, 1
  %81 = call ptr @memset(ptr %add.ptr, i32 0, i32 %div381)
  %dpb_frames_nb = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx, i32 0, i32 3
  %82 = ptrtoint ptr %dpb_frames_nb to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dpb_frames_nb, align 8
  %pic_width_in_mbs = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx, i32 0, i32 11
  %pic_height_in_mbs = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx, i32 0, i32 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp14.not.i = icmp eq i32 %83, 0
  br i1 %cmp14.not.i, label %entry.for.body3.i.preheader_crit_edge, label %for.body.i.preheader

entry.for.body3.i.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body3.i.preheader

for.body3.i.preheader:                            ; preds = %for.cond1.preheader.i.for.body3.i.preheader_crit_edge, %entry.for.body3.i.preheader_crit_edge
  br label %for.body3.i

for.body.i.preheader:                             ; preds = %entry
  %84 = ptrtoint ptr %pic_height_in_mbs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %pic_height_in_mbs, align 4
  %86 = ptrtoint ptr %pic_width_in_mbs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pic_width_in_mbs, align 8
  %shl.i435 = shl i32 %87, 16
  %or.i436 = or i32 %shl.i435, %85
  %add.i437 = shl i32 %87, 5
  %88 = add i32 %add.i437, 32
  %shl21.i = and i32 %88, -64
  %or22.i = or i32 %shl21.i, 1
  br label %for.body.i

for.cond1.preheader.i:                            ; preds = %tegra_vde_setup_frameid.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %83)
  %cmp216.i = icmp ult i32 %83, 17
  br i1 %cmp216.i, label %for.cond1.preheader.i.for.body3.i.preheader_crit_edge, label %for.cond1.preheader.i.tegra_setup_frameidx.exit_crit_edge

for.cond1.preheader.i.tegra_setup_frameidx.exit_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tegra_setup_frameidx.exit

for.cond1.preheader.i.for.body3.i.preheader_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body3.i.preheader

for.body.i:                                       ; preds = %tegra_vde_setup_frameid.exit.for.body.i_crit_edge, %for.body.i.preheader
  %idx.015.i = phi i32 [ %inc.i, %tegra_vde_setup_frameid.exit.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.video_frame, ptr %dpb_frames, i32 %idx.015.i
  %tobool.not.i = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not.i, label %for.body.i.tegra_vde_setup_frameid.exit_crit_edge, label %cond.true9.i

for.body.i.tegra_vde_setup_frameid.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tegra_vde_setup_frameid.exit

cond.true9.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %y_addr1.i = getelementptr %struct.video_frame, ptr %dpb_frames, i32 %idx.015.i, i32 4
  %89 = ptrtoint ptr %y_addr1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %y_addr1.i, align 4
  %phi.bo.i = lshr i32 %90, 8
  %cb_addr4.i = getelementptr %struct.video_frame, ptr %dpb_frames, i32 %idx.015.i, i32 5
  %91 = ptrtoint ptr %cb_addr4.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cb_addr4.i, align 4
  %phi.bo64.i = lshr i32 %92, 8
  %cr_addr10.i = getelementptr %struct.video_frame, ptr %dpb_frames, i32 %idx.015.i, i32 6
  %93 = ptrtoint ptr %cr_addr10.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %cr_addr10.i, align 4
  %phi.bo65.i = lshr i32 %94, 8
  br label %tegra_vde_setup_frameid.exit

tegra_vde_setup_frameid.exit:                     ; preds = %cond.true9.i, %for.body.i.tegra_vde_setup_frameid.exit_crit_edge
  %cond25.i = phi i32 [ 0, %for.body.i.tegra_vde_setup_frameid.exit_crit_edge ], [ %or22.i, %cond.true9.i ]
  %cond18.i = phi i32 [ 0, %for.body.i.tegra_vde_setup_frameid.exit_crit_edge ], [ %or.i436, %cond.true9.i ]
  %cond775.i = phi i32 [ 7134893, %for.body.i.tegra_vde_setup_frameid.exit_crit_edge ], [ %phi.bo64.i, %cond.true9.i ]
  %cond7174.i = phi i32 [ 7134893, %for.body.i.tegra_vde_setup_frameid.exit_crit_edge ], [ %phi.bo.i, %cond.true9.i ]
  %cond13.i = phi i32 [ 7134893, %for.body.i.tegra_vde_setup_frameid.exit_crit_edge ], [ %phi.bo65.i, %cond.true9.i ]
  %95 = ptrtoint ptr %frameid to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %frameid, align 4
  %mul.i = shl i32 %idx.015.i, 2
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %96, i32 noundef %mul.i, i32 noundef %cond7174.i) #14
  %97 = tail call i32 @llvm.bswap.i32(i32 %cond7174.i) #14
  %add.ptr.i.i438 = getelementptr i8, ptr %96, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i438, i32 %97) #14, !srcloc !399
  %98 = ptrtoint ptr %frameid to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %frameid, align 4
  %add32.i = add i32 %mul.i, 256
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %99, i32 noundef %add32.i, i32 noundef %cond775.i) #14
  %100 = tail call i32 @llvm.bswap.i32(i32 %cond775.i) #14
  %add.ptr.i66.i = getelementptr i8, ptr %99, i32 %add32.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66.i, i32 %100) #14, !srcloc !399
  %101 = ptrtoint ptr %frameid to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %frameid, align 4
  %add36.i = add i32 %mul.i, 384
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %102, i32 noundef %add36.i, i32 noundef %cond13.i) #14
  %103 = tail call i32 @llvm.bswap.i32(i32 %cond13.i) #14
  %add.ptr.i67.i = getelementptr i8, ptr %102, i32 %add36.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67.i, i32 %103) #14, !srcloc !399
  %104 = ptrtoint ptr %frameid to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %frameid, align 4
  %add39.i = add i32 %mul.i, 128
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %105, i32 noundef %add39.i, i32 noundef %cond18.i) #14
  %106 = tail call i32 @llvm.bswap.i32(i32 %cond18.i) #14
  %add.ptr.i68.i = getelementptr i8, ptr %105, i32 %add39.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68.i, i32 %106) #14, !srcloc !399
  %107 = ptrtoint ptr %frameid to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %frameid, align 4
  %add42.i = add i32 %mul.i, 640
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %108, i32 noundef %add42.i, i32 noundef %cond25.i) #14
  %109 = tail call i32 @llvm.bswap.i32(i32 %cond25.i) #14
  %add.ptr.i69.i = getelementptr i8, ptr %108, i32 %add42.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i, i32 %109) #14, !srcloc !399
  %inc.i = add nuw i32 %idx.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %83
  br i1 %exitcond.not.i, label %for.cond1.preheader.i, label %tegra_vde_setup_frameid.exit.for.body.i_crit_edge

tegra_vde_setup_frameid.exit.for.body.i_crit_edge: ; preds = %tegra_vde_setup_frameid.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.body3.i.preheader
  %idx.117.i = phi i32 [ %inc5.i, %for.body3.i.for.body3.i_crit_edge ], [ %83, %for.body3.i.preheader ]
  %110 = ptrtoint ptr %frameid to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %frameid, align 4
  %mul.i.i = shl nuw nsw i32 %idx.117.i, 2
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %111, i32 noundef %mul.i.i, i32 noundef 7134893) #14
  %add.ptr.i.i.i = getelementptr i8, ptr %111, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 -1377932288) #14, !srcloc !399
  %112 = ptrtoint ptr %frameid to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %frameid, align 4
  %add32.i.i = add nuw nsw i32 %mul.i.i, 256
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %113, i32 noundef %add32.i.i, i32 noundef 7134893) #14
  %add.ptr.i66.i.i = getelementptr i8, ptr %113, i32 %add32.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66.i.i, i32 -1377932288) #14, !srcloc !399
  %114 = ptrtoint ptr %frameid to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %frameid, align 4
  %add36.i.i = add nuw nsw i32 %mul.i.i, 384
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %115, i32 noundef %add36.i.i, i32 noundef 7134893) #14
  %add.ptr.i67.i.i = getelementptr i8, ptr %115, i32 %add36.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67.i.i, i32 -1377932288) #14, !srcloc !399
  %116 = ptrtoint ptr %frameid to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %frameid, align 4
  %add39.i.i = add nuw nsw i32 %mul.i.i, 128
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %117, i32 noundef %add39.i.i, i32 noundef 0) #14
  %add.ptr.i68.i.i = getelementptr i8, ptr %117, i32 %add39.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68.i.i, i32 0) #14, !srcloc !399
  %118 = ptrtoint ptr %frameid to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %frameid, align 4
  %add42.i.i = add nuw nsw i32 %mul.i.i, 640
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %119, i32 noundef %add42.i.i, i32 noundef 0) #14
  %add.ptr.i69.i.i = getelementptr i8, ptr %119, i32 %add42.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i.i, i32 0) #14, !srcloc !399
  %inc5.i = add i32 %idx.117.i, 1
  %exitcond18.not.i = icmp eq i32 %inc5.i, 17
  br i1 %exitcond18.not.i, label %for.body3.i.tegra_setup_frameidx.exit_crit_edge, label %for.body3.i.for.body3.i_crit_edge

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body3.i

for.body3.i.tegra_setup_frameidx.exit_crit_edge:  ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tegra_setup_frameidx.exit

tegra_setup_frameidx.exit:                        ; preds = %for.body3.i.tegra_setup_frameidx.exit_crit_edge, %for.cond1.preheader.i.tegra_setup_frameidx.exit_crit_edge
  %120 = ptrtoint ptr %dpb_frames_nb to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %dpb_frames_nb, align 8
  %sub = add i32 %121, -1
  %dpb_ref_frames_with_earlier_poc_nb = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx, i32 0, i32 4
  %122 = ptrtoint ptr %dpb_ref_frames_with_earlier_poc_nb to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %dpb_ref_frames_with_earlier_poc_nb, align 4
  %frame_num.i = getelementptr inbounds %struct.video_frame, ptr %dpb_frames, i32 0, i32 8
  %124 = ptrtoint ptr %frame_num.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %frame_num.i, align 4
  tail call fastcc void @trace_vde_ref_l0(i32 noundef %125) #14
  br label %for.body.i411

for.body.i411:                                    ; preds = %if.end.i.for.body.i411_crit_edge, %tegra_setup_frameidx.exit
  %i.0158.i = phi i32 [ 0, %tegra_setup_frameidx.exit ], [ %add.i, %if.end.i.for.body.i411_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0158.i, i32 %sub)
  %cmp1.i = icmp ult i32 %i.0158.i, %sub
  %add.i = add nuw nsw i32 %i.0158.i, 1
  br i1 %cmp1.i, label %if.then.i, label %for.body.i411.if.end.i_crit_edge

for.body.i411.if.end.i_crit_edge:                 ; preds = %for.body.i411
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i411
  call void @__sanitizer_cov_trace_pc() #16
  %aux_addr3.i = getelementptr %struct.video_frame, ptr %dpb_frames, i32 %add.i, i32 7
  %126 = ptrtoint ptr %aux_addr3.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %aux_addr3.i, align 4
  %shl.i = shl nuw nsw i32 %add.i, 26
  %flags.i = getelementptr %struct.video_frame, ptr %dpb_frames, i32 %add.i, i32 9
  %128 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %flags.i, align 4
  %and.i = shl i32 %129, 25
  %130 = and i32 %and.i, 33554432
  %131 = or i32 %130, %shl.i
  %or6.i = xor i32 %131, 50331648
  %frame_num7.i = getelementptr %struct.video_frame, ptr %dpb_frames, i32 %add.i, i32 8
  %132 = ptrtoint ptr %frame_num7.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %frame_num7.i, align 4
  %or8.i = or i32 %or6.i, %133
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i411.if.end.i_crit_edge
  %value.0.i = phi i32 [ %or8.i, %if.then.i ], [ 63, %for.body.i411.if.end.i_crit_edge ]
  %aux_addr.0.i = phi i32 [ %127, %if.then.i ], [ 1792978176, %for.body.i411.if.end.i_crit_edge ]
  %134 = ptrtoint ptr %iram to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %iram, align 4
  tail call fastcc void @trace_vde_setup_iram_entry(i32 noundef 0, i32 noundef %i.0158.i, i32 noundef %value.0.i, i32 noundef %aux_addr.0.i) #14
  %mul1.i.i = shl nuw nsw i32 %i.0158.i, 1
  %arrayidx.i.i = getelementptr i32, ptr %135, i32 %mul1.i.i
  %136 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %value.0.i, ptr %arrayidx.i.i, align 4
  %add5.i.i = or i32 %mul1.i.i, 1
  %arrayidx6.i.i = getelementptr i32, ptr %135, i32 %add5.i.i
  %137 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %aux_addr.0.i, ptr %arrayidx6.i.i, align 4
  %138 = ptrtoint ptr %iram to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %iram, align 4
  tail call fastcc void @trace_vde_setup_iram_entry(i32 noundef 1, i32 noundef %i.0158.i, i32 noundef %value.0.i, i32 noundef %aux_addr.0.i) #14
  %add.i.i = add nuw nsw i32 %mul1.i.i, 32
  %arrayidx.i131.i = getelementptr i32, ptr %139, i32 %add.i.i
  %140 = ptrtoint ptr %arrayidx.i131.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %value.0.i, ptr %arrayidx.i131.i, align 4
  %add5.i132.i = or i32 %add.i.i, 1
  %arrayidx6.i133.i = getelementptr i32, ptr %139, i32 %add5.i132.i
  %141 = ptrtoint ptr %arrayidx6.i133.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %aux_addr.0.i, ptr %arrayidx6.i133.i, align 4
  %142 = ptrtoint ptr %iram to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %iram, align 4
  tail call fastcc void @trace_vde_setup_iram_entry(i32 noundef 2, i32 noundef %i.0158.i, i32 noundef %value.0.i, i32 noundef %aux_addr.0.i) #14
  %add.i136.i = add nuw nsw i32 %mul1.i.i, 64
  %arrayidx.i137.i = getelementptr i32, ptr %143, i32 %add.i136.i
  %144 = ptrtoint ptr %arrayidx.i137.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %value.0.i, ptr %arrayidx.i137.i, align 4
  %add5.i138.i = or i32 %add.i136.i, 1
  %arrayidx6.i139.i = getelementptr i32, ptr %143, i32 %add5.i138.i
  %145 = ptrtoint ptr %arrayidx6.i139.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %aux_addr.0.i, ptr %arrayidx6.i139.i, align 4
  %146 = ptrtoint ptr %iram to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %iram, align 4
  tail call fastcc void @trace_vde_setup_iram_entry(i32 noundef 3, i32 noundef %i.0158.i, i32 noundef %value.0.i, i32 noundef %aux_addr.0.i) #14
  %add.i142.i = add nuw nsw i32 %mul1.i.i, 96
  %arrayidx.i143.i = getelementptr i32, ptr %147, i32 %add.i142.i
  %148 = ptrtoint ptr %arrayidx.i143.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %value.0.i, ptr %arrayidx.i143.i, align 4
  %add5.i144.i = or i32 %add.i142.i, 1
  %arrayidx6.i145.i = getelementptr i32, ptr %147, i32 %add5.i144.i
  %149 = ptrtoint ptr %arrayidx6.i145.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %aux_addr.0.i, ptr %arrayidx6.i145.i, align 4
  %exitcond.not.i412 = icmp eq i32 %add.i, 16
  br i1 %exitcond.not.i412, label %for.end.i, label %if.end.i.for.body.i411_crit_edge

if.end.i.for.body.i411_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i411

for.end.i:                                        ; preds = %if.end.i
  %flags10.i = getelementptr inbounds %struct.video_frame, ptr %dpb_frames, i32 0, i32 9
  %150 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %flags10.i, align 4
  %and11.i = and i32 %151, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp ne i32 %and11.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %123)
  %cmp15.not.i = icmp ugt i32 %sub, %123
  %or.cond.i = and i1 %cmp15.not.i, %tobool12.not.i
  br i1 %or.cond.i, label %for.body20.lr.ph.i, label %for.end.i.tegra_vde_setup_iram_tables.exit_crit_edge

for.end.i.tegra_vde_setup_iram_tables.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tegra_vde_setup_iram_tables.exit

for.body20.lr.ph.i:                               ; preds = %for.end.i
  %sub.i = sub i32 %sub, %123
  tail call fastcc void @trace_vde_ref_l1(i32 noundef %sub.i, i32 noundef %123) #14
  br label %for.body20.i

for.cond40.preheader.i:                           ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub)
  %cmp41162.i = icmp ult i32 %sub.i, %sub
  br i1 %cmp41162.i, label %for.cond40.preheader.i.for.body42.i_crit_edge, label %for.cond40.preheader.i.tegra_vde_setup_iram_tables.exit_crit_edge

for.cond40.preheader.i.tegra_vde_setup_iram_tables.exit_crit_edge: ; preds = %for.cond40.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tegra_vde_setup_iram_tables.exit

for.cond40.preheader.i.for.body42.i_crit_edge:    ; preds = %for.cond40.preheader.i
  br label %for.body42.i

for.body20.i:                                     ; preds = %for.body20.i.for.body20.i_crit_edge, %for.body20.lr.ph.i
  %k.0161.i = phi i32 [ %123, %for.body20.lr.ph.i ], [ %add21.i, %for.body20.i.for.body20.i_crit_edge ]
  %i.1160.i = phi i32 [ 0, %for.body20.lr.ph.i ], [ %inc37.i, %for.body20.i.for.body20.i_crit_edge ]
  %add21.i = add i32 %k.0161.i, 1
  %aux_addr23.i = getelementptr %struct.video_frame, ptr %dpb_frames, i32 %add21.i, i32 7
  %152 = ptrtoint ptr %aux_addr23.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %aux_addr23.i, align 4
  %shl25.i = shl i32 %add21.i, 26
  %flags26.i = getelementptr %struct.video_frame, ptr %dpb_frames, i32 %add21.i, i32 9
  %154 = ptrtoint ptr %flags26.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %flags26.i, align 4
  %and27.i = shl i32 %155, 25
  %156 = and i32 %and27.i, 33554432
  %157 = or i32 %156, %shl25.i
  %or33.i = xor i32 %157, 50331648
  %frame_num34.i = getelementptr %struct.video_frame, ptr %dpb_frames, i32 %add21.i, i32 8
  %158 = ptrtoint ptr %frame_num34.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %frame_num34.i, align 4
  %or35.i = or i32 %or33.i, %159
  %160 = ptrtoint ptr %iram to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %iram, align 4
  tail call fastcc void @trace_vde_setup_iram_entry(i32 noundef 2, i32 noundef %i.1160.i, i32 noundef %or35.i, i32 noundef %153) #14
  %mul1.i147.i = shl i32 %i.1160.i, 1
  %add.i148.i = add i32 %mul1.i147.i, 64
  %arrayidx.i149.i = getelementptr i32, ptr %161, i32 %add.i148.i
  %162 = ptrtoint ptr %arrayidx.i149.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %or35.i, ptr %arrayidx.i149.i, align 4
  %add5.i150.i = or i32 %add.i148.i, 1
  %arrayidx6.i151.i = getelementptr i32, ptr %161, i32 %add5.i150.i
  %163 = ptrtoint ptr %arrayidx6.i151.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %153, ptr %arrayidx6.i151.i, align 4
  %inc37.i = add nuw i32 %i.1160.i, 1
  %exitcond165.not.i = icmp eq i32 %inc37.i, %sub.i
  br i1 %exitcond165.not.i, label %for.cond40.preheader.i, label %for.body20.i.for.body20.i_crit_edge

for.body20.i.for.body20.i_crit_edge:              ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body20.i

for.body42.i:                                     ; preds = %for.body42.i.for.body42.i_crit_edge, %for.cond40.preheader.i.for.body42.i_crit_edge
  %k.1164.i = phi i32 [ %add43.i, %for.body42.i.for.body42.i_crit_edge ], [ 0, %for.cond40.preheader.i.for.body42.i_crit_edge ]
  %i.2163.i = phi i32 [ %inc59.i, %for.body42.i.for.body42.i_crit_edge ], [ %sub.i, %for.cond40.preheader.i.for.body42.i_crit_edge ]
  %add43.i = add i32 %k.1164.i, 1
  %aux_addr45.i = getelementptr %struct.video_frame, ptr %dpb_frames, i32 %add43.i, i32 7
  %164 = ptrtoint ptr %aux_addr45.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %aux_addr45.i, align 4
  %shl47.i = shl i32 %add43.i, 26
  %flags48.i = getelementptr %struct.video_frame, ptr %dpb_frames, i32 %add43.i, i32 9
  %166 = ptrtoint ptr %flags48.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %flags48.i, align 4
  %and49.i = shl i32 %167, 25
  %168 = and i32 %and49.i, 33554432
  %169 = or i32 %168, %shl47.i
  %or55.i = xor i32 %169, 50331648
  %frame_num56.i = getelementptr %struct.video_frame, ptr %dpb_frames, i32 %add43.i, i32 8
  %170 = ptrtoint ptr %frame_num56.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %frame_num56.i, align 4
  %or57.i = or i32 %or55.i, %171
  %172 = ptrtoint ptr %iram to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %iram, align 4
  tail call fastcc void @trace_vde_setup_iram_entry(i32 noundef 2, i32 noundef %i.2163.i, i32 noundef %or57.i, i32 noundef %165) #14
  %mul1.i153.i = shl i32 %i.2163.i, 1
  %add.i154.i = add i32 %mul1.i153.i, 64
  %arrayidx.i155.i = getelementptr i32, ptr %173, i32 %add.i154.i
  %174 = ptrtoint ptr %arrayidx.i155.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %or57.i, ptr %arrayidx.i155.i, align 4
  %add5.i156.i = or i32 %add.i154.i, 1
  %arrayidx6.i157.i = getelementptr i32, ptr %173, i32 %add5.i156.i
  %175 = ptrtoint ptr %arrayidx6.i157.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %165, ptr %arrayidx6.i157.i, align 4
  %inc59.i = add nuw i32 %i.2163.i, 1
  %exitcond166.not.i = icmp eq i32 %add43.i, %123
  br i1 %exitcond166.not.i, label %for.body42.i.tegra_vde_setup_iram_tables.exit_crit_edge, label %for.body42.i.for.body42.i_crit_edge

for.body42.i.for.body42.i_crit_edge:              ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body42.i

for.body42.i.tegra_vde_setup_iram_tables.exit_crit_edge: ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tegra_vde_setup_iram_tables.exit

tegra_vde_setup_iram_tables.exit:                 ; preds = %for.body42.i.tegra_vde_setup_iram_tables.exit_crit_edge, %for.cond40.preheader.i.tegra_vde_setup_iram_tables.exit_crit_edge, %for.end.i.tegra_vde_setup_iram_tables.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !412
  tail call void @arm_heavy_mb() #14
  %176 = ptrtoint ptr %bsev to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %bsev, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %177, i32 noundef 140, i32 noundef 0) #14
  %add.ptr.i413 = getelementptr i8, ptr %177, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i413, i32 0) #14, !srcloc !399
  %add = add i32 %bitstream_data_size, %bitstream_data_addr
  %178 = ptrtoint ptr %bsev to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %bsev, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %179, i32 noundef 84, i32 noundef %add) #14
  %180 = tail call i32 @llvm.bswap.i32(i32 %add) #14
  %add.ptr.i414 = getelementptr i8, ptr %179, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i414, i32 %180) #14, !srcloc !399
  %181 = ptrtoint ptr %pic_width_in_mbs to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %pic_width_in_mbs, align 8
  %shl = shl i32 %182, 11
  %183 = ptrtoint ptr %pic_height_in_mbs to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %pic_height_in_mbs, align 4
  %shl23 = shl i32 %184, 3
  %or = or i32 %shl23, %shl
  %185 = ptrtoint ptr %bsev to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %bsev, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %186, i32 noundef 136, i32 noundef %or) #14
  %187 = tail call i32 @llvm.bswap.i32(i32 %or) #14
  %add.ptr.i415 = getelementptr i8, ptr %186, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i415, i32 %187) #14, !srcloc !399
  %call = tail call fastcc i32 @tegra_vde_wait_bsev(ptr noundef %vde, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %tegra_vde_setup_iram_tables.exit.cleanup_crit_edge

tegra_vde_setup_iram_tables.exit.cleanup_crit_edge: ; preds = %tegra_vde_setup_iram_tables.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %tegra_vde_setup_iram_tables.exit
  %188 = ptrtoint ptr %bsev to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %bsev, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %189, i32 noundef 0, i32 noundef -2147482628) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 -66912128) #14, !srcloc !399
  %call.i = tail call fastcc i32 @tegra_vde_wait_bsev(ptr noundef %vde, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool26.not = icmp eq i32 %call.i, 0
  br i1 %tobool26.not, label %if.end28, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %iram_lists_addr = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 25
  %190 = ptrtoint ptr %iram_lists_addr to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %iram_lists_addr, align 4
  %add29 = add i32 %191, 512
  %shr = lshr i32 %add29, 2
  %and = and i32 %shr, 65535
  %or30 = or i32 %and, 22020096
  %192 = ptrtoint ptr %bsev to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %bsev, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %193, i32 noundef 0, i32 noundef %or30) #14
  %194 = tail call i32 @llvm.bswap.i32(i32 %or30) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 %194) #14, !srcloc !399
  %call.i417 = tail call fastcc i32 @tegra_vde_wait_bsev(ptr noundef %vde, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i417)
  %tobool32.not = icmp eq i32 %call.i417, 0
  br i1 %tobool32.not, label %if.end34, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  %195 = ptrtoint ptr %bsev to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %bsev, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %196, i32 noundef 0, i32 noundef -2079390388) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %196, i32 1275400068) #14, !srcloc !399
  %call.i419 = tail call fastcc i32 @tegra_vde_wait_bsev(ptr noundef %vde, i1 noundef zeroext false) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i419)
  %tobool36.not = icmp eq i32 %call.i419, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %call39 = tail call fastcc i32 @tegra_vde_push_to_bsev_icmdqueue(ptr noundef %vde, i32 noundef -2147483520, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  %197 = ptrtoint ptr %iram_lists_addr to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %iram_lists_addr, align 4
  %shr44 = lshr i32 %198, 2
  %and45 = and i32 %shr44, 65535
  %or46 = or i32 %and45, 238288896
  %call47 = tail call fastcc i32 @tegra_vde_push_to_bsev_icmdqueue(ptr noundef %vde, i32 noundef %or46, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end50:                                         ; preds = %if.end42
  %199 = ptrtoint ptr %pic_width_in_mbs to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %pic_width_in_mbs, align 8
  %shl52 = shl i32 %200, 11
  %201 = ptrtoint ptr %pic_height_in_mbs to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %pic_height_in_mbs, align 4
  %shl55 = shl i32 %202, 3
  %or53 = or i32 %shl52, %shl55
  %or56 = or i32 %or53, 8388613
  %203 = ptrtoint ptr %vde to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %vde, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %204, i32 noundef 16, i32 noundef %or56) #14
  %205 = tail call i32 @llvm.bswap.i32(i32 %or56) #14
  %add.ptr.i420 = getelementptr i8, ptr %204, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i420, i32 %205) #14, !srcloc !399
  %baseline_profile = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx, i32 0, i32 5
  %206 = ptrtoint ptr %baseline_profile to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %baseline_profile, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool58.not = icmp eq i32 %207, 0
  %shl59 = select i1 %tobool58.not, i32 131072, i32 0
  %level_idc = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx, i32 0, i32 6
  %208 = ptrtoint ptr %level_idc to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %level_idc, align 4
  %shl60 = shl i32 %209, 13
  %or61 = or i32 %shl59, %shl60
  %log2_max_pic_order_cnt_lsb = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx, i32 0, i32 7
  %210 = ptrtoint ptr %log2_max_pic_order_cnt_lsb to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %log2_max_pic_order_cnt_lsb, align 8
  %shl62 = shl i32 %211, 7
  %or63 = or i32 %or61, %shl62
  %pic_order_cnt_type = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx, i32 0, i32 9
  %212 = ptrtoint ptr %pic_order_cnt_type to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %pic_order_cnt_type, align 8
  %shl64 = shl i32 %213, 5
  %or65 = or i32 %or63, %shl64
  %log2_max_frame_num = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx, i32 0, i32 8
  %214 = ptrtoint ptr %log2_max_frame_num to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %log2_max_frame_num, align 4
  %or66 = or i32 %or65, %215
  %216 = ptrtoint ptr %vde to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %vde, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %217, i32 noundef 64, i32 noundef %or66) #14
  %218 = tail call i32 @llvm.bswap.i32(i32 %or66) #14
  %add.ptr.i421 = getelementptr i8, ptr %217, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i421, i32 %218) #14, !srcloc !399
  %pic_init_qp = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx, i32 0, i32 13
  %219 = ptrtoint ptr %pic_init_qp to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %pic_init_qp, align 8
  %shl68 = shl i32 %220, 25
  %deblocking_filter_control_present_flag = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx, i32 0, i32 14
  %221 = ptrtoint ptr %deblocking_filter_control_present_flag to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %deblocking_filter_control_present_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool69.not = icmp eq i32 %222, 0
  %shl74 = select i1 %tobool69.not, i32 0, i32 4
  %or75 = or i32 %shl74, %shl68
  %pic_order_present_flag = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx, i32 0, i32 17
  %223 = ptrtoint ptr %pic_order_present_flag to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %pic_order_present_flag, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool76 = icmp ne i32 %224, 0
  %lnot.ext80 = zext i1 %tobool76 to i32
  %or81 = or i32 %or75, %lnot.ext80
  %225 = ptrtoint ptr %vde to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %vde, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %226, i32 noundef 68, i32 noundef %or81) #14
  %227 = tail call i32 @llvm.bswap.i32(i32 %or81) #14
  %add.ptr.i422 = getelementptr i8, ptr %226, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i422, i32 %227) #14, !srcloc !399
  %chroma_qp_index_offset = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx, i32 0, i32 16
  %228 = ptrtoint ptr %chroma_qp_index_offset to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %chroma_qp_index_offset, align 4
  %num_ref_idx_l0_active_minus1 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx, i32 0, i32 18
  %230 = ptrtoint ptr %num_ref_idx_l0_active_minus1 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %num_ref_idx_l0_active_minus1, align 4
  %shl83 = shl i32 %231, 5
  %or84 = or i32 %shl83, %229
  %num_ref_idx_l1_active_minus1 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx, i32 0, i32 19
  %232 = ptrtoint ptr %num_ref_idx_l1_active_minus1 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %num_ref_idx_l1_active_minus1, align 8
  %shl85 = shl i32 %233, 10
  %or86 = or i32 %or84, %shl85
  %constrained_intra_pred_flag = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx, i32 0, i32 15
  %234 = ptrtoint ptr %constrained_intra_pred_flag to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %constrained_intra_pred_flag, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %tobool87.not = icmp eq i32 %235, 0
  %shl92 = select i1 %tobool87.not, i32 0, i32 32768
  %or93 = or i32 %or86, %shl92
  %236 = ptrtoint ptr %vde to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %vde, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %237, i32 noundef 72, i32 noundef %or93) #14
  %238 = tail call i32 @llvm.bswap.i32(i32 %or93) #14
  %add.ptr.i423 = getelementptr i8, ptr %237, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i423, i32 %238) #14, !srcloc !399
  %239 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %flags10.i, align 4
  %and95 = shl i32 %240, 24
  %shl101 = and i32 %and95, 16777216
  %or102 = or i32 %shl101, 201326592
  %241 = ptrtoint ptr %vde to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %vde, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %242, i32 noundef 76, i32 noundef %or102) #14
  %243 = lshr exact i32 %or102, 24
  %add.ptr.i424 = getelementptr i8, ptr %242, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i424, i32 %243) #14, !srcloc !399
  %and104 = and i32 %bitstream_data_size, 1015808
  %or105 = or i32 %and104, 58720256
  %244 = ptrtoint ptr %vde to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %vde, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %245, i32 noundef 104, i32 noundef %or105) #14
  %246 = tail call i32 @llvm.bswap.i32(i32 %or105) #14
  %add.ptr.i425 = getelementptr i8, ptr %245, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i425, i32 %246) #14, !srcloc !399
  %247 = ptrtoint ptr %vde to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %vde, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %248, i32 noundef 108, i32 noundef %bitstream_data_addr) #14
  %249 = tail call i32 @llvm.bswap.i32(i32 %bitstream_data_addr) #14
  %add.ptr.i426 = getelementptr i8, ptr %248, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i426, i32 %249) #14, !srcloc !399
  %soc = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 23
  %250 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %soc, align 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %251, align 1, !range !413
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %253)
  %tobool108.not = icmp eq i8 %253, 0
  br i1 %tobool108.not, label %if.end50.if.end111_crit_edge, label %if.then109

if.end50.if.end111_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end111

if.then109:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  %secure_bo = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 24
  %254 = ptrtoint ptr %secure_bo to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %secure_bo, align 4
  %dma_addr = getelementptr inbounds %struct.tegra_vde_bo, ptr %255, i32 0, i32 6
  %256 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %dma_addr, align 4
  %258 = ptrtoint ptr %vde to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %vde, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %259, i32 noundef 124, i32 noundef %257) #14
  %260 = tail call i32 @llvm.bswap.i32(i32 %257) #14
  %add.ptr.i427 = getelementptr i8, ptr %259, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i427, i32 %260) #14, !srcloc !399
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %if.end50.if.end111_crit_edge
  %261 = ptrtoint ptr %pic_width_in_mbs to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %pic_width_in_mbs, align 8
  %shl113 = shl i32 %262, 11
  %263 = ptrtoint ptr %pic_height_in_mbs to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %pic_height_in_mbs, align 4
  %shl116 = shl i32 %264, 3
  %or114 = or i32 %shl113, %shl116
  %or117 = or i32 %or114, 268435461
  %265 = ptrtoint ptr %mbe to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %mbe, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %266, i32 noundef 128, i32 noundef %or117) #14
  %267 = tail call i32 @llvm.bswap.i32(i32 %or117) #14
  %add.ptr.i428 = getelementptr i8, ptr %266, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i428, i32 %267) #14, !srcloc !399
  %268 = ptrtoint ptr %level_idc to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %level_idc, align 4
  %shl120 = shl i32 %269, 4
  %270 = ptrtoint ptr %baseline_profile to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %baseline_profile, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %271)
  %tobool123.not = icmp eq i32 %271, 0
  %shl126 = select i1 %tobool123.not, i32 2, i32 0
  %or121 = or i32 %shl126, %shl120
  %direct_8x8_inference_flag = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, ptr %ctx, i32 0, i32 10
  %272 = ptrtoint ptr %direct_8x8_inference_flag to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %direct_8x8_inference_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %tobool128 = icmp ne i32 %273, 0
  %lnot.ext132 = zext i1 %tobool128 to i32
  %or127 = or i32 %or121, %lnot.ext132
  %or133 = or i32 %or127, 645922816
  %274 = ptrtoint ptr %mbe to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %mbe, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %275, i32 noundef 128, i32 noundef %or133) #14
  %276 = tail call i32 @llvm.bswap.i32(i32 %or133) #14
  %add.ptr.i429 = getelementptr i8, ptr %275, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i429, i32 %276) #14, !srcloc !399
  %277 = ptrtoint ptr %mbe to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %mbe, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %278, i32 noundef 128, i32 noundef -201326591) #14
  %add.ptr.i430 = getelementptr i8, ptr %278, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i430, i32 16777460) #14, !srcloc !399
  %279 = ptrtoint ptr %mbe to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %mbe, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %280, i32 noundef 128, i32 noundef 536870912) #14
  %add.ptr.i431 = getelementptr i8, ptr %280, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i431, i32 32) #14, !srcloc !399
  %281 = ptrtoint ptr %mbe to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %mbe, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %282, i32 noundef 128, i32 noundef -201326335) #14
  %add.ptr.i432 = getelementptr i8, ptr %282, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i432, i32 16842996) #14, !srcloc !399
  %283 = ptrtoint ptr %chroma_qp_index_offset to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %chroma_qp_index_offset, align 4
  %shl139 = shl i32 %284, 8
  %or140 = or i32 %shl139, 536870912
  %285 = ptrtoint ptr %mbe to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %mbe, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %286, i32 noundef 128, i32 noundef %or140) #14
  %287 = tail call i32 @llvm.bswap.i32(i32 %or140) #14
  %add.ptr.i433 = getelementptr i8, ptr %286, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i433, i32 %287) #14, !srcloc !399
  %288 = ptrtoint ptr %dpb_frames_nb to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %dpb_frames_nb, align 8
  %sub143 = add i32 %289, -1
  %290 = ptrtoint ptr %pic_order_cnt_type to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %pic_order_cnt_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %291)
  %cmp = icmp eq i32 %291, 0
  %call145 = tail call fastcc i32 @tegra_vde_setup_mbe_frame_idx(ptr noundef %vde, i32 noundef %sub143, i1 noundef zeroext %cmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end151, label %do.end150

do.end150:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.146, i32 noundef %call145) #19
  br label %cleanup

if.end151:                                        ; preds = %if.end111
  tail call fastcc void @tegra_vde_mbe_set_0xa_reg(ptr noundef %vde, i32 noundef 0, i32 noundef 2556)
  tail call fastcc void @tegra_vde_mbe_set_0xa_reg(ptr noundef %vde, i32 noundef 2, i32 noundef 1641983232)
  tail call fastcc void @tegra_vde_mbe_set_0xa_reg(ptr noundef %vde, i32 noundef 4, i32 noundef 1658760448)
  tail call fastcc void @tegra_vde_mbe_set_0xa_reg(ptr noundef %vde, i32 noundef 6, i32 noundef 1675537664)
  %aux_addr = getelementptr inbounds %struct.video_frame, ptr %dpb_frames, i32 0, i32 7
  %292 = ptrtoint ptr %aux_addr to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %aux_addr, align 4
  tail call fastcc void @tegra_vde_mbe_set_0xa_reg(ptr noundef %vde, i32 noundef 8, i32 noundef %293)
  %294 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %flags10.i, align 4
  %and155 = shl i32 %295, 2
  %shl161 = and i32 %and155, 4
  %296 = ptrtoint ptr %baseline_profile to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %baseline_profile, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %297)
  %tobool164.not = icmp eq i32 %297, 0
  %and168.lobit = and i32 %295, 2
  %or175 = select i1 %tobool164.not, i32 %and168.lobit, i32 0
  %or162 = or i32 %shl161, %or175
  %value.0 = or i32 %or162, -67108864
  %298 = ptrtoint ptr %mbe to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %mbe, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %299, i32 noundef 128, i32 noundef %value.0) #14
  %300 = tail call i32 @llvm.bswap.i32(i32 %value.0) #14
  %add.ptr.i434 = getelementptr i8, ptr %299, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i434, i32 %300) #14, !srcloc !399
  %call178 = tail call fastcc i32 @tegra_vde_wait_mbe(ptr noundef %vde)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %if.end151.cleanup_crit_edge, label %do.end183

if.end151.cleanup_crit_edge:                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end183:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.149, i32 noundef %call178) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end183, %if.end151.cleanup_crit_edge, %do.end150, %if.end42.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end.cleanup_crit_edge, %tegra_vde_setup_iram_tables.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call145, %do.end150 ], [ %call178, %do.end183 ], [ %call, %tegra_vde_setup_iram_tables.exit.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i417, %if.end28.cleanup_crit_edge ], [ %call.i419, %if.end34.cleanup_crit_edge ], [ %call39, %if.end38.cleanup_crit_edge ], [ %call47, %if.end42.cleanup_crit_edge ], [ 0, %if.end151.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_vde_decode_frame(ptr noundef %vde, i32 noundef %macroblocks_nb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %decode_completion = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 16
  %0 = ptrtoint ptr %decode_completion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %decode_completion, align 4
  %bsev = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 1
  %1 = ptrtoint ptr %bsev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bsev, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %2, i32 noundef 140, i32 noundef 1) #14
  %add.ptr.i = getelementptr i8, ptr %2, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #14, !srcloc !399
  %sub = add i32 %macroblocks_nb, -1
  %or = or i32 %sub, 536870912
  %3 = ptrtoint ptr %vde to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vde, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %4, i32 noundef 0, i32 noundef %or) #14
  %5 = tail call i32 @llvm.bswap.i32(i32 %or) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %5) #14, !srcloc !399
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_vde_dmabuf_cache_unmap(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_vde_dmabuf_cache_map(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_buf_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_vde_wait_bsev(ptr nocapture noundef readonly %vde, i1 noundef zeroext %wait_dma) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 12, i32 4
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %call = tail call i64 @ktime_get() #14
  %add.i = add i64 %call, 100000
  tail call void @__might_sleep(ptr noundef nonnull @.str.41, i32 noundef 239) #14
  %bsev = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 1
  %2 = ptrtoint ptr %bsev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bsev, align 4
  %add.ptr199 = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr199) #14, !srcloc !398
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %and200 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200)
  %tobool.not201 = icmp eq i32 %and200, 0
  br i1 %tobool.not201, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.lhs.true:                                    ; preds = %if.then23.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call12 = tail call i64 @ktime_get() #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call12, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call12, %add.i
  br i1 %cmp3.i, label %if.then15, label %if.then23

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %bsev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bsev, align 4
  %add.ptr18 = getelementptr i8, ptr %7, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #14, !srcloc !398
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  br label %for.end

if.then23:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #14
  %10 = ptrtoint ptr %bsev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bsev, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !398
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %and = and i32 %13, 4
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then23.for.end_crit_edge, label %if.then23.land.lhs.true_crit_edge

if.then23.land.lhs.true_crit_edge:                ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

if.then23.for.end_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.then23.for.end_crit_edge, %if.then15, %entry.for.end_crit_edge
  %value.0 = phi i32 [ %9, %if.then15 ], [ %5, %entry.for.end_crit_edge ], [ %13, %if.then23.for.end_crit_edge ]
  %and26 = and i32 %value.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end33, label %for.end.cleanup.sink.split_crit_edge

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end33:                                         ; preds = %for.end
  %call37 = tail call i64 @ktime_get() #14
  %add.i180 = add i64 %call37, 100000
  tail call void @__might_sleep(ptr noundef nonnull @.str.41, i32 noundef 246) #14
  %14 = ptrtoint ptr %bsev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bsev, align 4
  %add.ptr54202 = getelementptr i8, ptr %15, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54202) #14, !srcloc !398
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %and57203 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57203)
  %tobool58.not204 = icmp eq i32 %and57203, 0
  br i1 %tobool58.not204, label %if.end33.land.lhs.true62_crit_edge, label %if.end33.for.end78_crit_edge

if.end33.for.end78_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end78

if.end33.land.lhs.true62_crit_edge:               ; preds = %if.end33
  br label %land.lhs.true62

land.lhs.true62:                                  ; preds = %if.then74.land.lhs.true62_crit_edge, %if.end33.land.lhs.true62_crit_edge
  %call63 = tail call i64 @ktime_get() #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call63, i64 %add.i180)
  %cmp3.i182 = icmp sgt i64 %call63, %add.i180
  br i1 %cmp3.i182, label %if.then66, label %if.then74

if.then66:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %bsev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bsev, align 4
  %add.ptr69 = getelementptr i8, ptr %19, i32 24
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #14, !srcloc !398
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  br label %for.end78

if.then74:                                        ; preds = %land.lhs.true62
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #14
  %22 = ptrtoint ptr %bsev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bsev, align 4
  %add.ptr54 = getelementptr i8, ptr %23, i32 24
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #14, !srcloc !398
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %and57 = and i32 %25, 8
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.then74.land.lhs.true62_crit_edge, label %if.then74.for.end78_crit_edge

if.then74.for.end78_crit_edge:                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end78

if.then74.land.lhs.true62_crit_edge:              ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true62

for.end78:                                        ; preds = %if.then74.for.end78_crit_edge, %if.then66, %if.end33.for.end78_crit_edge
  %value.1 = phi i32 [ %21, %if.then66 ], [ %17, %if.end33.for.end78_crit_edge ], [ %25, %if.then74.for.end78_crit_edge ]
  %and80 = and i32 %value.1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %for.end78.cleanup.sink.split_crit_edge, label %if.end88

for.end78.cleanup.sink.split_crit_edge:           ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end88:                                         ; preds = %for.end78
  br i1 %wait_dma, label %if.end91, label %if.end88.cleanup_crit_edge

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end91:                                         ; preds = %if.end88
  %call95 = tail call i64 @ktime_get() #14
  %add.i185 = add i64 %call95, 100000
  tail call void @__might_sleep(ptr noundef nonnull @.str.41, i32 noundef 256) #14
  %26 = ptrtoint ptr %bsev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bsev, align 4
  %add.ptr112206 = getelementptr i8, ptr %27, i32 24
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr112206) #14, !srcloc !398
  %29 = and i32 %28, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool116.not208 = icmp eq i32 %29, 0
  br i1 %tobool116.not208, label %if.end91.cleanup_crit_edge, label %if.end91.land.lhs.true120_crit_edge

if.end91.land.lhs.true120_crit_edge:              ; preds = %if.end91
  br label %land.lhs.true120

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true120:                                 ; preds = %if.then132.land.lhs.true120_crit_edge, %if.end91.land.lhs.true120_crit_edge
  %call121 = tail call i64 @ktime_get() #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call121, i64 %add.i185)
  %cmp3.i187 = icmp sgt i64 %call121, %add.i185
  br i1 %cmp3.i187, label %for.end136, label %if.then132

if.then132:                                       ; preds = %land.lhs.true120
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #14
  %30 = ptrtoint ptr %bsev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bsev, align 4
  %add.ptr112 = getelementptr i8, ptr %31, i32 24
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr112) #14, !srcloc !398
  %33 = and i32 %32, 32768
  %tobool116.not = icmp eq i32 %33, 0
  br i1 %tobool116.not, label %if.then132.cleanup_crit_edge, label %if.then132.land.lhs.true120_crit_edge

if.then132.land.lhs.true120_crit_edge:            ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true120

if.then132.cleanup_crit_edge:                     ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.end136:                                       ; preds = %land.lhs.true120
  %34 = ptrtoint ptr %bsev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bsev, align 4
  %add.ptr127 = getelementptr i8, ptr %35, i32 24
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr127) #14, !srcloc !398
  %37 = and i32 %36, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool139.not = icmp eq i32 %37, 0
  br i1 %tobool139.not, label %for.end136.cleanup_crit_edge, label %for.end136.cleanup.sink.split_crit_edge

for.end136.cleanup.sink.split_crit_edge:          ; preds = %for.end136
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

for.end136.cleanup_crit_edge:                     ; preds = %for.end136
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.sink.split:                               ; preds = %for.end136.cleanup.sink.split_crit_edge, %for.end78.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge
  %.str.157.sink = phi ptr [ @.str.151, %for.end.cleanup.sink.split_crit_edge ], [ @.str.154, %for.end78.cleanup.sink.split_crit_edge ], [ @.str.157, %for.end136.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull %.str.157.sink) #19
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end136.cleanup_crit_edge, %if.then132.cleanup_crit_edge, %if.end91.cleanup_crit_edge, %if.end88.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end88.cleanup_crit_edge ], [ 0, %for.end136.cleanup_crit_edge ], [ 0, %if.end91.cleanup_crit_edge ], [ -110, %cleanup.sink.split ], [ 0, %if.then132.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_vde_push_to_bsev_icmdqueue(ptr noundef %vde, i32 noundef %value, i1 noundef zeroext %wait_dma) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bsev = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 1
  %0 = ptrtoint ptr %bsev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bsev, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %1, i32 noundef 0, i32 noundef %value) #14
  %2 = tail call i32 @llvm.bswap.i32(i32 %value) #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %2) #14, !srcloc !399
  %call = tail call fastcc i32 @tegra_vde_wait_bsev(ptr noundef %vde, i1 noundef zeroext %wait_dma)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_vde_setup_mbe_frame_idx(ptr noundef %vde, i32 noundef %refs_nb, i1 noundef zeroext %setup_refs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mbe = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 2
  %0 = ptrtoint ptr %mbe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbe, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %1, i32 noundef 128, i32 noundef -805306368) #14
  %add.ptr.i = getelementptr i8, ptr %1, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 208) #14, !srcloc !399
  %2 = ptrtoint ptr %mbe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mbe, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %3, i32 noundef 128, i32 noundef -803209216) #14
  %add.ptr.i55 = getelementptr i8, ptr %3, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 8400) #14, !srcloc !399
  %call.i = tail call i64 @ktime_get() #14
  %add.i.i = add i64 %call.i, 100000
  tail call void @__might_sleep(ptr noundef nonnull @.str.41, i32 noundef 85) #14
  %4 = ptrtoint ptr %mbe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mbe, align 4
  %add.ptr36.i = getelementptr i8, ptr %5, i32 140
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i) #14, !srcloc !398
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %7)
  %cmp1037.i = icmp ugt i32 %7, 15
  br i1 %cmp1037.i, label %entry.tegra_vde_wait_mbe.exit_crit_edge, label %entry.land.lhs.true.i_crit_edge

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  br label %land.lhs.true.i

entry.tegra_vde_wait_mbe.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %tegra_vde_wait_mbe.exit

land.lhs.true.i:                                  ; preds = %if.then24.i.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge
  %call13.i = tail call i64 @ktime_get() #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then16.i, label %if.then24.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %mbe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mbe, align 4
  %add.ptr19.i = getelementptr i8, ptr %9, i32 140
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #14, !srcloc !398
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #14
  br label %tegra_vde_wait_mbe.exit

if.then24.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #14
  %12 = ptrtoint ptr %mbe to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mbe, align 4
  %add.ptr.i56 = getelementptr i8, ptr %13, i32 140
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56) #14, !srcloc !398
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #14
  %cmp10.i = icmp ugt i32 %15, 15
  br i1 %cmp10.i, label %if.then24.i.tegra_vde_wait_mbe.exit_crit_edge, label %if.then24.i.land.lhs.true.i_crit_edge

if.then24.i.land.lhs.true.i_crit_edge:            ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i

if.then24.i.tegra_vde_wait_mbe.exit_crit_edge:    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tegra_vde_wait_mbe.exit

tegra_vde_wait_mbe.exit:                          ; preds = %if.then24.i.tegra_vde_wait_mbe.exit_crit_edge, %if.then16.i, %entry.tegra_vde_wait_mbe.exit_crit_edge
  %tmp.0.i = phi i32 [ %11, %if.then16.i ], [ %7, %entry.tegra_vde_wait_mbe.exit_crit_edge ], [ %15, %if.then24.i.tegra_vde_wait_mbe.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %tmp.0.i)
  %cmp27.i = icmp ugt i32 %tmp.0.i, 15
  %16 = and i1 %cmp27.i, %setup_refs
  %call.mux = select i1 %cmp27.i, i32 0, i32 -110
  br i1 %16, label %for.cond.preheader, label %tegra_vde_wait_mbe.exit.cleanup_crit_edge

tegra_vde_wait_mbe.exit.cleanup_crit_edge:        ; preds = %tegra_vde_wait_mbe.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %tegra_vde_wait_mbe.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %refs_nb)
  %cmp80.not = icmp eq i32 %refs_nb, 0
  br i1 %cmp80.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub = add i32 %refs_nb, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %idx.083 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %frame_idx.082 = phi i32 [ 1, %for.body.lr.ph ], [ %inc24, %for.inc.for.body_crit_edge ]
  %frame_idx_enb_mask.081 = phi i32 [ 0, %for.body.lr.ph ], [ %frame_idx_enb_mask.1, %for.inc.for.body_crit_edge ]
  %shl = shl i32 %frame_idx.082, 23
  %or = or i32 %shl, -805306368
  %17 = ptrtoint ptr %mbe to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mbe, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %18, i32 noundef 128, i32 noundef %or) #14
  %19 = tail call i32 @llvm.bswap.i32(i32 %or) #14
  %add.ptr.i57 = getelementptr i8, ptr %18, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %19) #14, !srcloc !399
  %or7 = or i32 %shl, -803209216
  %20 = ptrtoint ptr %mbe to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mbe, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %21, i32 noundef 128, i32 noundef %or7) #14
  %22 = tail call i32 @llvm.bswap.i32(i32 %or7) #14
  %add.ptr.i58 = getelementptr i8, ptr %21, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %22) #14, !srcloc !399
  %rem = and i32 %idx.083, 3
  %mul = mul nuw nsw i32 %rem, 6
  %shl9 = shl i32 %frame_idx.082, %mul
  %or10 = or i32 %shl9, %frame_idx_enb_mask.081
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rem)
  %cmp12 = icmp eq i32 %rem, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.083, i32 %sub)
  %cmp13 = icmp eq i32 %idx.083, %sub
  %or.cond = or i1 %cmp13, %cmp12
  br i1 %or.cond, label %if.then14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then14:                                        ; preds = %for.body
  %23 = shl i32 %idx.083, 22
  %shl15 = and i32 %23, 1056964608
  %or16 = or i32 %shl15, %or10
  %or17 = or i32 %or16, -1073741824
  %24 = ptrtoint ptr %mbe to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mbe, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %25, i32 noundef 128, i32 noundef %or17) #14
  %26 = tail call i32 @llvm.bswap.i32(i32 %or17) #14
  %add.ptr.i59 = getelementptr i8, ptr %25, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %26) #14, !srcloc !399
  %call.i60 = tail call i64 @ktime_get() #14
  %add.i.i61 = add i64 %call.i60, 100000
  tail call void @__might_sleep(ptr noundef nonnull @.str.41, i32 noundef 85) #14
  %27 = ptrtoint ptr %mbe to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mbe, align 4
  %add.ptr36.i63 = getelementptr i8, ptr %28, i32 140
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i63) #14, !srcloc !398
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %30)
  %cmp1037.i64 = icmp ugt i32 %30, 15
  br i1 %cmp1037.i64, label %if.then14.for.inc_crit_edge, label %if.then14.land.lhs.true.i67_crit_edge

if.then14.land.lhs.true.i67_crit_edge:            ; preds = %if.then14
  br label %land.lhs.true.i67

if.then14.for.inc_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true.i67:                                ; preds = %if.then24.i72.land.lhs.true.i67_crit_edge, %if.then14.land.lhs.true.i67_crit_edge
  %call13.i65 = tail call i64 @ktime_get() #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i65, i64 %add.i.i61)
  %cmp3.i.i66 = icmp sgt i64 %call13.i65, %add.i.i61
  br i1 %cmp3.i.i66, label %tegra_vde_wait_mbe.exit76, label %if.then24.i72

if.then24.i72:                                    ; preds = %land.lhs.true.i67
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #14
  %31 = ptrtoint ptr %mbe to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mbe, align 4
  %add.ptr.i70 = getelementptr i8, ptr %32, i32 140
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70) #14, !srcloc !398
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #14
  %cmp10.i71 = icmp ugt i32 %34, 15
  br i1 %cmp10.i71, label %if.then24.i72.for.inc_crit_edge, label %if.then24.i72.land.lhs.true.i67_crit_edge

if.then24.i72.land.lhs.true.i67_crit_edge:        ; preds = %if.then24.i72
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true.i67

if.then24.i72.for.inc_crit_edge:                  ; preds = %if.then24.i72
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

tegra_vde_wait_mbe.exit76:                        ; preds = %land.lhs.true.i67
  %35 = ptrtoint ptr %mbe to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mbe, align 4
  %add.ptr19.i68 = getelementptr i8, ptr %36, i32 140
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i68) #14, !srcloc !398
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %38)
  %cmp27.i74 = icmp ugt i32 %38, 15
  br i1 %cmp27.i74, label %tegra_vde_wait_mbe.exit76.for.inc_crit_edge, label %tegra_vde_wait_mbe.exit76.cleanup_crit_edge

tegra_vde_wait_mbe.exit76.cleanup_crit_edge:      ; preds = %tegra_vde_wait_mbe.exit76
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

tegra_vde_wait_mbe.exit76.for.inc_crit_edge:      ; preds = %tegra_vde_wait_mbe.exit76
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %tegra_vde_wait_mbe.exit76.for.inc_crit_edge, %if.then24.i72.for.inc_crit_edge, %if.then14.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %frame_idx_enb_mask.1 = phi i32 [ %or10, %for.body.for.inc_crit_edge ], [ 0, %tegra_vde_wait_mbe.exit76.for.inc_crit_edge ], [ 0, %if.then14.for.inc_crit_edge ], [ 0, %if.then24.i72.for.inc_crit_edge ]
  %inc = add nuw i32 %idx.083, 1
  %inc24 = add i32 %frame_idx.082, 1
  %exitcond.not = icmp eq i32 %inc, %refs_nb
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %tegra_vde_wait_mbe.exit76.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %tegra_vde_wait_mbe.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.mux, %tegra_vde_wait_mbe.exit.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ -110, %tegra_vde_wait_mbe.exit76.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_vde_mbe_set_0xa_reg(ptr noundef %vde, i32 noundef %reg, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %reg, 24
  %and = and i32 %val, 65535
  %or = or i32 %shl, %and
  %or1 = or i32 %or, -1610612736
  %mbe = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 2
  %0 = ptrtoint ptr %mbe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbe, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %1, i32 noundef 128, i32 noundef %or1) #14
  %2 = tail call i32 @llvm.bswap.i32(i32 %or1) #14
  %add.ptr.i = getelementptr i8, ptr %1, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #14, !srcloc !399
  %shl2 = add i32 %shl, 16777216
  %shr = lshr i32 %val, 16
  %or3 = or i32 %shl2, %shr
  %or4 = or i32 %or3, -1610612736
  %3 = ptrtoint ptr %mbe to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mbe, align 4
  tail call fastcc void @trace_vde_writel(ptr noundef %vde, ptr noundef %4, i32 noundef 128, i32 noundef %or4) #14
  %5 = tail call i32 @llvm.bswap.i32(i32 %or4) #14
  %add.ptr.i11 = getelementptr i8, ptr %4, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %5) #14, !srcloc !399
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_vde_wait_mbe(ptr nocapture noundef readonly %vde) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #14
  %add.i = add i64 %call, 100000
  tail call void @__might_sleep(ptr noundef nonnull @.str.41, i32 noundef 85) #14
  %mbe = getelementptr inbounds %struct.tegra_vde, ptr %vde, i32 0, i32 2
  %0 = ptrtoint ptr %mbe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbe, align 4
  %add.ptr36 = getelementptr i8, ptr %1, i32 140
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #14, !srcloc !398
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %3)
  %cmp1037 = icmp ugt i32 %3, 15
  br i1 %cmp1037, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.lhs.true:                                    ; preds = %if.then24.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %if.then16, label %if.then24

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %mbe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mbe, align 4
  %add.ptr19 = getelementptr i8, ptr %5, i32 140
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #14, !srcloc !398
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  br label %for.end

if.then24:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #14
  %8 = ptrtoint ptr %mbe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mbe, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 140
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #14, !srcloc !398
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %cmp10 = icmp ugt i32 %11, 15
  br i1 %cmp10, label %if.then24.for.end_crit_edge, label %if.then24.land.lhs.true_crit_edge

if.then24.land.lhs.true_crit_edge:                ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true

if.then24.for.end_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.then24.for.end_crit_edge, %if.then16, %entry.for.end_crit_edge
  %tmp.0 = phi i32 [ %7, %if.then16 ], [ %3, %entry.for.end_crit_edge ], [ %11, %if.then24.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %tmp.0)
  %cmp27 = icmp ugt i32 %tmp.0, 15
  %cond = select i1 %cmp27, i32 0, i32 -110
  ret i32 %cond
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_vde_ref_l0(i32 noundef %frame_num) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_vde_ref_l0, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_vde_ref_l0, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !401

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !392

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.80, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !414
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_vde_ref_l0, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, i32 noundef %frame_num) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !415
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !415
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !392

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.80, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !404
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_vde_ref_l0, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_vde_ref_l0.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_vde_ref_l0.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.78, i32 noundef 71, ptr noundef nonnull @.str.79) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !405
  %38 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_vde_ref_l1(i32 noundef %with_later_poc_nb, i32 noundef %with_earlier_poc_nb) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_vde_ref_l1, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_vde_ref_l1, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !401

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !392

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.80, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !416
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_vde_ref_l1, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, i32 noundef %with_later_poc_nb, i32 noundef %with_earlier_poc_nb) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !417
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !417
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !392

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.80, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !404
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_vde_ref_l1, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_vde_ref_l1.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_vde_ref_l1.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.78, i32 noundef 87, ptr noundef nonnull @.str.79) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !405
  %38 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_vde_setup_iram_entry(i32 noundef %table, i32 noundef %row, i32 noundef %value, i32 noundef %aux_addr) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_vde_setup_iram_entry, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_vde_setup_iram_entry, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !401

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !392

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.80, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !418
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_vde_setup_iram_entry, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, i32 noundef %table, i32 noundef %row, i32 noundef %value, i32 noundef %aux_addr) #14
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !419
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !419
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !392

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.80, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !404
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_vde_setup_iram_entry, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_vde_setup_iram_entry.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_vde_setup_iram_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.78, i32 noundef 59, ptr noundef nonnull @.str.79) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !405
  %38 = tail call i32 @llvm.read_register.i32(metadata !382) #14
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_vde_dmabuf_cache_unmap_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_sgtable_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_vde_iommu_map(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_vde_iommu_unmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_vde_dmabuf_cache_unmap_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_vde_pm_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.tegra_vde, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #14
  %call1 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #14
  %2 = tail call i32 @llvm.smin.i32(i32 %call1, i32 0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_vde_pm_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %lock = getelementptr inbounds %struct.tegra_vde, ptr %1, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %lock) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_vde_runtime_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pm_domain = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 13
  %2 = ptrtoint ptr %pm_domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm_domain, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @tegra_powergate_power_off(i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %do.end

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.170, i32 noundef %call1) #19
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %clk = getelementptr inbounds %struct.tegra_vde, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #14
  tail call void @clk_unprepare(ptr noundef %5) #14
  %rst = getelementptr inbounds %struct.tegra_vde, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rst, align 4
  tail call void @reset_control_release(ptr noundef %7) #14
  %rst_mc = getelementptr inbounds %struct.tegra_vde, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %rst_mc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rst_mc, align 4
  tail call void @reset_control_release(ptr noundef %9) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_vde_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rst_mc = getelementptr inbounds %struct.tegra_vde, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %rst_mc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst_mc, align 4
  %call1 = tail call i32 @reset_control_acquire(ptr noundef %3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.172, i32 noundef %call1) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %rst = getelementptr inbounds %struct.tegra_vde, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rst, align 4
  %call2 = tail call i32 @reset_control_acquire(ptr noundef %5) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end8, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.175, i32 noundef %call2) #19
  br label %release_mc_reset

if.end8:                                          ; preds = %if.end
  %pm_domain = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 13
  %6 = ptrtoint ptr %pm_domain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pm_domain, align 8
  %tobool9.not = icmp eq ptr %7, null
  %clk = getelementptr inbounds %struct.tegra_vde, ptr %1, i32 0, i32 17
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  br i1 %tobool9.not, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  %10 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rst, align 4
  %call12 = tail call i32 @tegra_powergate_sequence_power_up(i32 noundef 4, ptr noundef %9, ptr noundef %11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then10.cleanup_crit_edge, label %do.end17

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end17:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.178, i32 noundef %call12) #19
  br label %release_reset

if.else:                                          ; preds = %if.end8
  %call.i = tail call i32 @clk_prepare(ptr noundef %9) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.do.end25_crit_edge

if.else.do.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end25

if.end.i:                                         ; preds = %if.else
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @clk_unprepare(ptr noundef %9) #14
  br label %do.end25

do.end25:                                         ; preds = %if.then3.i, %if.else.do.end25_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.else.do.end25_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.181, i32 noundef %retval.0.i.ph) #19
  br label %release_reset

release_reset:                                    ; preds = %do.end25, %do.end17
  %err.0 = phi i32 [ %retval.0.i.ph, %do.end25 ], [ %call12, %do.end17 ]
  %12 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rst, align 4
  tail call void @reset_control_release(ptr noundef %13) #14
  br label %release_mc_reset

release_mc_reset:                                 ; preds = %release_reset, %do.end7
  %err.1 = phi i32 [ %call2, %do.end7 ], [ %err.0, %release_reset ]
  %14 = ptrtoint ptr %rst_mc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rst_mc, align 4
  tail call void @reset_control_release(ptr noundef %15) #14
  br label %cleanup

cleanup:                                          ; preds = %release_mc_reset, %if.end.i.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %err.1, %release_mc_reset ], [ 0, %if.then10.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_powergate_power_off(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_control_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_acquire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_powergate_sequence_power_up(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 187)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 187)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nobuiltin }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind readnone }
attributes #22 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !42, !43, !45, !47, !49, !50, !51, !52, !53, !54, !55, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !134, !135, !136, !137, !138, !139, !141, !142, !143, !145, !147, !148, !149, !151, !153, !154, !155, !157, !158, !159, !161, !163, !164, !165, !167, !168, !169, !171, !172, !174, !175, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !190, !191, !192, !193, !195, !196, !197, !198, !200, !201, !203, !205, !206, !207, !208, !210, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !238, !240, !242, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !288, !289, !290, !292, !293, !294, !296, !297, !298, !300, !301, !302, !303, !305, !306, !307, !308, !310, !311, !312, !313, !314, !315, !316, !317, !318, !320, !321, !322, !323, !325, !326, !327, !329, !330, !331, !333, !334, !335, !336, !338, !339, !340, !342, !343, !344, !346, !347, !348, !350, !352, !354, !356, !358, !360, !362, !363, !364, !365, !367, !368, !369, !370, !372, !373, !374, !376, !377, !378, !380, !381}
!llvm.named.register.sp = !{!382}
!llvm.module.flags = !{!383, !384, !385, !386, !387, !388, !389, !390}
!llvm.ident = !{!391}

!0 = !{ptr @__tracepoint_vde_writel, !1, !"__tracepoint_vde_writel", i1 false, i1 false}
!1 = !{!"../include/trace/../../drivers/staging/media/tegra-vde/trace.h", i32 31, i32 1}
!2 = !{ptr @__tracepoint_ptr_vde_writel, !1, !"__tracepoint_ptr_vde_writel", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_vde_writel, !1, !"__SCK__tp_func_vde_writel", i1 false, i1 false}
!4 = !{ptr @__tracepoint_vde_readl, !5, !"__tracepoint_vde_readl", i1 false, i1 false}
!5 = !{!"../include/trace/../../drivers/staging/media/tegra-vde/trace.h", i32 35, i32 1}
!6 = !{ptr @__tracepoint_ptr_vde_readl, !5, !"__tracepoint_ptr_vde_readl", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_vde_readl, !5, !"__SCK__tp_func_vde_readl", i1 false, i1 false}
!8 = !{ptr @__tracepoint_vde_setup_iram_entry, !9, !"__tracepoint_vde_setup_iram_entry", i1 false, i1 false}
!9 = !{!"../include/trace/../../drivers/staging/media/tegra-vde/trace.h", i32 40, i32 1}
!10 = !{ptr @__tracepoint_ptr_vde_setup_iram_entry, !9, !"__tracepoint_ptr_vde_setup_iram_entry", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_vde_setup_iram_entry, !9, !"__SCK__tp_func_vde_setup_iram_entry", i1 false, i1 false}
!12 = !{ptr @__tracepoint_vde_ref_l0, !13, !"__tracepoint_vde_ref_l0", i1 false, i1 false}
!13 = !{!"../include/trace/../../drivers/staging/media/tegra-vde/trace.h", i32 61, i32 1}
!14 = !{ptr @__tracepoint_ptr_vde_ref_l0, !13, !"__tracepoint_ptr_vde_ref_l0", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_vde_ref_l0, !13, !"__SCK__tp_func_vde_ref_l0", i1 false, i1 false}
!16 = !{ptr @__tracepoint_vde_ref_l1, !17, !"__tracepoint_vde_ref_l1", i1 false, i1 false}
!17 = !{!"../include/trace/../../drivers/staging/media/tegra-vde/trace.h", i32 73, i32 1}
!18 = !{ptr @__tracepoint_ptr_vde_ref_l1, !17, !"__tracepoint_ptr_vde_ref_l1", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_vde_ref_l1, !17, !"__SCK__tp_func_vde_ref_l1", i1 false, i1 false}
!20 = !{ptr @event_class_register_access, !21, !"event_class_register_access", i1 false, i1 false}
!21 = !{!"../include/trace/../../drivers/staging/media/tegra-vde/trace.h", i32 13, i32 1}
!22 = !{ptr @event_vde_writel, !1, !"event_vde_writel", i1 false, i1 false}
!23 = !{ptr @__event_vde_writel, !1, !"__event_vde_writel", i1 false, i1 false}
!24 = !{ptr @event_vde_readl, !5, !"event_vde_readl", i1 false, i1 false}
!25 = !{ptr @__event_vde_readl, !5, !"__event_vde_readl", i1 false, i1 false}
!26 = !{ptr @event_class_vde_setup_iram_entry, !9, !"event_class_vde_setup_iram_entry", i1 false, i1 false}
!27 = !{ptr @event_vde_setup_iram_entry, !9, !"event_vde_setup_iram_entry", i1 false, i1 false}
!28 = !{ptr @__event_vde_setup_iram_entry, !9, !"__event_vde_setup_iram_entry", i1 false, i1 false}
!29 = !{ptr @event_class_vde_ref_l0, !13, !"event_class_vde_ref_l0", i1 false, i1 false}
!30 = !{ptr @event_vde_ref_l0, !13, !"event_vde_ref_l0", i1 false, i1 false}
!31 = !{ptr @__event_vde_ref_l0, !13, !"__event_vde_ref_l0", i1 false, i1 false}
!32 = !{ptr @event_class_vde_ref_l1, !17, !"event_class_vde_ref_l1", i1 false, i1 false}
!33 = !{ptr @event_vde_ref_l1, !17, !"event_vde_ref_l1", i1 false, i1 false}
!34 = !{ptr @__event_vde_ref_l1, !17, !"__event_vde_ref_l1", i1 false, i1 false}
!35 = !{ptr @__bpf_trace_tp_map_vde_writel, !1, !"__bpf_trace_tp_map_vde_writel", i1 false, i1 false}
!36 = !{ptr @__bpf_trace_tp_map_vde_readl, !5, !"__bpf_trace_tp_map_vde_readl", i1 false, i1 false}
!37 = !{ptr @__bpf_trace_tp_map_vde_setup_iram_entry, !9, !"__bpf_trace_tp_map_vde_setup_iram_entry", i1 false, i1 false}
!38 = !{ptr @__bpf_trace_tp_map_vde_ref_l0, !13, !"__bpf_trace_tp_map_vde_ref_l0", i1 false, i1 false}
!39 = !{ptr @__bpf_trace_tp_map_vde_ref_l1, !17, !"__bpf_trace_tp_map_vde_ref_l1", i1 false, i1 false}
!40 = !{ptr @__initcall__kmod_tegra_vde__285_1354_tegra_vde_driver_init6, !41, !"__initcall__kmod_tegra_vde__285_1354_tegra_vde_driver_init6", i1 false, i1 false}
!41 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1354, i32 1}
!42 = !{ptr @__exitcall_tegra_vde_driver_exit, !41, !"__exitcall_tegra_vde_driver_exit", i1 false, i1 false}
!43 = !{ptr @__UNIQUE_ID_description286, !44, !"__UNIQUE_ID_description286", i1 false, i1 false}
!44 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1356, i32 1}
!45 = !{ptr @__UNIQUE_ID_author287, !46, !"__UNIQUE_ID_author287", i1 false, i1 false}
!46 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1357, i32 1}
!47 = !{ptr @__UNIQUE_ID_file288, !48, !"__UNIQUE_ID_file288", i1 false, i1 false}
!48 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1358, i32 1}
!49 = !{ptr @__UNIQUE_ID_license289, !48, !"__UNIQUE_ID_license289", i1 false, i1 false}
!50 = !{ptr @__tpstrtab_vde_writel, !1, !"__tpstrtab_vde_writel", i1 false, i1 false}
!51 = !{ptr @__tpstrtab_vde_readl, !5, !"__tpstrtab_vde_readl", i1 false, i1 false}
!52 = !{ptr @__tpstrtab_vde_setup_iram_entry, !9, !"__tpstrtab_vde_setup_iram_entry", i1 false, i1 false}
!53 = !{ptr @__tpstrtab_vde_ref_l0, !13, !"__tpstrtab_vde_ref_l0", i1 false, i1 false}
!54 = !{ptr @__tpstrtab_vde_ref_l1, !17, !"__tpstrtab_vde_ref_l1", i1 false, i1 false}
!55 = !{ptr @str__tegra_vde__trace_system_name, !56, !"str__tegra_vde__trace_system_name", i1 false, i1 false}
!56 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!57 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.1, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/media/tegra-vde/vde.h", i32 96, i32 10}
!60 = !{ptr @.str.2, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/media/tegra-vde/vde.h", i32 99, i32 10}
!62 = !{ptr @.str.3, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/staging/media/tegra-vde/vde.h", i32 102, i32 10}
!64 = !{ptr @.str.4, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/media/tegra-vde/vde.h", i32 105, i32 10}
!66 = !{ptr @.str.5, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/media/tegra-vde/vde.h", i32 108, i32 10}
!68 = !{ptr @.str.6, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/media/tegra-vde/vde.h", i32 111, i32 10}
!70 = !{ptr @.str.7, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/media/tegra-vde/vde.h", i32 114, i32 10}
!72 = !{ptr @.str.8, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/media/tegra-vde/vde.h", i32 117, i32 10}
!74 = !{ptr @.str.9, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/staging/media/tegra-vde/vde.h", i32 120, i32 10}
!76 = !{ptr @.str.10, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/media/tegra-vde/vde.h", i32 122, i32 9}
!78 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @trace_event_fields_register_access, !21, !"trace_event_fields_register_access", i1 false, i1 false}
!84 = !{ptr @trace_event_type_funcs_register_access, !21, !"trace_event_type_funcs_register_access", i1 false, i1 false}
!85 = !{ptr @.str.16, !21, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @print_fmt_register_access, !21, !"print_fmt_register_access", i1 false, i1 false}
!87 = !{ptr @.str.17, !9, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.18, !9, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.19, !9, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.20, !9, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @trace_event_fields_vde_setup_iram_entry, !9, !"trace_event_fields_vde_setup_iram_entry", i1 false, i1 false}
!92 = !{ptr @trace_event_type_funcs_vde_setup_iram_entry, !9, !"trace_event_type_funcs_vde_setup_iram_entry", i1 false, i1 false}
!93 = !{ptr @.str.21, !9, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.22, !9, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @trace_raw_output_vde_setup_iram_entry.__flags, !9, !"__flags", i1 false, i1 false}
!96 = !{ptr @.str.23, !9, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @print_fmt_vde_setup_iram_entry, !9, !"print_fmt_vde_setup_iram_entry", i1 false, i1 false}
!98 = !{ptr @.str.24, !13, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @trace_event_fields_vde_ref_l0, !13, !"trace_event_fields_vde_ref_l0", i1 false, i1 false}
!100 = !{ptr @trace_event_type_funcs_vde_ref_l0, !13, !"trace_event_type_funcs_vde_ref_l0", i1 false, i1 false}
!101 = !{ptr @.str.25, !13, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @print_fmt_vde_ref_l0, !13, !"print_fmt_vde_ref_l0", i1 false, i1 false}
!103 = !{ptr @.str.26, !17, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.27, !17, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @trace_event_fields_vde_ref_l1, !17, !"trace_event_fields_vde_ref_l1", i1 false, i1 false}
!106 = !{ptr @trace_event_type_funcs_vde_ref_l1, !17, !"trace_event_type_funcs_vde_ref_l1", i1 false, i1 false}
!107 = !{ptr @.str.28, !17, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @print_fmt_vde_ref_l1, !17, !"print_fmt_vde_ref_l1", i1 false, i1 false}
!109 = !{ptr @.str.29, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1349, i32 12}
!111 = !{ptr @tegra_vde_driver, !112, !"tegra_vde_driver", i1 false, i1 false}
!112 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1344, i32 31}
!113 = !{ptr @.str.30, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1092, i32 57}
!115 = !{ptr @.str.31, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1096, i32 58}
!117 = !{ptr @.str.32, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1100, i32 57}
!119 = !{ptr @.str.33, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1104, i32 57}
!121 = !{ptr @.str.34, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1108, i32 57}
!123 = !{ptr @.str.35, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1112, i32 57}
!125 = !{ptr @.str.36, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1116, i32 57}
!127 = !{ptr @.str.37, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1120, i32 58}
!129 = !{ptr @.str.38, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1124, i32 61}
!131 = !{ptr @.str.39, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1131, i32 3}
!133 = !{ptr @.str.40, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.41, !132, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.42, !132, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.43, !132, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @tegra_vde_probe._entry, !132, !"_entry", i1 false, i1 false}
!138 = !{ptr @tegra_vde_probe._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.45, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1138, i32 3}
!141 = !{ptr @tegra_vde_probe._entry.44, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @tegra_vde_probe._entry_ptr.46, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.47, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1142, i32 72}
!145 = !{ptr @.str.49, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1145, i32 3}
!147 = !{ptr @tegra_vde_probe._entry.48, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @tegra_vde_probe._entry_ptr.50, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.51, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1149, i32 38}
!151 = !{ptr @.str.53, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1156, i32 3}
!153 = !{ptr @tegra_vde_probe._entry.52, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @tegra_vde_probe._entry_ptr.54, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.56, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1162, i32 3}
!157 = !{ptr @tegra_vde_probe._entry.55, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @tegra_vde_probe._entry_ptr.57, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.58, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1166, i32 49}
!161 = !{ptr @.str.60, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1168, i32 3}
!163 = !{ptr @tegra_vde_probe._entry.59, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @tegra_vde_probe._entry_ptr.61, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.63, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1176, i32 3}
!167 = !{ptr @tegra_vde_probe._entry.62, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @tegra_vde_probe._entry_ptr.64, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @tegra_vde_probe.__key, !170, !"__key", i1 false, i1 false}
!170 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1181, i32 2}
!171 = !{ptr @.str.65, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @tegra_vde_probe.__key.66, !173, !"__key", i1 false, i1 false}
!173 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1182, i32 2}
!174 = !{ptr @.str.67, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.68, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1186, i32 22}
!177 = !{ptr @.str.70, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1192, i32 3}
!179 = !{ptr @tegra_vde_probe._entry.69, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @tegra_vde_probe._entry_ptr.71, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.73, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1213, i32 3}
!183 = !{ptr @tegra_vde_probe._entry.72, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @tegra_vde_probe._entry_ptr.74, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.76, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1219, i32 3}
!187 = !{ptr @tegra_vde_probe._entry.75, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @tegra_vde_probe._entry_ptr.77, !186, !"_entry_ptr", i1 false, i1 false}
!189 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!190 = !{ptr @.str.78, !5, !"<string literal>", i1 false, i1 false}
!191 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!192 = !{ptr @.str.79, !5, !"<string literal>", i1 false, i1 false}
!193 = distinct !{null, !194, !"__already_done", i1 false, i1 false}
!194 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!195 = !{ptr @.str.80, !194, !"<string literal>", i1 false, i1 false}
!196 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!197 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!198 = !{ptr @init_completion.__key, !199, !"__key", i1 false, i1 false}
!199 = !{!"../include/linux/completion.h", i32 87, i32 2}
!200 = !{ptr @.str.81, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @tegra_vde_fops, !202, !"tegra_vde_fops", i1 false, i1 false}
!202 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 993, i32 37}
!203 = !{ptr @.str.82, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 977, i32 2}
!205 = !{ptr @.str.83, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @tegra_vde_unlocked_ioctl._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @tegra_vde_unlocked_ioctl._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.84, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 882, i32 3}
!210 = !{ptr @.str.85, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @tegra_vde_ioctl_decode_h264._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @tegra_vde_ioctl_decode_h264._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.87, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 889, i32 3}
!215 = !{ptr @tegra_vde_ioctl_decode_h264._entry.86, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @tegra_vde_ioctl_decode_h264._entry_ptr.88, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.90, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 895, i32 3}
!219 = !{ptr @tegra_vde_ioctl_decode_h264._entry.89, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @tegra_vde_ioctl_decode_h264._entry_ptr.91, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.93, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 916, i32 3}
!223 = !{ptr @tegra_vde_ioctl_decode_h264._entry.92, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @tegra_vde_ioctl_decode_h264._entry_ptr.94, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.96, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 931, i32 3}
!227 = !{ptr @tegra_vde_ioctl_decode_h264._entry.95, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @tegra_vde_ioctl_decode_h264._entry_ptr.97, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.99, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 935, i32 3}
!231 = !{ptr @tegra_vde_ioctl_decode_h264._entry.98, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @tegra_vde_ioctl_decode_h264._entry_ptr.100, !230, !"_entry_ptr", i1 false, i1 false}
!233 = distinct !{null, !234, !"__already_done", i1 false, i1 false}
!234 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!235 = !{ptr @.str.101, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.102, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!238 = !{ptr @.str.103, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!240 = !{ptr @.str.104, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 721, i32 3}
!242 = !{ptr @.str.105, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @tegra_vde_validate_h264_ctx._entry, !241, !"_entry", i1 false, i1 false}
!244 = !{ptr @tegra_vde_validate_h264_ctx._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.107, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 726, i32 3}
!247 = !{ptr @tegra_vde_validate_h264_ctx._entry.106, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @tegra_vde_validate_h264_ctx._entry_ptr.108, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.110, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 731, i32 3}
!251 = !{ptr @tegra_vde_validate_h264_ctx._entry.109, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @tegra_vde_validate_h264_ctx._entry_ptr.111, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.113, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 736, i32 3}
!255 = !{ptr @tegra_vde_validate_h264_ctx._entry.112, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @tegra_vde_validate_h264_ctx._entry_ptr.114, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.116, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 742, i32 3}
!259 = !{ptr @tegra_vde_validate_h264_ctx._entry.115, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @tegra_vde_validate_h264_ctx._entry_ptr.117, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.119, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 748, i32 3}
!263 = !{ptr @tegra_vde_validate_h264_ctx._entry.118, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @tegra_vde_validate_h264_ctx._entry_ptr.120, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.122, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 754, i32 3}
!267 = !{ptr @tegra_vde_validate_h264_ctx._entry.121, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @tegra_vde_validate_h264_ctx._entry_ptr.123, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.125, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 760, i32 3}
!271 = !{ptr @tegra_vde_validate_h264_ctx._entry.124, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @tegra_vde_validate_h264_ctx._entry_ptr.126, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.128, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 766, i32 3}
!275 = !{ptr @tegra_vde_validate_h264_ctx._entry.127, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @tegra_vde_validate_h264_ctx._entry_ptr.129, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.131, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 772, i32 3}
!279 = !{ptr @tegra_vde_validate_h264_ctx._entry.130, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @tegra_vde_validate_h264_ctx._entry_ptr.132, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.134, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 778, i32 3}
!283 = !{ptr @tegra_vde_validate_h264_ctx._entry.133, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @tegra_vde_validate_h264_ctx._entry_ptr.135, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.136, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 600, i32 3}
!287 = !{ptr @.str.137, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @tegra_vde_attach_dmabuf._entry, !286, !"_entry", i1 false, i1 false}
!289 = !{ptr @tegra_vde_attach_dmabuf._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.139, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 605, i32 3}
!292 = !{ptr @tegra_vde_attach_dmabuf._entry.138, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @tegra_vde_attach_dmabuf._entry_ptr.140, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.142, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 611, i32 3}
!296 = !{ptr @tegra_vde_attach_dmabuf._entry.141, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @tegra_vde_attach_dmabuf._entry_ptr.143, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.144, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 710, i32 3}
!300 = !{ptr @.str.145, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @tegra_vde_validate_frame._entry, !299, !"_entry", i1 false, i1 false}
!302 = !{ptr @tegra_vde_validate_frame._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.146, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 547, i32 3}
!305 = !{ptr @.str.147, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @tegra_vde_setup_hw_context._entry, !304, !"_entry", i1 false, i1 false}
!307 = !{ptr @tegra_vde_setup_hw_context._entry_ptr, !304, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.149, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 567, i32 3}
!310 = !{ptr @tegra_vde_setup_hw_context._entry.148, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @tegra_vde_setup_hw_context._entry_ptr.150, !309, !"_entry_ptr", i1 false, i1 false}
!312 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!313 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!314 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!315 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!316 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!317 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!318 = !{ptr @.str.151, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 241, i32 3}
!320 = !{ptr @.str.152, !319, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @tegra_vde_wait_bsev._entry, !319, !"_entry", i1 false, i1 false}
!322 = !{ptr @tegra_vde_wait_bsev._entry_ptr, !319, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.154, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 248, i32 3}
!325 = !{ptr @tegra_vde_wait_bsev._entry.153, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @tegra_vde_wait_bsev._entry_ptr.155, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.157, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 258, i32 3}
!329 = !{ptr @tegra_vde_wait_bsev._entry.156, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @tegra_vde_wait_bsev._entry_ptr.158, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.159, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 113, i32 3}
!333 = !{ptr @.str.160, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @tegra_vde_alloc_bo._entry, !332, !"_entry", i1 false, i1 false}
!335 = !{ptr @tegra_vde_alloc_bo._entry_ptr, !332, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.162, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 122, i32 3}
!338 = !{ptr @tegra_vde_alloc_bo._entry.161, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @tegra_vde_alloc_bo._entry_ptr.163, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.165, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 128, i32 3}
!342 = !{ptr @tegra_vde_alloc_bo._entry.164, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @tegra_vde_alloc_bo._entry_ptr.166, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.168, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 135, i32 4}
!346 = !{ptr @tegra_vde_alloc_bo._entry.167, !345, !"_entry", i1 false, i1 false}
!347 = !{ptr @tegra_vde_alloc_bo._entry_ptr.169, !345, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @tegra_vde_of_match, !349, !"tegra_vde_of_match", i1 false, i1 false}
!349 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1335, i32 34}
!350 = !{ptr @tegra124_vde_soc, !351, !"tegra124_vde_soc", i1 false, i1 false}
!351 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1319, i32 35}
!352 = !{ptr @tegra114_vde_soc, !353, !"tegra114_vde_soc", i1 false, i1 false}
!353 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1323, i32 35}
!354 = !{ptr @tegra30_vde_soc, !355, !"tegra30_vde_soc", i1 false, i1 false}
!355 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1327, i32 35}
!356 = !{ptr @tegra20_vde_soc, !357, !"tegra20_vde_soc", i1 false, i1 false}
!357 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1331, i32 35}
!358 = !{ptr @tegra_vde_pm_ops, !359, !"tegra_vde_pm_ops", i1 false, i1 false}
!359 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1311, i32 32}
!360 = !{ptr @.str.170, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1020, i32 4}
!362 = !{ptr @.str.171, !361, !"<string literal>", i1 false, i1 false}
!363 = !{ptr @tegra_vde_runtime_suspend._entry, !361, !"_entry", i1 false, i1 false}
!364 = !{ptr @tegra_vde_runtime_suspend._entry_ptr, !361, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.172, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1039, i32 3}
!367 = !{ptr @.str.173, !366, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @tegra_vde_runtime_resume._entry, !366, !"_entry", i1 false, i1 false}
!369 = !{ptr @tegra_vde_runtime_resume._entry_ptr, !366, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @.str.175, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1045, i32 3}
!372 = !{ptr @tegra_vde_runtime_resume._entry.174, !371, !"_entry", i1 false, i1 false}
!373 = !{ptr @tegra_vde_runtime_resume._entry_ptr.176, !371, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @.str.178, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1053, i32 4}
!376 = !{ptr @tegra_vde_runtime_resume._entry.177, !375, !"_entry", i1 false, i1 false}
!377 = !{ptr @tegra_vde_runtime_resume._entry_ptr.179, !375, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @.str.181, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/staging/media/tegra-vde/vde.c", i32 1063, i32 4}
!380 = !{ptr @tegra_vde_runtime_resume._entry.180, !379, !"_entry", i1 false, i1 false}
!381 = !{ptr @tegra_vde_runtime_resume._entry_ptr.182, !379, !"_entry_ptr", i1 false, i1 false}
!382 = !{!"sp"}
!383 = !{i32 1, !"wchar_size", i32 2}
!384 = !{i32 1, !"min_enum_size", i32 4}
!385 = !{i32 8, !"branch-target-enforcement", i32 0}
!386 = !{i32 8, !"sign-return-address", i32 0}
!387 = !{i32 8, !"sign-return-address-all", i32 0}
!388 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!389 = !{i32 7, !"uwtable", i32 1}
!390 = !{i32 7, !"frame-pointer", i32 2}
!391 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!392 = !{!"branch_weights", i32 2000, i32 1}
!393 = !{!"branch_weights", i32 1, i32 2000}
!394 = !{!"auto-init"}
!395 = !{i64 2148271885}
!396 = !{i64 756708, i64 756733, i64 756755, i64 756771, i64 756783, i64 756803, i64 756827, i64 756843, i64 756855}
!397 = !{i64 2148272073}
!398 = !{i64 2091328}
!399 = !{i64 2090910}
!400 = !{i32 0, i32 33}
!401 = !{i64 2148754281, i64 2148754286, i64 2148754299, i64 2148754343, i64 2148754377, i64 2148754398}
!402 = !{i64 2154554394}
!403 = !{i64 2154554623}
!404 = !{i64 2149330367}
!405 = !{i64 2149331403}
!406 = !{i64 2154537750}
!407 = !{i64 2154537981}
!408 = !{i64 2152925900, i64 2152925925}
!409 = !{i64 5421455}
!410 = !{i64 5421652}
!411 = !{i64 2152906885}
!412 = !{i64 2155820133}
!413 = !{i8 0, i8 2}
!414 = !{i64 2154591875}
!415 = !{i64 2154592076}
!416 = !{i64 2154608473}
!417 = !{i64 2154608732}
!418 = !{i64 2154571345}
!419 = !{i64 2154571602}
