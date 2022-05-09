; ModuleID = '/llk/IR_all_yes/drivers/dma/tegra20-apb-dma.c_pt.bc'
source_filename = "../drivers/dma/tegra20-apb-dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.98 }
%union.anon.98 = type { %struct.anon.99 }
%struct.anon.99 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.100, %struct.trace_event, ptr, ptr, %union.anon.101, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.100 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.101 = type { ptr }
%union.anon.102 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.103 = type { %struct.bpf_raw_event_map }
%union.anon.104 = type { %struct.bpf_raw_event_map }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.tegra_dma_chip_data = type { i32, i32, i32, i8, i8 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.trace_event_raw_tegra_dma_tx_status = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_tegra_dma_complete_cb = type { %struct.trace_entry, i32, i32, ptr, [0 x i8] }
%struct.trace_event_raw_tegra_dma_isr = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tegra_dma = type { %struct.dma_device, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, i32, [0 x %struct.tegra_dma_channel] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.tegra_dma_channel = type { %struct.dma_chan, [12 x i8], i8, i32, ptr, %struct.spinlock, i8, ptr, i8, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.tasklet_struct, i32, %struct.dma_slave_config, %struct.tegra_dma_channel_regs, %struct.wait_queue_head }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.105, i32 }
%union.anon.105 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.tegra_dma_channel_regs = type { i32, i32, i32, i32, i32, i32 }
%struct.dmaengine_result = type { i32, i32 }
%struct.tegra_dma_desc = type { %struct.dma_async_tx_descriptor, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.tegra_dma_sg_req = type { %struct.tegra_dma_channel_regs, i32, i8, i8, %struct.list_head, ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__tpstrtab_tegra_dma_tx_status = internal constant [20 x i8] c"tegra_dma_tx_status\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tegra_dma_tx_status = dso_local global %struct.static_call_key { ptr @__traceiter_tegra_dma_tx_status }, align 4
@__tracepoint_tegra_dma_tx_status = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tegra_dma_tx_status, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tegra_dma_tx_status, ptr null, ptr @__traceiter_tegra_dma_tx_status, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tegra_dma_tx_status = internal constant ptr @__tracepoint_tegra_dma_tx_status, section "__tracepoints_ptrs", align 4
@__tpstrtab_tegra_dma_complete_cb = internal constant [22 x i8] c"tegra_dma_complete_cb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tegra_dma_complete_cb = dso_local global %struct.static_call_key { ptr @__traceiter_tegra_dma_complete_cb }, align 4
@__tracepoint_tegra_dma_complete_cb = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tegra_dma_complete_cb, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tegra_dma_complete_cb, ptr null, ptr @__traceiter_tegra_dma_complete_cb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tegra_dma_complete_cb = internal constant ptr @__tracepoint_tegra_dma_complete_cb, section "__tracepoints_ptrs", align 4
@__tpstrtab_tegra_dma_isr = internal constant [14 x i8] c"tegra_dma_isr\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tegra_dma_isr = dso_local global %struct.static_call_key { ptr @__traceiter_tegra_dma_isr }, align 4
@__tracepoint_tegra_dma_isr = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tegra_dma_isr, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tegra_dma_isr, ptr null, ptr @__traceiter_tegra_dma_isr, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tegra_dma_isr = internal constant ptr @__tracepoint_tegra_dma_isr, section "__tracepoints_ptrs", align 4
@str__tegra_apb_dma__trace_system_name = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tegra_apb_dma\00", [18 x i8] zeroinitializer }, align 32
@trace_event_fields_tegra_dma_tx_status = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.98 { %struct.anon.99 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.98 { %struct.anon.99 { ptr @.str.4, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.98 { %struct.anon.99 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_tegra_dma_tx_status = internal global %struct.trace_event_class { ptr @str__tegra_apb_dma__trace_system_name, ptr @trace_event_raw_event_tegra_dma_tx_status, ptr @perf_trace_tegra_dma_tx_status, ptr @trace_event_reg, ptr @trace_event_fields_tegra_dma_tx_status, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tegra_dma_tx_status, i64 24), ptr getelementptr (i8, ptr @event_class_tegra_dma_tx_status, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tegra_dma_tx_status = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_tegra_dma_tx_status, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_tegra_dma_tx_status = internal global { [84 x i8], [44 x i8] } { [84 x i8] c"\22channel %s: dma cookie %d, residue %u\22, __get_str(chan), REC->cookie, REC->residue\00", [44 x i8] zeroinitializer }, align 32
@event_tegra_dma_tx_status = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tegra_dma_tx_status, %union.anon.100 { ptr @__tracepoint_tegra_dma_tx_status }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tegra_dma_tx_status }, ptr @print_fmt_tegra_dma_tx_status, ptr null, %union.anon.101 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tegra_dma_tx_status = internal global ptr @event_tegra_dma_tx_status, section "_ftrace_events", align 4
@trace_event_fields_tegra_dma_complete_cb = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.98 { %struct.anon.99 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.98 { %struct.anon.99 { ptr @.str.9, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.98 { %struct.anon.99 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_tegra_dma_complete_cb = internal global %struct.trace_event_class { ptr @str__tegra_apb_dma__trace_system_name, ptr @trace_event_raw_event_tegra_dma_complete_cb, ptr @perf_trace_tegra_dma_complete_cb, ptr @trace_event_reg, ptr @trace_event_fields_tegra_dma_complete_cb, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tegra_dma_complete_cb, i64 24), ptr getelementptr (i8, ptr @event_class_tegra_dma_complete_cb, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tegra_dma_complete_cb = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_tegra_dma_complete_cb, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_tegra_dma_complete_cb = internal global { [69 x i8], [59 x i8] } { [69 x i8] c"\22channel %s: done %d, ptr %p\22, __get_str(chan), REC->count, REC->ptr\00", [59 x i8] zeroinitializer }, align 32
@event_tegra_dma_complete_cb = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tegra_dma_complete_cb, %union.anon.100 { ptr @__tracepoint_tegra_dma_complete_cb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tegra_dma_complete_cb }, ptr @print_fmt_tegra_dma_complete_cb, ptr null, %union.anon.101 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tegra_dma_complete_cb = internal global ptr @event_tegra_dma_complete_cb, section "_ftrace_events", align 4
@trace_event_fields_tegra_dma_isr = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.98 { %struct.anon.99 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.98 { %struct.anon.99 { ptr @.str.13, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_tegra_dma_isr = internal global %struct.trace_event_class { ptr @str__tegra_apb_dma__trace_system_name, ptr @trace_event_raw_event_tegra_dma_isr, ptr @perf_trace_tegra_dma_isr, ptr @trace_event_reg, ptr @trace_event_fields_tegra_dma_isr, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tegra_dma_isr, i64 24), ptr getelementptr (i8, ptr @event_class_tegra_dma_isr, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tegra_dma_isr = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_tegra_dma_isr, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_tegra_dma_isr = internal global { [41 x i8], [55 x i8] } { [41 x i8] c"\22%s: irq %d\0A\22, __get_str(chan), REC->irq\00", [55 x i8] zeroinitializer }, align 32
@event_tegra_dma_isr = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tegra_dma_isr, %union.anon.100 { ptr @__tracepoint_tegra_dma_isr }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tegra_dma_isr }, ptr @print_fmt_tegra_dma_isr, ptr null, %union.anon.101 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tegra_dma_isr = internal global ptr @event_tegra_dma_isr, section "_ftrace_events", align 4
@__bpf_trace_tp_map_tegra_dma_tx_status = internal global %union.anon.102 { %struct.bpf_raw_event_map { ptr @__tracepoint_tegra_dma_tx_status, ptr @__bpf_trace_tegra_dma_tx_status, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tegra_dma_complete_cb = internal global %union.anon.103 { %struct.bpf_raw_event_map { ptr @__tracepoint_tegra_dma_complete_cb, ptr @__bpf_trace_tegra_dma_complete_cb, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tegra_dma_isr = internal global %union.anon.104 { %struct.bpf_raw_event_map { ptr @__tracepoint_tegra_dma_isr, ptr @__bpf_trace_tegra_dma_isr, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__initcall__kmod_tegra20_apb_dma__277_1689_tegra_dmac_driver_init6 = internal global ptr @tegra_dmac_driver_init, section ".initcall6.init", align 4
@tegra_dmac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_dma_probe, ptr @tegra_dma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.15, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_dma_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_dma_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_dmac_driver_exit = internal global ptr @tegra_dmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description278 = internal constant [67 x i8] c"tegra20_apb_dma.description=NVIDIA Tegra APB DMA Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author279 = internal constant [62 x i8] c"tegra20_apb_dma.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file280 = internal constant [49 x i8] c"tegra20_apb_dma.file=drivers/dma/tegra20-apb-dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license281 = internal constant [31 x i8] c"tegra20_apb_dma.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"chan\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma_cookie_t\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cookie\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"__u32\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"residue\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"channel %s: dma cookie %d, residue %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"count\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"void *\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ptr\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"channel %s: done %d, ptr %p\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"irq\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: irq %d\0A\0A\00", [19 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra-apbdma\00", [19 x i8] zeroinitializer }, align 32
@tegra_dma_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra148-apbdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra148_dma_chip_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-apbdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra114_dma_chip_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-apbdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_dma_chip_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-apbdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_dma_chip_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@tegra_dma_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_dma_dev_suspend, ptr @tegra_dma_dev_resume, ptr @tegra_dma_dev_suspend, ptr @tegra_dma_dev_resume, ptr @tegra_dma_dev_suspend, ptr @tegra_dma_dev_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_dma_runtime_suspend, ptr @tegra_dma_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_dma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.18, i32 1464, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error: Missing controller clock\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra_dma_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/dma/tegra20-apb-dma.c\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_dma_probe._entry_ptr = internal global ptr @tegra_dma_probe._entry, section ".printk_index", align 4
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dma\00", [28 x i8] zeroinitializer }, align 32
@tegra_dma_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.18, i32 1470, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error: Missing reset\0A\00", [42 x i8] zeroinitializer }, align 32
@tegra_dma_probe._entry_ptr.24 = internal global ptr @tegra_dma_probe._entry.22, section ".printk_index", align 4
@tegra_dma_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&tdma->global_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"apbdma.%d\00", [22 x i8] zeroinitializer }, align 32
@tegra_dma_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.17, ptr @.str.18, i32 1508, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"request_irq failed with err %d channel %d\0A\00", [53 x i8] zeroinitializer }, align 32
@tegra_dma_probe._entry_ptr.29 = internal global ptr @tegra_dma_probe._entry.27, section ".printk_index", align 4
@tegra_dma_probe.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&tdc->lock\00", [21 x i8] zeroinitializer }, align 32
@tegra_dma_probe.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&tdc->wq\00", [23 x i8] zeroinitializer }, align 32
@tegra_dma_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.17, ptr @.str.18, i32 1561, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Tegra20 APB DMA driver registration failed %d\0A\00", [49 x i8] zeroinitializer }, align 32
@tegra_dma_probe._entry_ptr.36 = internal global ptr @tegra_dma_probe._entry.34, section ".printk_index", align 4
@tegra_dma_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.17, ptr @.str.18, i32 1569, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Tegra20 APB DMA OF registration failed %d\0A\00", [53 x i8] zeroinitializer }, align 32
@tegra_dma_probe._entry_ptr.39 = internal global ptr @tegra_dma_probe._entry.37, section ".printk_index", align 4
@tegra_dma_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.17, ptr @.str.18, i32 1574, ptr @.str.42, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Tegra20 APB DMA driver registered %u channels\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tegra_dma_probe._entry_ptr.43 = internal global ptr @tegra_dma_probe._entry.40, section ".printk_index", align 4
@tegra_dma_init_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.18, i32 1415, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to assert reset: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tegra_dma_init_hw\00", [46 x i8] zeroinitializer }, align 32
@tegra_dma_init_hw._entry_ptr = internal global ptr @tegra_dma_init_hw._entry, section ".printk_index", align 4
@tegra_dma_init_hw._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.18, i32 1421, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to enable clk: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_dma_init_hw._entry_ptr.48 = internal global ptr @tegra_dma_init_hw._entry.46, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tegra_dma_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.18, i32 687, ptr @.str.42, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Interrupt already served status 0x%08x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tegra_dma_isr\00", [18 x i8] zeroinitializer }, align 32
@tegra_dma_isr._entry_ptr = internal global ptr @tegra_dma_isr._entry, section ".printk_index", align 4
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"include/trace/events/tegra_apb_dma.h\00", [59 x i8] zeroinitializer }, align 32
@trace_tegra_dma_isr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@trace_tegra_dma_complete_cb.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tegra_dma_free_chan_resources.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.54, ptr @.str.55, ptr @.str.18, ptr @.str.56, i8 1, i8 74, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra20_apb_dma\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tegra_dma_free_chan_resources\00", [34 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Freeing channel %d\0A\00", [44 x i8] zeroinitializer }, align 32
@tegra_dma_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.18, i32 1059, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DMA channel is not configured\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_dma_prep_slave_sg\00", [40 x i8] zeroinitializer }, align 32
@tegra_dma_prep_slave_sg._entry_ptr = internal global ptr @tegra_dma_prep_slave_sg._entry, section ".printk_index", align 4
@tegra_dma_prep_slave_sg._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.18, i32 1063, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid segment length %d\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_dma_prep_slave_sg._entry_ptr.61 = internal global ptr @tegra_dma_prep_slave_sg._entry.59, section ".printk_index", align 4
@tegra_dma_prep_slave_sg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tegra_dma_prep_slave_sg._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.18, i32 1096, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DMA descriptors not available\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_dma_prep_slave_sg._entry_ptr.64 = internal global ptr @tegra_dma_prep_slave_sg._entry.62, section ".printk_index", align 4
@tegra_dma_prep_slave_sg._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.58, ptr @.str.18, i32 1116, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"DMA length/memory address is not supported\0A\00", [52 x i8] zeroinitializer }, align 32
@tegra_dma_prep_slave_sg._entry_ptr.67 = internal global ptr @tegra_dma_prep_slave_sg._entry.65, section ".printk_index", align 4
@tegra_dma_prep_slave_sg._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.58, ptr @.str.18, i32 1123, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DMA sg-req not available\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_dma_prep_slave_sg._entry_ptr.70 = internal global ptr @tegra_dma_prep_slave_sg._entry.68, section ".printk_index", align 4
@tegra_dma_prep_slave_sg._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.58, ptr @.str.18, i32 1157, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DMA configured in cyclic mode\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_dma_prep_slave_sg._entry_ptr.73 = internal global ptr @tegra_dma_prep_slave_sg._entry.71, section ".printk_index", align 4
@get_transfer_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.18, i32 1021, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DMA direction is not supported\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"get_transfer_param\00", [45 x i8] zeroinitializer }, align 32
@get_transfer_param._entry_ptr = internal global ptr @get_transfer_param._entry, section ".printk_index", align 4
@get_bus_width._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.18, i32 959, ptr @.str.78, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"slave bw is not supported, using 32bits\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"get_bus_width\00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@get_bus_width._entry_ptr = internal global ptr @get_bus_width._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tegra_dma_prep_dma_cyclic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.18, i32 1183, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid buffer/period len\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_dma_prep_dma_cyclic\00", [38 x i8] zeroinitializer }, align 32
@tegra_dma_prep_dma_cyclic._entry_ptr = internal global ptr @tegra_dma_prep_dma_cyclic._entry, section ".printk_index", align 4
@tegra_dma_prep_dma_cyclic._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.18, i32 1188, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DMA slave is not configured\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra_dma_prep_dma_cyclic._entry_ptr.83 = internal global ptr @tegra_dma_prep_dma_cyclic._entry.81, section ".printk_index", align 4
@tegra_dma_prep_dma_cyclic._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.18, i32 1199, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Request not allowed when DMA running\0A\00", [58 x i8] zeroinitializer }, align 32
@tegra_dma_prep_dma_cyclic._entry_ptr.86 = internal global ptr @tegra_dma_prep_dma_cyclic._entry.84, section ".printk_index", align 4
@tegra_dma_prep_dma_cyclic._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.80, ptr @.str.18, i32 1208, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"buf_len is not multiple of period_len\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra_dma_prep_dma_cyclic._entry_ptr.89 = internal global ptr @tegra_dma_prep_dma_cyclic._entry.87, section ".printk_index", align 4
@tegra_dma_prep_dma_cyclic._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.80, ptr @.str.18, i32 1215, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Req len/mem address is not correct\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra_dma_prep_dma_cyclic._entry_ptr.92 = internal global ptr @tegra_dma_prep_dma_cyclic._entry.90, section ".printk_index", align 4
@tegra_dma_prep_dma_cyclic.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tegra_dma_prep_dma_cyclic._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.80, ptr @.str.18, i32 1244, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"not enough descriptors available\0A\00", [62 x i8] zeroinitializer }, align 32
@tegra_dma_prep_dma_cyclic._entry_ptr.95 = internal global ptr @tegra_dma_prep_dma_cyclic._entry.93, section ".printk_index", align 4
@tegra_dma_prep_dma_cyclic._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.80, ptr @.str.18, i32 1260, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@tegra_dma_prep_dma_cyclic._entry_ptr.97 = internal global ptr @tegra_dma_prep_dma_cyclic._entry.96, section ".printk_index", align 4
@tegra_dma_prep_dma_cyclic._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.80, ptr @.str.18, i32 1294, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DMA configuration conflict\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_dma_prep_dma_cyclic._entry_ptr.100 = internal global ptr @tegra_dma_prep_dma_cyclic._entry.98, section ".printk_index", align 4
@handle_continuous_head_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.18, i32 564, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DMA transfer underflow, aborting DMA\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"handle_continuous_head_request\00", [33 x i8] zeroinitializer }, align 32
@handle_continuous_head_request._entry_ptr = internal global ptr @handle_continuous_head_request._entry, section ".printk_index", align 4
@tegra_dma_stop.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.54, ptr @.str.103, ptr @.str.18, ptr @.str.104, i8 0, i8 106, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tegra_dma_stop\00", [17 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s():clearing interrupt\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra_dma_configure_for_next._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.18, i32 476, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Skipping new configuration as interrupt is pending\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tegra_dma_configure_for_next\00", [35 x i8] zeroinitializer }, align 32
@tegra_dma_configure_for_next._entry_ptr = internal global ptr @tegra_dma_configure_for_next._entry, section ".printk_index", align 4
@tegra_dma_slave_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.18, i32 341, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Configuration not allowed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra_dma_slave_config\00", [41 x i8] zeroinitializer }, align 32
@tegra_dma_slave_config._entry_ptr = internal global ptr @tegra_dma_slave_config._entry, section ".printk_index", align 4
@tegra_dma_terminate_all.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.54, ptr @.str.109, ptr @.str.18, ptr @.str.110, i8 0, i8 -66, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_dma_terminate_all\00", [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s():handling isr\0A\00", [45 x i8] zeroinitializer }, align 32
@tegra_dma_synchronize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.18, i32 817, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to synchronize DMA: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tegra_dma_synchronize\00", [42 x i8] zeroinitializer }, align 32
@tegra_dma_synchronize._entry_ptr = internal global ptr @tegra_dma_synchronize._entry, section ".printk_index", align 4
@tegra_dma_tx_status.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.54, ptr @.str.113, ptr @.str.18, ptr @.str.114, i8 0, i8 -24, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tegra_dma_tx_status\00", [44 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cookie %d not found\0A\00", [43 x i8] zeroinitializer }, align 32
@tegra_dma_sg_bytes_xferred.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@trace_tegra_dma_tx_status.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tegra_dma_issue_pending._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.18, i32 716, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"No DMA request\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_dma_issue_pending\00", [40 x i8] zeroinitializer }, align 32
@tegra_dma_issue_pending._entry_ptr = internal global ptr @tegra_dma_issue_pending._entry, section ".printk_index", align 4
@tegra_dma_issue_pending._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.18, i32 722, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to enable DMA\0A\00", [42 x i8] zeroinitializer }, align 32
@tegra_dma_issue_pending._entry_ptr.119 = internal global ptr @tegra_dma_issue_pending._entry.117, section ".printk_index", align 4
@tegra_dma_of_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.18, i32 1359, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid slave id: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra_dma_of_xlate\00", [45 x i8] zeroinitializer }, align 32
@tegra_dma_of_xlate._entry_ptr = internal global ptr @tegra_dma_of_xlate._entry, section ".printk_index", align 4
@tegra148_dma_chip_data = internal constant { %struct.tegra_dma_chip_data, [16 x i8] } { %struct.tegra_dma_chip_data { i32 32, i32 64, i32 65536, i8 1, i8 1 }, [16 x i8] zeroinitializer }, align 32
@tegra114_dma_chip_data = internal constant { %struct.tegra_dma_chip_data, [16 x i8] } { %struct.tegra_dma_chip_data { i32 32, i32 32, i32 65536, i8 1, i8 0 }, [16 x i8] zeroinitializer }, align 32
@tegra30_dma_chip_data = internal constant { %struct.tegra_dma_chip_data, [16 x i8] } { %struct.tegra_dma_chip_data { i32 32, i32 32, i32 65536, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@tegra20_dma_chip_data = internal constant { %struct.tegra_dma_chip_data, [16 x i8] } { %struct.tegra_dma_chip_data { i32 16, i32 32, i32 65536, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@tegra_dma_dev_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.18, i32 1635, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"channel %u busy\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tegra_dma_dev_suspend\00", [42 x i8] zeroinitializer }, align 32
@tegra_dma_dev_suspend._entry_ptr = internal global ptr @tegra_dma_dev_suspend._entry, section ".printk_index", align 4
@switch.table.get_transfer_param = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 268435456, i32 0, i32 536870912, i32 0, i32 0, i32 0, i32 805306368], [32 x i8] zeroinitializer }, align 32
@switch.table.get_transfer_param.124 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 268435456, i32 0, i32 536870912, i32 0, i32 0, i32 0, i32 805306368], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.125 = private unnamed_addr constant [38 x i8] c"str__tegra_apb_dma__trace_system_name\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 36, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant [39 x i8] c"trace_event_fields_tegra_dma_tx_status\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_tegra_dma_tx_status\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [30 x i8] c"print_fmt_tegra_dma_tx_status\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [26 x i8] c"event_tegra_dma_tx_status\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [41 x i8] c"trace_event_fields_tegra_dma_complete_cb\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [45 x i8] c"trace_event_type_funcs_tegra_dma_complete_cb\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [32 x i8] c"print_fmt_tegra_dma_complete_cb\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [28 x i8] c"event_tegra_dma_complete_cb\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [33 x i8] c"trace_event_fields_tegra_dma_isr\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_tegra_dma_isr\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [24 x i8] c"print_fmt_tegra_dma_isr\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [20 x i8] c"event_tegra_dma_isr\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [18 x i8] c"tegra_dmac_driver\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1679, i32 31 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 10, i32 1 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 27, i32 1 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1681, i32 11 }
@___asan_gen_.215 = private unnamed_addr constant [19 x i8] c"tegra_dma_of_match\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1661, i32 34 }
@___asan_gen_.218 = private unnamed_addr constant [21 x i8] c"tegra_dma_dev_pm_ops\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1655, i32 32 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1464, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1468, i32 49 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1470, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1474, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1502, i32 42 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1506, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1521, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1522, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1560, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1568, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1573, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1415, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1421, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 686, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant [40 x i8] c"../include/trace/events/tegra_apb_dma.h\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 44, i32 1 }
@___asan_gen_.327 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 108, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1323, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1059, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1063, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1096, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1115, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1123, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1157, i32 4 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1021, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 958, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1183, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1188, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1199, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1208, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1215, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1244, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1260, i32 4 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1294, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 564, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 427, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 475, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 341, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 761, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 817, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 928, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 716, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 722, i32 4 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1359, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant [23 x i8] c"tegra148_dma_chip_data\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1401, i32 41 }
@___asan_gen_.527 = private unnamed_addr constant [23 x i8] c"tegra114_dma_chip_data\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1392, i32 41 }
@___asan_gen_.530 = private unnamed_addr constant [22 x i8] c"tegra30_dma_chip_data\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1383, i32 41 }
@___asan_gen_.533 = private unnamed_addr constant [22 x i8] c"tegra20_dma_chip_data\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1374, i32 41 }
@___asan_gen_.536 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.542 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.543 = private constant [33 x i8] c"../drivers/dma/tegra20-apb-dma.c\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.543, i32 1635, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant [32 x i8] c"switch.table.get_transfer_param\00", align 1
@___asan_gen_.546 = private unnamed_addr constant [36 x i8] c"switch.table.get_transfer_param.124\00", align 1
@llvm.compiler.used = appending global [197 x ptr] [ptr @__UNIQUE_ID_author279, ptr @__UNIQUE_ID_description278, ptr @__UNIQUE_ID_file280, ptr @__UNIQUE_ID_license281, ptr @__bpf_trace_tp_map_tegra_dma_complete_cb, ptr @__bpf_trace_tp_map_tegra_dma_isr, ptr @__bpf_trace_tp_map_tegra_dma_tx_status, ptr @__event_tegra_dma_complete_cb, ptr @__event_tegra_dma_isr, ptr @__event_tegra_dma_tx_status, ptr @__exitcall_tegra_dmac_driver_exit, ptr @__initcall__kmod_tegra20_apb_dma__277_1689_tegra_dmac_driver_init6, ptr @__tracepoint_ptr_tegra_dma_complete_cb, ptr @__tracepoint_ptr_tegra_dma_isr, ptr @__tracepoint_ptr_tegra_dma_tx_status, ptr @__tracepoint_tegra_dma_complete_cb, ptr @__tracepoint_tegra_dma_isr, ptr @__tracepoint_tegra_dma_tx_status, ptr @event_class_tegra_dma_complete_cb, ptr @event_class_tegra_dma_isr, ptr @event_class_tegra_dma_tx_status, ptr @event_tegra_dma_complete_cb, ptr @event_tegra_dma_isr, ptr @event_tegra_dma_tx_status, ptr @get_bus_width._entry, ptr @get_bus_width._entry_ptr, ptr @get_transfer_param._entry, ptr @get_transfer_param._entry_ptr, ptr @handle_continuous_head_request._entry, ptr @handle_continuous_head_request._entry_ptr, ptr @tegra_dma_configure_for_next._entry, ptr @tegra_dma_configure_for_next._entry_ptr, ptr @tegra_dma_dev_suspend._entry, ptr @tegra_dma_dev_suspend._entry_ptr, ptr @tegra_dma_init_hw._entry, ptr @tegra_dma_init_hw._entry.46, ptr @tegra_dma_init_hw._entry_ptr, ptr @tegra_dma_init_hw._entry_ptr.48, ptr @tegra_dma_isr._entry, ptr @tegra_dma_isr._entry_ptr, ptr @tegra_dma_issue_pending._entry, ptr @tegra_dma_issue_pending._entry.117, ptr @tegra_dma_issue_pending._entry_ptr, ptr @tegra_dma_issue_pending._entry_ptr.119, ptr @tegra_dma_of_xlate._entry, ptr @tegra_dma_of_xlate._entry_ptr, ptr @tegra_dma_prep_dma_cyclic._entry, ptr @tegra_dma_prep_dma_cyclic._entry.81, ptr @tegra_dma_prep_dma_cyclic._entry.84, ptr @tegra_dma_prep_dma_cyclic._entry.87, ptr @tegra_dma_prep_dma_cyclic._entry.90, ptr @tegra_dma_prep_dma_cyclic._entry.93, ptr @tegra_dma_prep_dma_cyclic._entry.96, ptr @tegra_dma_prep_dma_cyclic._entry.98, ptr @tegra_dma_prep_dma_cyclic._entry_ptr, ptr @tegra_dma_prep_dma_cyclic._entry_ptr.100, ptr @tegra_dma_prep_dma_cyclic._entry_ptr.83, ptr @tegra_dma_prep_dma_cyclic._entry_ptr.86, ptr @tegra_dma_prep_dma_cyclic._entry_ptr.89, ptr @tegra_dma_prep_dma_cyclic._entry_ptr.92, ptr @tegra_dma_prep_dma_cyclic._entry_ptr.95, ptr @tegra_dma_prep_dma_cyclic._entry_ptr.97, ptr @tegra_dma_prep_slave_sg._entry, ptr @tegra_dma_prep_slave_sg._entry.59, ptr @tegra_dma_prep_slave_sg._entry.62, ptr @tegra_dma_prep_slave_sg._entry.65, ptr @tegra_dma_prep_slave_sg._entry.68, ptr @tegra_dma_prep_slave_sg._entry.71, ptr @tegra_dma_prep_slave_sg._entry_ptr, ptr @tegra_dma_prep_slave_sg._entry_ptr.61, ptr @tegra_dma_prep_slave_sg._entry_ptr.64, ptr @tegra_dma_prep_slave_sg._entry_ptr.67, ptr @tegra_dma_prep_slave_sg._entry_ptr.70, ptr @tegra_dma_prep_slave_sg._entry_ptr.73, ptr @tegra_dma_probe._entry, ptr @tegra_dma_probe._entry.22, ptr @tegra_dma_probe._entry.27, ptr @tegra_dma_probe._entry.34, ptr @tegra_dma_probe._entry.37, ptr @tegra_dma_probe._entry.40, ptr @tegra_dma_probe._entry_ptr, ptr @tegra_dma_probe._entry_ptr.24, ptr @tegra_dma_probe._entry_ptr.29, ptr @tegra_dma_probe._entry_ptr.36, ptr @tegra_dma_probe._entry_ptr.39, ptr @tegra_dma_probe._entry_ptr.43, ptr @tegra_dma_slave_config._entry, ptr @tegra_dma_slave_config._entry_ptr, ptr @tegra_dma_synchronize._entry, ptr @tegra_dma_synchronize._entry_ptr, ptr @tegra_dmac_driver_exit, ptr @str__tegra_apb_dma__trace_system_name, ptr @trace_event_fields_tegra_dma_tx_status, ptr @trace_event_type_funcs_tegra_dma_tx_status, ptr @print_fmt_tegra_dma_tx_status, ptr @trace_event_fields_tegra_dma_complete_cb, ptr @trace_event_type_funcs_tegra_dma_complete_cb, ptr @print_fmt_tegra_dma_complete_cb, ptr @trace_event_fields_tegra_dma_isr, ptr @trace_event_type_funcs_tegra_dma_isr, ptr @print_fmt_tegra_dma_isr, ptr @tegra_dmac_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @tegra_dma_of_match, ptr @tegra_dma_dev_pm_ops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @tegra_dma_probe.__key, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @tegra_dma_probe.__key.30, ptr @.str.31, ptr @tegra_dma_probe.__key.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @tegra148_dma_chip_data, ptr @tegra114_dma_chip_data, ptr @tegra30_dma_chip_data, ptr @tegra20_dma_chip_data, ptr @.str.122, ptr @.str.123, ptr @switch.table.get_transfer_param, ptr @switch.table.get_transfer_param.124], section "llvm.metadata"
@0 = internal global [142 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__tegra_apb_dma__trace_system_name to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_tegra_dma_tx_status to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_tegra_dma_tx_status to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_tegra_dma_tx_status to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tegra_dma_tx_status to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_tegra_dma_complete_cb to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_tegra_dma_complete_cb to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_tegra_dma_complete_cb to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tegra_dma_complete_cb to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_tegra_dma_isr to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_tegra_dma_isr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_tegra_dma_isr to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tegra_dma_isr to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dmac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_probe.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_probe.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_init_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_init_hw._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_prep_slave_sg._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_prep_slave_sg._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_prep_slave_sg._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_prep_slave_sg._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_prep_slave_sg._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_transfer_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_bus_width._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_prep_dma_cyclic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_prep_dma_cyclic._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_prep_dma_cyclic._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_prep_dma_cyclic._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_prep_dma_cyclic._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_prep_dma_cyclic._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_prep_dma_cyclic._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_prep_dma_cyclic._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_continuous_head_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_configure_for_next._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_slave_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_synchronize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_issue_pending._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_issue_pending._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_of_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra148_dma_chip_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra114_dma_chip_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_dma_chip_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_dma_chip_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_dev_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.get_transfer_param to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.get_transfer_param.124 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tegra_dma_tx_status(ptr nocapture readnone %__data, ptr noundef %dc, i32 noundef %cookie, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tegra_dma_tx_status, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void %2(ptr noundef %4, ptr noundef %dc, i32 noundef %cookie, ptr noundef %state) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tegra_dma_complete_cb(ptr nocapture readnone %__data, ptr noundef %dc, i32 noundef %count, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tegra_dma_complete_cb, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void %2(ptr noundef %4, ptr noundef %dc, i32 noundef %count, ptr noundef %ptr) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tegra_dma_isr(ptr nocapture readnone %__data, ptr noundef %dc, i32 noundef %irq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tegra_dma_isr, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void %2(ptr noundef %4, ptr noundef %dc, i32 noundef %irq) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_tegra_dma_tx_status(ptr noundef %__data, ptr nocapture noundef readonly %dc, i32 noundef %cookie, ptr noundef readonly %state) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !286

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !287

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %4, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_tegra_dma_tx_status.exit_crit_edge

if.end.trace_event_get_offsets_tegra_dma_tx_status.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %trace_event_get_offsets_tegra_dma_tx_status.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device.i, align 4
  %tobool.not.i35 = icmp eq ptr %8, null
  %spec.select = select i1 %tobool.not.i35, ptr @.str, ptr %8
  br label %trace_event_get_offsets_tegra_dma_tx_status.exit

trace_event_get_offsets_tegra_dma_tx_status.exit: ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_tegra_dma_tx_status.exit_crit_edge
  %cond.i = phi ptr [ %6, %if.end.trace_event_get_offsets_tegra_dma_tx_status.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call5.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #18
  %add = add i32 %call5.i, 21
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_tegra_dma_tx_status.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_tegra_dma_tx_status.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_tegra_dma_tx_status.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_tegra_dma_tx_status.exit
  %add.i = shl i32 %call5.i, 16
  %or.i = add i32 %add.i, 65556
  %__data_loc_chan = getelementptr inbounds %struct.trace_event_raw_tegra_dma_tx_status, ptr %call3, i32 0, i32 1
  %9 = ptrtoint ptr %__data_loc_chan to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %__data_loc_chan, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 20
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %11, i32 0, i32 1
  %init_name.i = getelementptr inbounds %struct.dma_chan_dev, ptr %11, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i36 = icmp eq ptr %13, null
  br i1 %tobool.not.i36, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i41

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

if.end.i41:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i41, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %17, %if.end.i41 ], [ %13, %if.end5.cond.end_crit_edge ]
  %call12 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #19
  %cookie13 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_tx_status, ptr %call3, i32 0, i32 2
  %18 = ptrtoint ptr %cookie13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cookie, ptr %cookie13, align 4
  %tobool14.not = icmp eq ptr %state, null
  br i1 %tobool14.not, label %cond.end.cond.end17_crit_edge, label %cond.true15

cond.end.cond.end17_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end17

cond.true15:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  %residue = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %19 = ptrtoint ptr %residue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %residue, align 4
  br label %cond.end17

cond.end17:                                       ; preds = %cond.true15, %cond.end.cond.end17_crit_edge
  %cond18 = phi i32 [ %20, %cond.true15 ], [ -1, %cond.end.cond.end17_crit_edge ]
  %residue19 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_tx_status, ptr %call3, i32 0, i32 3
  %21 = ptrtoint ptr %residue19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond18, ptr %residue19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %cond.end17, %trace_event_get_offsets_tegra_dma_tx_status.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_tegra_dma_tx_status(ptr noundef %__data, ptr nocapture noundef readonly %dc, i32 noundef %cookie, ptr noundef readonly %state) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !288
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !288
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_tegra_dma_tx_status.exit_crit_edge

entry.trace_event_get_offsets_tegra_dma_tx_status.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %trace_event_get_offsets_tegra_dma_tx_status.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select = select i1 %tobool.not.i, ptr @.str, ptr %7
  br label %trace_event_get_offsets_tegra_dma_tx_status.exit

trace_event_get_offsets_tegra_dma_tx_status.exit: ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_tegra_dma_tx_status.exit_crit_edge
  %cond.i = phi ptr [ %5, %entry.trace_event_get_offsets_tegra_dma_tx_status.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call5.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #18
  %add.i = shl i32 %call5.i, 16
  %or.i = add i32 %add.i, 65556
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %8 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %perf_events, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !276) #15
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add = add i32 %16, %10
  %17 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %18 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %19, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_tegra_dma_tx_status.exit.if.end_crit_edge

trace_event_get_offsets_tegra_dma_tx_status.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_tegra_dma_tx_status.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_tegra_dma_tx_status.exit
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %17, align 4
  %tobool.not.i59.not = icmp eq ptr %21, null
  br i1 %tobool.not.i59.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_tegra_dma_tx_status.exit.if.end_crit_edge
  %add12 = add i32 %call5.i, 32
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %22 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__regs, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #15
  %25 = ptrtoint ptr %24 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx.i, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %28 = ptrtoint ptr %27 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  %29 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx2.i, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !276) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  %31 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  %32 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_chan = getelementptr inbounds %struct.trace_event_raw_tegra_dma_tx_status, ptr %call13, i32 0, i32 1
  %33 = ptrtoint ptr %__data_loc_chan to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i, ptr %__data_loc_chan, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 20
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %35, i32 0, i32 1
  %init_name.i = getelementptr inbounds %struct.dma_chan_dev, ptr %35, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i60 = icmp eq ptr %37, null
  br i1 %tobool.not.i60, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %38 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device, align 4
  %tobool20.not = icmp eq ptr %39, null
  br i1 %tobool20.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i63

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

if.end.i63:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  %40 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i63, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %41, %if.end.i63 ], [ %37, %if.end16.cond.end_crit_edge ]
  %call24 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #19
  %cookie25 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_tx_status, ptr %call13, i32 0, i32 2
  %42 = ptrtoint ptr %cookie25 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %cookie, ptr %cookie25, align 4
  %tobool26.not = icmp eq ptr %state, null
  br i1 %tobool26.not, label %cond.end.cond.end29_crit_edge, label %cond.true27

cond.end.cond.end29_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end29

cond.true27:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  %residue = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %43 = ptrtoint ptr %residue to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %residue, align 4
  br label %cond.end29

cond.end29:                                       ; preds = %cond.true27, %cond.end.cond.end29_crit_edge
  %cond30 = phi i32 [ %44, %cond.true27 ], [ -1, %cond.end.cond.end29_crit_edge ]
  %residue31 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_tx_status, ptr %call13, i32 0, i32 3
  %45 = ptrtoint ptr %residue31 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %cond30, ptr %residue31, align 4
  %46 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rctx, align 4
  %48 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %47, ptr noundef %__data, i64 noundef 1, ptr noundef %49, ptr noundef %17, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %cond.end29, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_tegra_dma_complete_cb(ptr noundef %__data, ptr nocapture noundef readonly %dc, i32 noundef %count, ptr noundef %ptr) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !286

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !287

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %4, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_tegra_dma_complete_cb.exit_crit_edge

if.end.trace_event_get_offsets_tegra_dma_complete_cb.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %trace_event_get_offsets_tegra_dma_complete_cb.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device.i, align 4
  %tobool.not.i29 = icmp eq ptr %8, null
  %spec.select = select i1 %tobool.not.i29, ptr @.str, ptr %8
  br label %trace_event_get_offsets_tegra_dma_complete_cb.exit

trace_event_get_offsets_tegra_dma_complete_cb.exit: ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_tegra_dma_complete_cb.exit_crit_edge
  %cond.i = phi ptr [ %6, %if.end.trace_event_get_offsets_tegra_dma_complete_cb.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call5.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #18
  %add = add i32 %call5.i, 21
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_tegra_dma_complete_cb.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_tegra_dma_complete_cb.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_tegra_dma_complete_cb.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_tegra_dma_complete_cb.exit
  %add.i = shl i32 %call5.i, 16
  %or.i = add i32 %add.i, 65556
  %__data_loc_chan = getelementptr inbounds %struct.trace_event_raw_tegra_dma_complete_cb, ptr %call3, i32 0, i32 1
  %9 = ptrtoint ptr %__data_loc_chan to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %__data_loc_chan, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 20
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %11, i32 0, i32 1
  %init_name.i = getelementptr inbounds %struct.dma_chan_dev, ptr %11, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i30 = icmp eq ptr %13, null
  br i1 %tobool.not.i30, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i35

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

if.end.i35:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i35, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %17, %if.end.i35 ], [ %13, %if.end5.cond.end_crit_edge ]
  %call12 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #19
  %count13 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_complete_cb, ptr %call3, i32 0, i32 2
  %18 = ptrtoint ptr %count13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %count, ptr %count13, align 4
  %ptr14 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_complete_cb, ptr %call3, i32 0, i32 3
  %19 = ptrtoint ptr %ptr14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ptr, ptr %ptr14, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_tegra_dma_complete_cb.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_tegra_dma_complete_cb(ptr noundef %__data, ptr nocapture noundef readonly %dc, i32 noundef %count, ptr noundef %ptr) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !288
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !288
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_tegra_dma_complete_cb.exit_crit_edge

entry.trace_event_get_offsets_tegra_dma_complete_cb.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %trace_event_get_offsets_tegra_dma_complete_cb.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select = select i1 %tobool.not.i, ptr @.str, ptr %7
  br label %trace_event_get_offsets_tegra_dma_complete_cb.exit

trace_event_get_offsets_tegra_dma_complete_cb.exit: ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_tegra_dma_complete_cb.exit_crit_edge
  %cond.i = phi ptr [ %5, %entry.trace_event_get_offsets_tegra_dma_complete_cb.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call5.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #18
  %add.i = shl i32 %call5.i, 16
  %or.i = add i32 %add.i, 65556
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %8 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %perf_events, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !276) #15
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add = add i32 %16, %10
  %17 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %18 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %19, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_tegra_dma_complete_cb.exit.if.end_crit_edge

trace_event_get_offsets_tegra_dma_complete_cb.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_tegra_dma_complete_cb.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_tegra_dma_complete_cb.exit
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %17, align 4
  %tobool.not.i53.not = icmp eq ptr %21, null
  br i1 %tobool.not.i53.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_tegra_dma_complete_cb.exit.if.end_crit_edge
  %add12 = add i32 %call5.i, 32
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %22 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__regs, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #15
  %25 = ptrtoint ptr %24 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx.i, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %28 = ptrtoint ptr %27 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  %29 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx2.i, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !276) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  %31 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  %32 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_chan = getelementptr inbounds %struct.trace_event_raw_tegra_dma_complete_cb, ptr %call13, i32 0, i32 1
  %33 = ptrtoint ptr %__data_loc_chan to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i, ptr %__data_loc_chan, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 20
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %35, i32 0, i32 1
  %init_name.i = getelementptr inbounds %struct.dma_chan_dev, ptr %35, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i54 = icmp eq ptr %37, null
  br i1 %tobool.not.i54, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %38 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device, align 4
  %tobool20.not = icmp eq ptr %39, null
  br i1 %tobool20.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i57

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

if.end.i57:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  %40 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i57, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %41, %if.end.i57 ], [ %37, %if.end16.cond.end_crit_edge ]
  %call24 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #19
  %count25 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_complete_cb, ptr %call13, i32 0, i32 2
  %42 = ptrtoint ptr %count25 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %count, ptr %count25, align 4
  %ptr26 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_complete_cb, ptr %call13, i32 0, i32 3
  %43 = ptrtoint ptr %ptr26 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %ptr, ptr %ptr26, align 4
  %44 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rctx, align 4
  %46 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %45, ptr noundef %__data, i64 noundef 1, ptr noundef %47, ptr noundef %17, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_tegra_dma_isr(ptr noundef %__data, ptr nocapture noundef readonly %dc, i32 noundef %irq) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !286

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !287

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %4, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end.trace_event_get_offsets_tegra_dma_isr.exit_crit_edge

if.end.trace_event_get_offsets_tegra_dma_isr.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %trace_event_get_offsets_tegra_dma_isr.exit

dev_name.exit.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device.i, align 4
  %tobool.not.i26 = icmp eq ptr %8, null
  %spec.select = select i1 %tobool.not.i26, ptr @.str, ptr %8
  br label %trace_event_get_offsets_tegra_dma_isr.exit

trace_event_get_offsets_tegra_dma_isr.exit:       ; preds = %dev_name.exit.i, %if.end.trace_event_get_offsets_tegra_dma_isr.exit_crit_edge
  %cond.i = phi ptr [ %6, %if.end.trace_event_get_offsets_tegra_dma_isr.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call5.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #18
  %add = add i32 %call5.i, 17
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %trace_event_get_offsets_tegra_dma_isr.exit.cleanup_crit_edge, label %if.end5

trace_event_get_offsets_tegra_dma_isr.exit.cleanup_crit_edge: ; preds = %trace_event_get_offsets_tegra_dma_isr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %trace_event_get_offsets_tegra_dma_isr.exit
  %add.i = shl i32 %call5.i, 16
  %or.i = add i32 %add.i, 65552
  %__data_loc_chan = getelementptr inbounds %struct.trace_event_raw_tegra_dma_isr, ptr %call3, i32 0, i32 1
  %9 = ptrtoint ptr %__data_loc_chan to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i, ptr %__data_loc_chan, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 16
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %11, i32 0, i32 1
  %init_name.i = getelementptr inbounds %struct.dma_chan_dev, ptr %11, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i27 = icmp eq ptr %13, null
  br i1 %tobool.not.i27, label %dev_name.exit, label %if.end5.cond.end_crit_edge

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end5
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %tobool8.not = icmp eq ptr %15, null
  br i1 %tobool8.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i32

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

if.end.i32:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i32, %dev_name.exit.cond.end_crit_edge, %if.end5.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %17, %if.end.i32 ], [ %13, %if.end5.cond.end_crit_edge ]
  %call12 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #19
  %irq13 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_isr, ptr %call3, i32 0, i32 2
  %18 = ptrtoint ptr %irq13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %irq, ptr %irq13, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %trace_event_get_offsets_tegra_dma_isr.exit.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_tegra_dma_isr(ptr noundef %__data, ptr nocapture noundef readonly %dc, i32 noundef %irq) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !288
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !288
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %entry.trace_event_get_offsets_tegra_dma_isr.exit_crit_edge

entry.trace_event_get_offsets_tegra_dma_isr.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %trace_event_get_offsets_tegra_dma_isr.exit

dev_name.exit.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select = select i1 %tobool.not.i, ptr @.str, ptr %7
  br label %trace_event_get_offsets_tegra_dma_isr.exit

trace_event_get_offsets_tegra_dma_isr.exit:       ; preds = %dev_name.exit.i, %entry.trace_event_get_offsets_tegra_dma_isr.exit_crit_edge
  %cond.i = phi ptr [ %5, %entry.trace_event_get_offsets_tegra_dma_isr.exit_crit_edge ], [ %spec.select, %dev_name.exit.i ]
  %call5.i = tail call i32 @strlen(ptr noundef nonnull %cond.i) #18
  %add.i = shl i32 %call5.i, 16
  %or.i = add i32 %add.i, 65552
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %8 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %perf_events, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !276) #15
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add = add i32 %16, %10
  %17 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %18 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %19, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %trace_event_get_offsets_tegra_dma_isr.exit.if.end_crit_edge

trace_event_get_offsets_tegra_dma_isr.exit.if.end_crit_edge: ; preds = %trace_event_get_offsets_tegra_dma_isr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %trace_event_get_offsets_tegra_dma_isr.exit
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %17, align 4
  %tobool.not.i50.not = icmp eq ptr %21, null
  br i1 %tobool.not.i50.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %trace_event_get_offsets_tegra_dma_isr.exit.if.end_crit_edge
  %add12 = add i32 %call5.i, 28
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %22 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__regs, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #15
  %25 = ptrtoint ptr %24 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx.i, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %28 = ptrtoint ptr %27 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  %29 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx2.i, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !276) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  %31 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  %32 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_chan = getelementptr inbounds %struct.trace_event_raw_tegra_dma_isr, ptr %call13, i32 0, i32 1
  %33 = ptrtoint ptr %__data_loc_chan to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i, ptr %__data_loc_chan, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 16
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %35, i32 0, i32 1
  %init_name.i = getelementptr inbounds %struct.dma_chan_dev, ptr %35, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i51 = icmp eq ptr %37, null
  br i1 %tobool.not.i51, label %dev_name.exit, label %if.end16.cond.end_crit_edge

if.end16.cond.end_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

dev_name.exit:                                    ; preds = %if.end16
  %38 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %device, align 4
  %tobool20.not = icmp eq ptr %39, null
  br i1 %tobool20.not, label %dev_name.exit.cond.end_crit_edge, label %if.end.i54

dev_name.exit.cond.end_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

if.end.i54:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  %40 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i54, %dev_name.exit.cond.end_crit_edge, %if.end16.cond.end_crit_edge
  %cond = phi ptr [ @.str, %dev_name.exit.cond.end_crit_edge ], [ %41, %if.end.i54 ], [ %37, %if.end16.cond.end_crit_edge ]
  %call24 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %cond) #19
  %irq25 = getelementptr inbounds %struct.trace_event_raw_tegra_dma_isr, ptr %call13, i32 0, i32 2
  %42 = ptrtoint ptr %irq25 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %irq, ptr %irq25, align 4
  %43 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rctx, align 4
  %45 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %44, ptr noundef %__data, i64 noundef 1, ptr noundef %46, ptr noundef %17, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_tegra_dma_tx_status(ptr noundef %__data, ptr noundef %dc, i32 noundef %cookie, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %dc to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %cookie to i64
  %1 = ptrtoint ptr %state to i32
  %conv8 = zext i32 %1 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_tegra_dma_complete_cb(ptr noundef %__data, ptr noundef %dc, i32 noundef %count, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %dc to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %count to i64
  %1 = ptrtoint ptr %ptr to i32
  %conv8 = zext i32 %1 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_tegra_dma_isr(ptr noundef %__data, ptr noundef %dc, i32 noundef %irq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %dc to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %irq to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #15
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dmac_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_dmac_driver, ptr noundef null) #15
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_dmac_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_dmac_driver) #15
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
define internal i32 @trace_raw_output_tegra_dma_tx_status(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_chan = getelementptr inbounds %struct.trace_event_raw_tegra_dma_tx_status, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_chan, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %cookie = getelementptr inbounds %struct.trace_event_raw_tegra_dma_tx_status, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cookie, align 4
  %residue = getelementptr inbounds %struct.trace_event_raw_tegra_dma_tx_status, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %residue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %residue, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.7, ptr noundef %add.ptr, i32 noundef %5, i32 noundef %7) #15
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
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
define internal i32 @trace_raw_output_tegra_dma_complete_cb(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_chan = getelementptr inbounds %struct.trace_event_raw_tegra_dma_complete_cb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_chan, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %count = getelementptr inbounds %struct.trace_event_raw_tegra_dma_complete_cb, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  %ptr = getelementptr inbounds %struct.trace_event_raw_tegra_dma_complete_cb, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ptr, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.12, ptr noundef %add.ptr, i32 noundef %5, ptr noundef %7) #15
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_tegra_dma_isr(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_chan = getelementptr inbounds %struct.trace_event_raw_tegra_dma_isr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_chan, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  %irq = getelementptr inbounds %struct.trace_event_raw_tegra_dma_isr, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.14, ptr noundef %add.ptr, i32 noundef %5) #15
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
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
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dma_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #15
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 332) #15
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %4, i32 432) #15
  %retval.0.i = select i1 %3, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %retval.0.i, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup130_crit_edge, label %if.end

entry.cleanup130_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup130

if.end:                                           ; preds = %entry
  %dev5 = getelementptr inbounds %struct.tegra_dma, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev5, align 4
  %chip_data = getelementptr inbounds %struct.tegra_dma, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %chip_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %chip_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #15
  %base_addr = getelementptr inbounds %struct.tegra_dma, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %base_addr, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %call6 to i32
  br label %cleanup130

if.end12:                                         ; preds = %if.end
  %call14 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #15
  %dma_clk = getelementptr inbounds %struct.tegra_dma, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %dma_clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call14, ptr %dma_clk, align 4
  %cmp.i235 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i235, label %do.end, label %if.end21

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #20
  %11 = ptrtoint ptr %dma_clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_clk, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup130

if.end21:                                         ; preds = %if.end12
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #15
  %rst = getelementptr inbounds %struct.tegra_dma, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i, ptr %rst, align 4
  %cmp.i236 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i236, label %do.end29, label %do.body34

do.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #20
  %15 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rst, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %cleanup130

do.body34:                                        ; preds = %if.end21
  %global_lock = getelementptr inbounds %struct.tegra_dma, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %global_lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @tegra_dma_probe.__key, i16 noundef signext 3) #15
  %18 = ptrtoint ptr %dma_clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_clk, align 4
  %call39 = tail call i32 @clk_prepare(ptr noundef %19) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %do.body34.cleanup130_crit_edge

do.body34.cleanup130_crit_edge:                   ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup130

if.end42:                                         ; preds = %do.body34
  %call43 = tail call fastcc i32 @tegra_dma_init_hw(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.err_clk_unprepare_crit_edge

if.end42.err_clk_unprepare_crit_edge:             ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_clk_unprepare

if.end46:                                         ; preds = %if.end42
  tail call void @pm_runtime_irq_safe(ptr noundef %dev) #15
  tail call void @pm_runtime_enable(ptr noundef %dev) #15
  %channels = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %channels, ptr %prev.i, align 4
  %22 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp249.not = icmp eq i32 %23, 0
  br i1 %cmp249.not, label %if.end46.for.end_crit_edge, label %for.body.lr.ph

if.end46.for.end_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end46
  %channel_reg_size = getelementptr inbounds %struct.tegra_dma_chip_data, ptr %call, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0250 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tegra_dma, ptr %call.i, i32 0, i32 8, i32 %i.0250
  %24 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base_addr, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 4096
  %26 = ptrtoint ptr %channel_reg_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %channel_reg_size, align 4
  %mul = mul i32 %27, %i.0250
  %add.ptr52 = getelementptr i8, ptr %add.ptr, i32 %mul
  %chan_addr = getelementptr %struct.tegra_dma, ptr %call.i, i32 0, i32 8, i32 %i.0250, i32 4
  %28 = ptrtoint ptr %chan_addr to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr52, ptr %chan_addr, align 4
  %call53 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.0250) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %for.body.err_pm_disable_crit_edge, label %if.end56

for.body.err_pm_disable_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_pm_disable

if.end56:                                         ; preds = %for.body
  %name = getelementptr %struct.tegra_dma, ptr %call.i, i32 0, i32 8, i32 %i.0250, i32 1
  %call57 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 12, ptr noundef nonnull @.str.26, i32 noundef %i.0250)
  %call.i237 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call53, ptr noundef nonnull @tegra_dma_isr, ptr noundef null, i32 noundef 0, ptr noundef %name, ptr noundef %arrayidx) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i237)
  %tobool62.not = icmp eq i32 %call.i237, 0
  br i1 %tobool62.not, label %if.end68, label %do.end66

do.end66:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %call.i237, i32 noundef %i.0250) #20
  br label %err_pm_disable

if.end68:                                         ; preds = %if.end56
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %arrayidx, align 4
  %cookie.i = getelementptr inbounds %struct.dma_chan, ptr %arrayidx, i32 0, i32 2
  %30 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %cookie.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %arrayidx, i32 0, i32 3
  %31 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %completed_cookie.i, align 4
  %device_node = getelementptr inbounds %struct.dma_chan, ptr %arrayidx, i32 0, i32 8
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i, align 4
  %call.i.i239 = tail call zeroext i1 @__list_add_valid(ptr noundef %device_node, ptr noundef %33, ptr noundef %channels) #15
  br i1 %call.i.i239, label %if.end.i.i, label %if.end68.for.inc_crit_edge

if.end68.for.inc_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end.i.i:                                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %device_node, ptr %prev.i, align 4
  %35 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %channels, ptr %device_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.dma_chan, ptr %arrayidx, i32 0, i32 8, i32 1
  %36 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %device_node, ptr %33, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.end68.for.inc_crit_edge
  %tdma74 = getelementptr %struct.tegra_dma, ptr %call.i, i32 0, i32 8, i32 %i.0250, i32 7
  %38 = ptrtoint ptr %tdma74 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %tdma74, align 4
  %id = getelementptr %struct.tegra_dma, ptr %call.i, i32 0, i32 8, i32 %i.0250, i32 3
  %39 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %i.0250, ptr %id, align 4
  %slave_id = getelementptr %struct.tegra_dma, ptr %call.i, i32 0, i32 8, i32 %i.0250, i32 15
  %40 = ptrtoint ptr %slave_id to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 32, ptr %slave_id, align 4
  %tasklet = getelementptr %struct.tegra_dma, ptr %call.i, i32 0, i32 8, i32 %i.0250, i32 14
  tail call void @tasklet_setup(ptr noundef %tasklet, ptr noundef nonnull @tegra_dma_tasklet) #15
  %lock = getelementptr %struct.tegra_dma, ptr %call.i, i32 0, i32 8, i32 %i.0250, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.31, ptr noundef nonnull @tegra_dma_probe.__key.30, i16 noundef signext 3) #15
  %wq = getelementptr %struct.tegra_dma, ptr %call.i, i32 0, i32 8, i32 %i.0250, i32 18
  tail call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str.33, ptr noundef nonnull @tegra_dma_probe.__key.32) #15
  %pending_sg_req = getelementptr %struct.tegra_dma, ptr %call.i, i32 0, i32 8, i32 %i.0250, i32 10
  %41 = ptrtoint ptr %pending_sg_req to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %pending_sg_req, ptr %pending_sg_req, align 4
  %prev.i240 = getelementptr %struct.tegra_dma, ptr %call.i, i32 0, i32 8, i32 %i.0250, i32 10, i32 1
  %42 = ptrtoint ptr %prev.i240 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %pending_sg_req, ptr %prev.i240, align 4
  %free_sg_req = getelementptr %struct.tegra_dma, ptr %call.i, i32 0, i32 8, i32 %i.0250, i32 9
  %43 = ptrtoint ptr %free_sg_req to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %free_sg_req, ptr %free_sg_req, align 4
  %prev.i241 = getelementptr %struct.tegra_dma, ptr %call.i, i32 0, i32 8, i32 %i.0250, i32 9, i32 1
  %44 = ptrtoint ptr %prev.i241 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %free_sg_req, ptr %prev.i241, align 4
  %free_dma_desc = getelementptr %struct.tegra_dma, ptr %call.i, i32 0, i32 8, i32 %i.0250, i32 11
  %45 = ptrtoint ptr %free_dma_desc to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %free_dma_desc, ptr %free_dma_desc, align 4
  %prev.i242 = getelementptr %struct.tegra_dma, ptr %call.i, i32 0, i32 8, i32 %i.0250, i32 11, i32 1
  %46 = ptrtoint ptr %prev.i242 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %free_dma_desc, ptr %prev.i242, align 4
  %cb_desc = getelementptr %struct.tegra_dma, ptr %call.i, i32 0, i32 8, i32 %i.0250, i32 12
  %47 = ptrtoint ptr %cb_desc to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %cb_desc, ptr %cb_desc, align 4
  %prev.i243 = getelementptr %struct.tegra_dma, ptr %call.i, i32 0, i32 8, i32 %i.0250, i32 12, i32 1
  %48 = ptrtoint ptr %prev.i243 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %cb_desc, ptr %prev.i243, align 4
  %inc = add nuw i32 %i.0250, 1
  %49 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %call, align 4
  %cmp = icmp ult i32 %inc, %50
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end46.for.end_crit_edge
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #15
  tail call void @_set_bit(i32 noundef 9, ptr noundef %cap_mask) #15
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #15
  %global_pause_count = getelementptr inbounds %struct.tegra_dma, ptr %call.i, i32 0, i32 7
  %51 = ptrtoint ptr %global_pause_count to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %global_pause_count, align 4
  %dev90 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 15
  %52 = ptrtoint ptr %dev90 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %dev, ptr %dev90, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 27
  %53 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @tegra_dma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 29
  %54 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @tegra_dma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 39
  %55 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @tegra_dma_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 40
  %56 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @tegra_dma_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 19
  %57 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 278, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 20
  %58 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 278, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 21
  %59 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 6, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 26
  %60 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 2, ptr %residue_granularity, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 44
  %61 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @tegra_dma_slave_config, ptr %device_config, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 47
  %62 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @tegra_dma_terminate_all, ptr %device_terminate_all, align 4
  %device_synchronize = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 48
  %63 = ptrtoint ptr %device_synchronize to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @tegra_dma_synchronize, ptr %device_synchronize, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 49
  %64 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @tegra_dma_tx_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 50
  %65 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @tegra_dma_issue_pending, ptr %device_issue_pending, align 4
  %call105 = tail call i32 @dma_async_device_register(ptr noundef nonnull %call.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %cmp106 = icmp slt i32 %call105, 0
  br i1 %cmp106, label %do.end110, label %if.end112

do.end110:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %call105) #20
  br label %err_pm_disable

if.end112:                                        ; preds = %for.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %66 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %of_node, align 8
  %call114 = tail call i32 @of_dma_controller_register(ptr noundef %67, ptr noundef nonnull @tegra_dma_of_xlate, ptr noundef nonnull %call.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp115 = icmp slt i32 %call114, 0
  br i1 %cmp115, label %do.end119, label %do.end124

do.end119:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %call114) #20
  tail call void @dma_async_device_unregister(ptr noundef nonnull %call.i) #15
  br label %err_pm_disable

do.end124:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #17
  %68 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %69) #20
  br label %cleanup130

err_pm_disable:                                   ; preds = %do.end119, %do.end110, %do.end66, %for.body.err_pm_disable_crit_edge
  %ret.1 = phi i32 [ %call105, %do.end110 ], [ %call114, %do.end119 ], [ %call.i237, %do.end66 ], [ %call53, %for.body.err_pm_disable_crit_edge ]
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #15
  br label %err_clk_unprepare

err_clk_unprepare:                                ; preds = %err_pm_disable, %if.end42.err_clk_unprepare_crit_edge
  %ret.2 = phi i32 [ %call43, %if.end42.err_clk_unprepare_crit_edge ], [ %ret.1, %err_pm_disable ]
  %70 = ptrtoint ptr %dma_clk to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dma_clk, align 4
  tail call void @clk_unprepare(ptr noundef %71) #15
  br label %cleanup130

cleanup130:                                       ; preds = %err_clk_unprepare, %do.end124, %do.body34.cleanup130_crit_edge, %do.end29, %do.end, %if.then9, %entry.cleanup130_crit_edge
  %retval.0 = phi i32 [ %9, %if.then9 ], [ %13, %do.end ], [ %17, %do.end29 ], [ %ret.2, %err_clk_unprepare ], [ 0, %do.end124 ], [ -12, %entry.cleanup130_crit_edge ], [ %call39, %do.body34.cleanup130_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dma_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  tail call void @of_dma_controller_free(ptr noundef %3) #15
  tail call void @dma_async_device_unregister(ptr noundef %1) #15
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #15
  %dma_clk = getelementptr inbounds %struct.tegra_dma, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dma_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_clk, align 4
  tail call void @clk_unprepare(ptr noundef %5) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_dma_init_hw(ptr nocapture noundef readonly %tdma) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rst = getelementptr inbounds %struct.tegra_dma, ptr %tdma, i32 0, i32 3
  %0 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rst, align 4
  %call = tail call i32 @reset_control_assert(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.tegra_dma, ptr %tdma, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.44, i32 noundef %call) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma_clk = getelementptr inbounds %struct.tegra_dma, ptr %tdma, i32 0, i32 2
  %4 = ptrtoint ptr %dma_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %dev7 = getelementptr inbounds %struct.tegra_dma, ptr %tdma, i32 0, i32 1
  %6 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.47, i32 noundef %call1) #20
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 429496) #15
  %9 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rst, align 4
  %call10 = tail call i32 @reset_control_deassert(ptr noundef %10) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !289
  tail call void @arm_heavy_mb() #15
  %base_addr.i = getelementptr inbounds %struct.tegra_dma, ptr %tdma, i32 0, i32 5
  %11 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 128) #15, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !289
  tail call void @arm_heavy_mb() #15
  %13 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #15, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !289
  tail call void @arm_heavy_mb() #15
  %15 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %16, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 -1) #15, !srcloc !290
  %17 = ptrtoint ptr %dma_clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dma_clk, align 4
  tail call void @clk_disable(ptr noundef %18) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end6, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call1, %do.end6 ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_irq_safe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dma_isr(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tegra_dma_channel, ptr %dev_id, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %lock) #15
  tail call fastcc void @trace_tegra_dma_isr(ptr noundef %dev_id, i32 noundef %irq)
  %chan_addr.i = getelementptr inbounds %struct.tegra_dma_channel, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !291
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !292
  %and = and i32 %3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !293
  tail call void @arm_heavy_mb() #15
  %4 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %2) #15, !srcloc !290
  %isr_handler = getelementptr inbounds %struct.tegra_dma_channel, ptr %dev_id, i32 0, i32 13
  %6 = ptrtoint ptr %isr_handler to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %isr_handler, align 4
  tail call void %7(ptr noundef %dev_id, i1 noundef zeroext false) #15
  %state.i = getelementptr inbounds %struct.tegra_dma_channel, ptr %dev_id, i32 0, i32 14, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.tasklet_schedule.exit_crit_edge

if.then.tasklet_schedule.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %tasklet = getelementptr inbounds %struct.tegra_dma_channel, ptr %dev_id, i32 0, i32 14
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #15
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %if.then.tasklet_schedule.exit_crit_edge
  %wq = getelementptr inbounds %struct.tegra_dma_channel, ptr %dev_id, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  tail call void @_raw_spin_unlock(ptr noundef %lock) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef %lock) #15
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %dev_id, i32 0, i32 5
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %9, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %device.i, ptr noundef nonnull @.str.49, i32 noundef %3) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %tasklet_schedule.exit
  %retval.0 = phi i32 [ 1, %tasklet_schedule.exit ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_dma_tasklet(ptr noundef %t) #0 align 64 {
entry:
  %dummy_result.i = alloca %struct.dmaengine_result, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -180
  %lock = getelementptr i8, ptr %t, i32 -92
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %cb_desc = getelementptr i8, ptr %t, i32 -12
  %0 = ptrtoint ptr %cb_desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cb_desc, align 4
  %cmp.i.not50 = icmp eq ptr %1, %cb_desc
  br i1 %cmp.i.not50, label %entry.while.end31_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end31_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end31

while.body:                                       ; preds = %do.body18.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %21, %do.body18.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %flags.051 = phi i32 [ %call26, %do.body18.while.body_crit_edge ], [ %call3, %entry.while.body_crit_edge ]
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #15
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %callback.i = getelementptr i8, ptr %2, i32 -104
  %11 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %callback.i, align 4
  %callback_result.i = getelementptr i8, ptr %2, i32 -100
  %13 = ptrtoint ptr %callback_result.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %callback_result.i, align 4
  %callback_param.i = getelementptr i8, ptr %2, i32 -96
  %15 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %callback_param.i, align 4
  %cb_count11 = getelementptr i8, ptr %2, i32 8
  %17 = ptrtoint ptr %cb_count11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cb_count11, align 4
  store i32 0, ptr %cb_count11, align 4
  call fastcc void @trace_tegra_dma_complete_cb(ptr noundef %add.ptr, i32 noundef %18, ptr noundef %12)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.051) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool15.not48 = icmp eq i32 %18, 0
  br i1 %tobool15.not48, label %list_del.exit.do.body18_crit_edge, label %while.body16.lr.ph

list_del.exit.do.body18_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body18

while.body16.lr.ph:                               ; preds = %list_del.exit
  %tobool.not.i = icmp eq ptr %14, null
  %tobool4.not.i = icmp eq ptr %12, null
  br label %while.body16

while.body16:                                     ; preds = %dmaengine_desc_callback_invoke.exit.while.body16_crit_edge, %while.body16.lr.ph
  %cb_count.049 = phi i32 [ %18, %while.body16.lr.ph ], [ %dec, %dmaengine_desc_callback_invoke.exit.while.body16_crit_edge ]
  %dec = add i32 %cb_count.049, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i) #15
  %19 = ptrtoint ptr %dummy_result.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %dummy_result.i, align 8
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %while.body16
  call void @__sanitizer_cov_trace_pc() #17
  call void %14(ptr noundef %16, ptr noundef nonnull %dummy_result.i) #15
  br label %dmaengine_desc_callback_invoke.exit

if.else.i:                                        ; preds = %while.body16
  br i1 %tobool4.not.i, label %if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge, label %if.then5.i

if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dmaengine_desc_callback_invoke.exit

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  call void %12(ptr noundef %16) #15
  br label %dmaengine_desc_callback_invoke.exit

dmaengine_desc_callback_invoke.exit:              ; preds = %if.then5.i, %if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge, %if.then.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i) #15
  %tobool15.not = icmp eq i32 %dec, 0
  br i1 %tobool15.not, label %dmaengine_desc_callback_invoke.exit.do.body18_crit_edge, label %dmaengine_desc_callback_invoke.exit.while.body16_crit_edge

dmaengine_desc_callback_invoke.exit.while.body16_crit_edge: ; preds = %dmaengine_desc_callback_invoke.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body16

dmaengine_desc_callback_invoke.exit.do.body18_crit_edge: ; preds = %dmaengine_desc_callback_invoke.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body18

do.body18:                                        ; preds = %dmaengine_desc_callback_invoke.exit.do.body18_crit_edge, %list_del.exit.do.body18_crit_edge
  %call26 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %20 = ptrtoint ptr %cb_desc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %cb_desc, align 4
  %cmp.i.not = icmp eq ptr %21, %cb_desc
  br i1 %cmp.i.not, label %do.body18.while.end31_crit_edge, label %do.body18.while.body_crit_edge

do.body18.while.body_crit_edge:                   ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

do.body18.while.end31_crit_edge:                  ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end31

while.end31:                                      ; preds = %do.body18.while.end31_crit_edge, %entry.while.end31_crit_edge
  %flags.0.lcssa = phi i32 [ %call3, %entry.while.end31_crit_edge ], [ %call26, %do.body18.while.end31_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0.lcssa) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @tegra_dma_alloc_chan_resources(ptr nocapture noundef writeonly %dc) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie.i = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 2
  %0 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %cookie.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 3
  %1 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %completed_cookie.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_dma_free_chan_resources(ptr noundef %dc) #0 align 64 {
entry:
  %dma_desc_list = alloca %struct.list_head, align 4
  %sg_req_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dma_desc_list) #15
  %0 = getelementptr inbounds %struct.list_head, ptr %dma_desc_list, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sg_req_list) #15
  %1 = getelementptr inbounds %struct.list_head, ptr %sg_req_list, i32 0, i32 1
  %2 = ptrtoint ptr %dma_desc_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %dma_desc_list, ptr %dma_desc_list, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dma_desc_list, ptr %0, align 4
  %4 = ptrtoint ptr %sg_req_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %sg_req_list, ptr %sg_req_list, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sg_req_list, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_dma_free_chan_resources.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_dma_free_chan_resources, %do.end)) #15
          to label %if.then [label %do.end], !srcloc !294

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %7, i32 0, i32 1
  %id = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 3
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_dma_free_chan_resources.__UNIQUE_ID_ddebug276, ptr noundef %device.i, ptr noundef nonnull @.str.56, i32 noundef %9) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call6 = call i32 @tegra_dma_terminate_all(ptr noundef %dc)
  %tasklet = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 14
  call void @tasklet_kill(ptr noundef %tasklet) #15
  %pending_sg_req = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 10
  %10 = ptrtoint ptr %pending_sg_req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %pending_sg_req, align 4
  %cmp.i.not.i = icmp eq ptr %11, %pending_sg_req
  br i1 %cmp.i.not.i, label %do.end.list_splice_init.exit_crit_edge, label %if.then.i

do.end.list_splice_init.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %sg_req_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sg_req_list, align 4
  %prev2.i.i = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %sg_req_list, ptr %prev3.i.i, align 4
  store ptr %11, ptr %sg_req_list, align 4
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %13, ptr %15, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev6.i.i, align 4
  %19 = ptrtoint ptr %pending_sg_req to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %pending_sg_req, ptr %pending_sg_req, align 4
  store ptr %pending_sg_req, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %do.end.list_splice_init.exit_crit_edge
  %free_sg_req = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 9
  %20 = ptrtoint ptr %free_sg_req to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %free_sg_req, align 4
  %cmp.i.not.i37 = icmp eq ptr %21, %free_sg_req
  br i1 %cmp.i.not.i37, label %list_splice_init.exit.list_splice_init.exit42_crit_edge, label %if.then.i41

list_splice_init.exit.list_splice_init.exit42_crit_edge: ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_splice_init.exit42

if.then.i41:                                      ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %sg_req_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sg_req_list, align 4
  %prev2.i.i38 = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 9, i32 1
  %24 = ptrtoint ptr %prev2.i.i38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev2.i.i38, align 4
  %prev3.i.i39 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i39 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %sg_req_list, ptr %prev3.i.i39, align 4
  store ptr %21, ptr %sg_req_list, align 4
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %23, ptr %25, align 4
  %prev6.i.i40 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %prev6.i.i40 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev6.i.i40, align 4
  %29 = ptrtoint ptr %free_sg_req to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %free_sg_req, ptr %free_sg_req, align 4
  store ptr %free_sg_req, ptr %prev2.i.i38, align 4
  br label %list_splice_init.exit42

list_splice_init.exit42:                          ; preds = %if.then.i41, %list_splice_init.exit.list_splice_init.exit42_crit_edge
  %free_dma_desc = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 11
  %30 = ptrtoint ptr %free_dma_desc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %free_dma_desc, align 4
  %cmp.i.not.i43 = icmp eq ptr %31, %free_dma_desc
  br i1 %cmp.i.not.i43, label %list_splice_init.exit42.list_splice_init.exit48_crit_edge, label %if.then.i47

list_splice_init.exit42.list_splice_init.exit48_crit_edge: ; preds = %list_splice_init.exit42
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_splice_init.exit48

if.then.i47:                                      ; preds = %list_splice_init.exit42
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %dma_desc_list to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dma_desc_list, align 4
  %prev2.i.i44 = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 11, i32 1
  %34 = ptrtoint ptr %prev2.i.i44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev2.i.i44, align 4
  %prev3.i.i45 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %36 = ptrtoint ptr %prev3.i.i45 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %dma_desc_list, ptr %prev3.i.i45, align 4
  store ptr %31, ptr %dma_desc_list, align 4
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %33, ptr %35, align 4
  %prev6.i.i46 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %38 = ptrtoint ptr %prev6.i.i46 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev6.i.i46, align 4
  %39 = ptrtoint ptr %free_dma_desc to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %free_dma_desc, ptr %free_dma_desc, align 4
  store ptr %free_dma_desc, ptr %prev2.i.i44, align 4
  br label %list_splice_init.exit48

list_splice_init.exit48:                          ; preds = %if.then.i47, %list_splice_init.exit42.list_splice_init.exit48_crit_edge
  %cb_desc = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 12
  %40 = ptrtoint ptr %cb_desc to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %cb_desc, ptr %cb_desc, align 4
  %prev.i49 = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 12, i32 1
  %41 = ptrtoint ptr %prev.i49 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %cb_desc, ptr %prev.i49, align 4
  %config_init = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 2
  %42 = ptrtoint ptr %config_init to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %config_init, align 4
  %isr_handler = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 13
  %43 = ptrtoint ptr %isr_handler to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %isr_handler, align 4
  %44 = ptrtoint ptr %dma_desc_list to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %dma_desc_list, align 4
  %cmp.i.not60 = icmp eq ptr %45, %dma_desc_list
  br i1 %cmp.i.not60, label %list_splice_init.exit48.while.cond12.preheader_crit_edge, label %list_splice_init.exit48.while.body_crit_edge

list_splice_init.exit48.while.body_crit_edge:     ; preds = %list_splice_init.exit48
  br label %while.body

list_splice_init.exit48.while.cond12.preheader_crit_edge: ; preds = %list_splice_init.exit48
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond12.preheader

while.cond12.preheader:                           ; preds = %list_del.exit.while.cond12.preheader_crit_edge, %list_splice_init.exit48.while.cond12.preheader_crit_edge
  %46 = ptrtoint ptr %sg_req_list to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %sg_req_list, align 4
  %cmp.i51.not61 = icmp eq ptr %47, %sg_req_list
  br i1 %cmp.i51.not61, label %while.cond12.preheader.while.end23_crit_edge, label %while.cond12.preheader.while.body17_crit_edge

while.cond12.preheader.while.body17_crit_edge:    ; preds = %while.cond12.preheader
  br label %while.body17

while.cond12.preheader.while.end23_crit_edge:     ; preds = %while.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end23

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %list_splice_init.exit48.while.body_crit_edge
  %48 = phi ptr [ %58, %list_del.exit.while.body_crit_edge ], [ %45, %list_splice_init.exit48.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %48, i32 -112
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %48) #15
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %48, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev1.i.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %50, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %55 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 256 to ptr), ptr %48, align 4
  %prev.i50 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i50 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i50, align 4
  call void @kfree(ptr noundef %add.ptr) #15
  %57 = ptrtoint ptr %dma_desc_list to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %dma_desc_list, align 4
  %cmp.i.not = icmp eq ptr %58, %dma_desc_list
  br i1 %cmp.i.not, label %list_del.exit.while.cond12.preheader_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

list_del.exit.while.cond12.preheader_crit_edge:   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond12.preheader

while.body17:                                     ; preds = %list_del.exit58.while.body17_crit_edge, %while.cond12.preheader.while.body17_crit_edge
  %59 = phi ptr [ %69, %list_del.exit58.while.body17_crit_edge ], [ %47, %while.cond12.preheader.while.body17_crit_edge ]
  %add.ptr21 = getelementptr i8, ptr %59, i32 -32
  %call.i.i53 = call zeroext i1 @__list_del_entry_valid(ptr noundef %59) #15
  br i1 %call.i.i53, label %if.end.i.i56, label %while.body17.list_del.exit58_crit_edge

while.body17.list_del.exit58_crit_edge:           ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit58

if.end.i.i56:                                     ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i54 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i54 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i.i54, align 4
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %59, align 4
  %prev1.i.i.i55 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev1.i.i.i55 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev1.i.i.i55, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %63, ptr %61, align 4
  br label %list_del.exit58

list_del.exit58:                                  ; preds = %if.end.i.i56, %while.body17.list_del.exit58_crit_edge
  %66 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 256 to ptr), ptr %59, align 4
  %prev.i57 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i57 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i57, align 4
  call void @kfree(ptr noundef %add.ptr21) #15
  %68 = ptrtoint ptr %sg_req_list to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %sg_req_list, align 4
  %cmp.i51.not = icmp eq ptr %69, %sg_req_list
  br i1 %cmp.i51.not, label %list_del.exit58.while.end23_crit_edge, label %list_del.exit58.while.body17_crit_edge

list_del.exit58.while.body17_crit_edge:           ; preds = %list_del.exit58
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body17

list_del.exit58.while.end23_crit_edge:            ; preds = %list_del.exit58
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end23

while.end23:                                      ; preds = %list_del.exit58.while.end23_crit_edge, %while.cond12.preheader.while.end23_crit_edge
  %slave_id = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 15
  %70 = ptrtoint ptr %slave_id to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 32, ptr %slave_id, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sg_req_list) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dma_desc_list) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra_dma_prep_slave_sg(ptr noundef %dc, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %flags, ptr nocapture noundef readnone %context) #0 align 64 {
entry:
  %csr = alloca i32, align 4
  %apb_ptr = alloca i32, align 4
  %apb_seq = alloca i32, align 4
  %slave_bw = alloca i32, align 4
  %req_list = alloca %struct.list_head, align 4
  %burst_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %csr) #15
  %0 = ptrtoint ptr %csr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %csr, align 4, !annotation !288
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %apb_ptr) #15
  %1 = ptrtoint ptr %apb_ptr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %apb_ptr, align 4, !annotation !288
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %apb_seq) #15
  %2 = ptrtoint ptr %apb_seq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %apb_seq, align 4, !annotation !288
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slave_bw) #15
  %3 = ptrtoint ptr %slave_bw to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %slave_bw, align 4, !annotation !288
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req_list) #15
  %4 = getelementptr inbounds %struct.list_head, ptr %req_list, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %burst_size) #15
  %5 = ptrtoint ptr %burst_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %burst_size, align 4, !annotation !288
  %config_init = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 2
  %6 = ptrtoint ptr %config_init to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %config_init, align 4, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %9, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.57) #20
  br label %cleanup128

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp = icmp eq i32 %sg_len, 0
  br i1 %cmp, label %do.end5, label %if.end7

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i205 = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
  %10 = ptrtoint ptr %dev.i205 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i205, align 4
  %device.i206 = getelementptr inbounds %struct.dma_chan_dev, ptr %11, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i206, ptr noundef nonnull @.str.60, i32 noundef 0) #20
  br label %cleanup128

if.end7:                                          ; preds = %if.end
  %call8 = call fastcc i32 @get_transfer_param(ptr noundef %dc, i32 noundef %direction, ptr noundef nonnull %apb_ptr, ptr noundef nonnull %apb_seq, ptr noundef nonnull %csr, ptr noundef nonnull %burst_size, ptr noundef nonnull %slave_bw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.cleanup128_crit_edge, label %if.end11

if.end7.cleanup128_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup128

if.end11:                                         ; preds = %if.end7
  %12 = ptrtoint ptr %req_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %req_list, ptr %req_list, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %req_list, ptr %4, align 4
  %14 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %csr, align 4
  %or13 = or i32 %15, 134217728
  store i32 %or13, ptr %csr, align 4
  %slave_id = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 15
  %16 = ptrtoint ptr %slave_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slave_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %17)
  %cmp14.not = icmp eq i32 %17, 32
  br i1 %cmp14.not, label %if.end11.if.end19_crit_edge, label %if.then15

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  %shl = shl i32 %17, 16
  %or16 = or i32 %15, %shl
  %or18 = or i32 %or16, 136314880
  %18 = ptrtoint ptr %csr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or18, ptr %csr, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end11.if.end19_crit_edge
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %land.end, label %if.then21

if.then21:                                        ; preds = %if.end19
  %19 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %csr, align 4
  %or22 = or i32 %20, 1073741824
  store i32 %or22, ptr %csr, align 4
  %21 = ptrtoint ptr %apb_seq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %apb_seq, align 4
  %or62 = or i32 %22, 65536
  store i32 %or62, ptr %apb_seq, align 4
  %call63 = call fastcc ptr @tegra_dma_desc_get(ptr noundef %dc)
  %tobool64.not = icmp eq ptr %call63, null
  br i1 %tobool64.not, label %do.end68, label %for.body.lr.ph

land.end:                                         ; preds = %if.end19
  %.b204 = load i1, ptr @tegra_dma_prep_slave_sg.__already_done, align 1
  br i1 %.b204, label %land.end.cleanup128_crit_edge, label %if.then28, !prof !286

land.end.cleanup128_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup128

if.then28:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @tegra_dma_prep_slave_sg.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 1088, i32 noundef 9, ptr noundef null) #15
  br label %cleanup128

do.end68:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i207 = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
  %23 = ptrtoint ptr %dev.i207 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i207, align 4
  %device.i208 = getelementptr inbounds %struct.dma_chan_dev, ptr %24, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i208, ptr noundef nonnull @.str.63) #20
  br label %cleanup128

for.body.lr.ph:                                   ; preds = %if.then21
  %tx_list = getelementptr inbounds %struct.tegra_dma_desc, ptr %call63, i32 0, i32 5
  %25 = ptrtoint ptr %tx_list to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %tx_list, ptr %tx_list, align 4
  %prev.i209 = getelementptr inbounds %struct.tegra_dma_desc, ptr %call63, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %prev.i209 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %tx_list, ptr %prev.i209, align 4
  %cb_node = getelementptr inbounds %struct.tegra_dma_desc, ptr %call63, i32 0, i32 6
  %27 = ptrtoint ptr %cb_node to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %cb_node, ptr %cb_node, align 4
  %prev.i210 = getelementptr inbounds %struct.tegra_dma_desc, ptr %call63, i32 0, i32 6, i32 1
  %28 = ptrtoint ptr %prev.i210 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %cb_node, ptr %prev.i210, align 4
  %cb_count = getelementptr inbounds %struct.tegra_dma_desc, ptr %call63, i32 0, i32 7
  %29 = ptrtoint ptr %cb_count to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %cb_count, align 4
  %bytes_requested = getelementptr inbounds %struct.tegra_dma_desc, ptr %call63, i32 0, i32 1
  %30 = ptrtoint ptr %bytes_requested to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %bytes_requested, align 4
  %bytes_transferred = getelementptr inbounds %struct.tegra_dma_desc, ptr %call63, i32 0, i32 2
  %31 = ptrtoint ptr %bytes_transferred to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %bytes_transferred, align 4
  %dma_status = getelementptr inbounds %struct.tegra_dma_desc, ptr %call63, i32 0, i32 3
  %32 = ptrtoint ptr %dma_status to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %dma_status, align 4
  %tdma = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 7
  %lock.i213 = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 5
  %free_sg_req.i215 = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0264 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %sg.0263 = phi ptr [ %sgl, %for.body.lr.ph ], [ %call107, %for.inc.for.body_crit_edge ]
  %ahb_seq.0262 = phi i32 [ -1610612736, %for.body.lr.ph ], [ %or93, %for.inc.for.body_crit_edge ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0263, i32 0, i32 3
  %33 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_address, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0263, i32 0, i32 4
  %35 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma_length, align 4
  %and72 = and i32 %36, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  %and74 = and i32 %34, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  %or.cond = select i1 %tobool73.not, i1 %tobool75.not, i1 false
  br i1 %or.cond, label %lor.lhs.false76, label %for.body.do.end81_crit_edge

for.body.do.end81_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end81

lor.lhs.false76:                                  ; preds = %for.body
  %37 = ptrtoint ptr %tdma to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tdma, align 4
  %chip_data = getelementptr inbounds %struct.tegra_dma, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip_data, align 4
  %max_dma_count = getelementptr inbounds %struct.tegra_dma_chip_data, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %max_dma_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_dma_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %42)
  %cmp77 = icmp ugt i32 %36, %42
  br i1 %cmp77, label %lor.lhs.false76.do.end81_crit_edge, label %if.end83

lor.lhs.false76.do.end81_crit_edge:               ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end81

do.end81:                                         ; preds = %lor.lhs.false76.do.end81_crit_edge, %for.body.do.end81_crit_edge
  %dev.i211 = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
  %43 = ptrtoint ptr %dev.i211 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i211, align 4
  %device.i212 = getelementptr inbounds %struct.dma_chan_dev, ptr %44, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i212, ptr noundef nonnull @.str.66) #20
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i213) #15
  %45 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %tx_list, align 4
  %cmp.i.not.i = icmp eq ptr %46, %tx_list
  br i1 %cmp.i.not.i, label %do.end81.if.end.i_crit_edge, label %if.then.i

do.end81.if.end.i_crit_edge:                      ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %do.end81
  %47 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %tx_list, align 4
  %cmp.i.not.i.i = icmp eq ptr %48, %tx_list
  br i1 %cmp.i.not.i.i, label %if.then.i.if.end.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %49 = ptrtoint ptr %free_sg_req.i215 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %free_sg_req.i215, align 4
  %51 = ptrtoint ptr %prev.i209 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i209, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %53 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %free_sg_req.i215, ptr %prev3.i.i.i, align 4
  store ptr %48, ptr %free_sg_req.i215, align 4
  %54 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %50, ptr %52, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %55 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev6.i.i.i, align 4
  %56 = ptrtoint ptr %tx_list to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %tx_list, ptr %tx_list, align 4
  store ptr %tx_list, ptr %prev.i209, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i, %if.then.i.if.end.i_crit_edge, %do.end81.if.end.i_crit_edge
  %node.i = getelementptr inbounds %struct.tegra_dma_desc, ptr %call63, i32 0, i32 4
  %free_dma_desc.i = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 11
  %prev.i.i = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 11, i32 1
  %57 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %58, ptr noundef %free_dma_desc.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.tegra_dma_desc_put.exit_crit_edge

if.end.i.tegra_dma_desc_put.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %tegra_dma_desc_put.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %59 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %node.i, ptr %prev.i.i, align 4
  %60 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %free_dma_desc.i, ptr %node.i, align 4
  %prev3.i.i13.i = getelementptr inbounds %struct.tegra_dma_desc, ptr %call63, i32 0, i32 4, i32 1
  %61 = ptrtoint ptr %prev3.i.i13.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev3.i.i13.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %node.i, ptr %58, align 4
  br label %tegra_dma_desc_put.exit

tegra_dma_desc_put.exit:                          ; preds = %if.end.i.i.i, %if.end.i.tegra_dma_desc_put.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i213, i32 noundef %call2.i) #15
  br label %cleanup128

if.end83:                                         ; preds = %lor.lhs.false76
  %call2.i214 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i213) #15
  %63 = ptrtoint ptr %free_sg_req.i215 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %free_sg_req.i215, align 4
  %cmp.i.not.i216 = icmp eq ptr %64, %free_sg_req.i215
  br i1 %cmp.i.not.i216, label %if.end.i221, label %if.then.i218

if.then.i218:                                     ; preds = %if.end83
  %add.ptr.i = getelementptr i8, ptr %64, i32 -32
  %call.i.i.i217 = call zeroext i1 @__list_del_entry_valid(ptr noundef %64) #15
  br i1 %call.i.i.i217, label %if.end.i.i.i219, label %if.then.i218.list_del.exit.i_crit_edge

if.then.i218.list_del.exit.i_crit_edge:           ; preds = %if.then.i218
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i

if.end.i.i.i219:                                  ; preds = %if.then.i218
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i.i.i, align 4
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %64, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev1.i.i.i.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %68, ptr %66, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i219, %if.then.i218.list_del.exit.i_crit_edge
  %71 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 256 to ptr), ptr %64, align 4
  %prev.i.i220 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %72 = ptrtoint ptr %prev.i.i220 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i220, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i213, i32 noundef %call2.i214) #15
  br label %tegra_dma_sg_req_get.exit

if.end.i221:                                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #17
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i213, i32 noundef %call2.i214) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %73 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %73, i32 noundef 2304, i32 noundef 48) #21
  br label %tegra_dma_sg_req_get.exit

tegra_dma_sg_req_get.exit:                        ; preds = %if.end.i221, %list_del.exit.i
  %retval.0.i = phi ptr [ %call7.i.i.i, %if.end.i221 ], [ %add.ptr.i, %list_del.exit.i ]
  %tobool85.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool85.not, label %do.end89, label %if.end91

do.end89:                                         ; preds = %tegra_dma_sg_req_get.exit
  %dev.i222 = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
  %74 = ptrtoint ptr %dev.i222 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i222, align 4
  %device.i223 = getelementptr inbounds %struct.dma_chan_dev, ptr %75, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i223, ptr noundef nonnull @.str.69) #20
  %call2.i225 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i213) #15
  %76 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %tx_list, align 4
  %cmp.i.not.i227 = icmp eq ptr %77, %tx_list
  br i1 %cmp.i.not.i227, label %do.end89.if.end.i239_crit_edge, label %if.then.i229

do.end89.if.end.i239_crit_edge:                   ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i239

if.then.i229:                                     ; preds = %do.end89
  %78 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile ptr, ptr %tx_list, align 4
  %cmp.i.not.i.i228 = icmp eq ptr %79, %tx_list
  br i1 %cmp.i.not.i.i228, label %if.then.i229.if.end.i239_crit_edge, label %if.then.i.i234

if.then.i229.if.end.i239_crit_edge:               ; preds = %if.then.i229
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i239

if.then.i.i234:                                   ; preds = %if.then.i229
  call void @__sanitizer_cov_trace_pc() #17
  %80 = ptrtoint ptr %free_sg_req.i215 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %free_sg_req.i215, align 4
  %82 = ptrtoint ptr %prev.i209 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %prev.i209, align 4
  %prev3.i.i.i232 = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %84 = ptrtoint ptr %prev3.i.i.i232 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %free_sg_req.i215, ptr %prev3.i.i.i232, align 4
  store ptr %79, ptr %free_sg_req.i215, align 4
  %85 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %81, ptr %83, align 4
  %prev6.i.i.i233 = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  %86 = ptrtoint ptr %prev6.i.i.i233 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %83, ptr %prev6.i.i.i233, align 4
  %87 = ptrtoint ptr %tx_list to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %tx_list, ptr %tx_list, align 4
  store ptr %tx_list, ptr %prev.i209, align 4
  br label %if.end.i239

if.end.i239:                                      ; preds = %if.then.i.i234, %if.then.i229.if.end.i239_crit_edge, %do.end89.if.end.i239_crit_edge
  %node.i235 = getelementptr inbounds %struct.tegra_dma_desc, ptr %call63, i32 0, i32 4
  %free_dma_desc.i236 = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 11
  %prev.i.i237 = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 11, i32 1
  %88 = ptrtoint ptr %prev.i.i237 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %prev.i.i237, align 4
  %call.i.i.i238 = call zeroext i1 @__list_add_valid(ptr noundef %node.i235, ptr noundef %89, ptr noundef %free_dma_desc.i236) #15
  br i1 %call.i.i.i238, label %if.end.i.i.i241, label %if.end.i239.tegra_dma_desc_put.exit242_crit_edge

if.end.i239.tegra_dma_desc_put.exit242_crit_edge: ; preds = %if.end.i239
  call void @__sanitizer_cov_trace_pc() #17
  br label %tegra_dma_desc_put.exit242

if.end.i.i.i241:                                  ; preds = %if.end.i239
  call void @__sanitizer_cov_trace_pc() #17
  %90 = ptrtoint ptr %prev.i.i237 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %node.i235, ptr %prev.i.i237, align 4
  %91 = ptrtoint ptr %node.i235 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %free_dma_desc.i236, ptr %node.i235, align 4
  %prev3.i.i13.i240 = getelementptr inbounds %struct.tegra_dma_desc, ptr %call63, i32 0, i32 4, i32 1
  %92 = ptrtoint ptr %prev3.i.i13.i240 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %89, ptr %prev3.i.i13.i240, align 4
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %node.i235, ptr %89, align 4
  br label %tegra_dma_desc_put.exit242

tegra_dma_desc_put.exit242:                       ; preds = %if.end.i.i.i241, %if.end.i239.tegra_dma_desc_put.exit242_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i213, i32 noundef %call2.i225) #15
  br label %cleanup128

if.end91:                                         ; preds = %tegra_dma_sg_req_get.exit
  %94 = ptrtoint ptr %burst_size to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %burst_size, align 4
  %96 = ptrtoint ptr %slave_bw to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %slave_bw, align 4
  %mul.i = mul i32 %97, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mul.i)
  %tobool.not.i = icmp ult i32 %mul.i, 4
  br i1 %tobool.not.i, label %if.then.i243, label %if.end.i244

if.then.i243:                                     ; preds = %if.end91
  %and.i = and i32 %36, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then.i243.get_burst_size.exit_crit_edge

if.then.i243.get_burst_size.exit_crit_edge:       ; preds = %if.then.i243
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_burst_size.exit

if.else.i:                                        ; preds = %if.then.i243
  call void @__sanitizer_cov_trace_pc() #17
  %98 = and i32 %36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool4.not.i = icmp eq i32 %98, 0
  %..i = select i1 %tobool4.not.i, i32 100663296, i32 83886080
  br label %get_burst_size.exit

if.end.i244:                                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %mul.i)
  %cmp.i = icmp ult i32 %mul.i, 16
  br i1 %cmp.i, label %if.end.i244.get_burst_size.exit_crit_edge, label %if.else8.i

if.end.i244.get_burst_size.exit_crit_edge:        ; preds = %if.end.i244
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_burst_size.exit

if.else8.i:                                       ; preds = %if.end.i244
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %mul.i)
  %cmp9.i = icmp ult i32 %mul.i, 32
  %.2.i = select i1 %cmp9.i, i32 83886080, i32 100663296
  br label %get_burst_size.exit

get_burst_size.exit:                              ; preds = %if.else8.i, %if.end.i244.get_burst_size.exit_crit_edge, %if.else.i, %if.then.i243.get_burst_size.exit_crit_edge
  %retval.0.i245 = phi i32 [ 67108864, %if.then.i243.get_burst_size.exit_crit_edge ], [ %..i, %if.else.i ], [ 67108864, %if.end.i244.get_burst_size.exit_crit_edge ], [ %.2.i, %if.else8.i ]
  %or93 = or i32 %retval.0.i245, %ahb_seq.0262
  %99 = ptrtoint ptr %bytes_requested to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %bytes_requested, align 4
  %add = add i32 %100, %36
  store i32 %add, ptr %bytes_requested, align 4
  %101 = ptrtoint ptr %apb_ptr to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %apb_ptr, align 4
  %apb_ptr95 = getelementptr inbounds %struct.tegra_dma_channel_regs, ptr %retval.0.i, i32 0, i32 2
  %103 = ptrtoint ptr %apb_ptr95 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %apb_ptr95, align 4
  %ahb_ptr = getelementptr inbounds %struct.tegra_dma_channel_regs, ptr %retval.0.i, i32 0, i32 1
  %104 = ptrtoint ptr %ahb_ptr to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %34, ptr %ahb_ptr, align 4
  %105 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %csr, align 4
  %107 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %retval.0.i, align 4
  %sub.i = add i32 %36, 65532
  %and.i246 = and i32 %sub.i, 65532
  %108 = ptrtoint ptr %tdma to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %tdma, align 4
  %chip_data.i = getelementptr inbounds %struct.tegra_dma, ptr %109, i32 0, i32 6
  %110 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %chip_data.i, align 4
  %support_separate_wcount_reg.i = getelementptr inbounds %struct.tegra_dma_chip_data, ptr %111, i32 0, i32 4
  %112 = ptrtoint ptr %support_separate_wcount_reg.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %support_separate_wcount_reg.i, align 1, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool.not.i247 = icmp eq i8 %113, 0
  br i1 %tobool.not.i247, label %if.else.i249, label %if.then.i248

if.then.i248:                                     ; preds = %get_burst_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  %wcount.i = getelementptr inbounds %struct.tegra_dma_channel_regs, ptr %retval.0.i, i32 0, i32 5
  %114 = ptrtoint ptr %wcount.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %and.i246, ptr %wcount.i, align 4
  br label %tegra_dma_prep_wcount.exit

if.else.i249:                                     ; preds = %get_burst_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  %or.i = or i32 %106, %and.i246
  %115 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %or.i, ptr %retval.0.i, align 4
  br label %tegra_dma_prep_wcount.exit

tegra_dma_prep_wcount.exit:                       ; preds = %if.else.i249, %if.then.i248
  %116 = ptrtoint ptr %apb_seq to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %apb_seq, align 4
  %apb_seq101 = getelementptr inbounds %struct.tegra_dma_channel_regs, ptr %retval.0.i, i32 0, i32 4
  %118 = ptrtoint ptr %apb_seq101 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %apb_seq101, align 4
  %ahb_seq103 = getelementptr inbounds %struct.tegra_dma_channel_regs, ptr %retval.0.i, i32 0, i32 3
  %119 = ptrtoint ptr %ahb_seq103 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %or93, ptr %ahb_seq103, align 4
  %configured = getelementptr inbounds %struct.tegra_dma_sg_req, ptr %retval.0.i, i32 0, i32 2
  %120 = ptrtoint ptr %configured to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %configured, align 4
  %last_sg = getelementptr inbounds %struct.tegra_dma_sg_req, ptr %retval.0.i, i32 0, i32 3
  %121 = ptrtoint ptr %last_sg to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %last_sg, align 1
  %dma_desc104 = getelementptr inbounds %struct.tegra_dma_sg_req, ptr %retval.0.i, i32 0, i32 5
  %122 = ptrtoint ptr %dma_desc104 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call63, ptr %dma_desc104, align 4
  %req_len = getelementptr inbounds %struct.tegra_dma_sg_req, ptr %retval.0.i, i32 0, i32 1
  %123 = ptrtoint ptr %req_len to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %36, ptr %req_len, align 4
  %node = getelementptr inbounds %struct.tegra_dma_sg_req, ptr %retval.0.i, i32 0, i32 4
  %124 = ptrtoint ptr %prev.i209 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %prev.i209, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %125, ptr noundef %tx_list) #15
  br i1 %call.i.i, label %if.end.i.i, label %tegra_dma_prep_wcount.exit.for.inc_crit_edge

tegra_dma_prep_wcount.exit.for.inc_crit_edge:     ; preds = %tegra_dma_prep_wcount.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end.i.i:                                       ; preds = %tegra_dma_prep_wcount.exit
  call void @__sanitizer_cov_trace_pc() #17
  %126 = ptrtoint ptr %prev.i209 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %node, ptr %prev.i209, align 4
  %127 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %tx_list, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.tegra_dma_sg_req, ptr %retval.0.i, i32 0, i32 4, i32 1
  %128 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %125, ptr %prev3.i.i, align 4
  %129 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %node, ptr %125, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %tegra_dma_prep_wcount.exit.for.inc_crit_edge
  %inc = add nuw i32 %i.0264, 1
  %call107 = call ptr @sg_next(ptr noundef %sg.0263) #15
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc
  %last_sg108 = getelementptr inbounds %struct.tegra_dma_sg_req, ptr %retval.0.i, i32 0, i32 3
  %130 = ptrtoint ptr %last_sg108 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 1, ptr %last_sg108, align 1
  %and109 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %for.end.if.end113_crit_edge, label %if.then111

for.end.if.end113_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end113

if.then111:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %flags112 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call63, i32 0, i32 1
  %131 = ptrtoint ptr %flags112 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 2, ptr %flags112, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %for.end.if.end113_crit_edge
  %isr_handler = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 13
  %132 = ptrtoint ptr %isr_handler to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %isr_handler, align 4
  %tobool114.not = icmp eq ptr %133, null
  br i1 %tobool114.not, label %if.then115, label %if.else117

if.then115:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #17
  %134 = ptrtoint ptr %isr_handler to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @handle_once_dma_done, ptr %isr_handler, align 4
  %cyclic = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 8
  %135 = ptrtoint ptr %cyclic to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %cyclic, align 4
  br label %cleanup128

if.else117:                                       ; preds = %if.end113
  %cyclic118 = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 8
  %136 = ptrtoint ptr %cyclic118 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %cyclic118, align 4, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool119.not = icmp eq i8 %137, 0
  br i1 %tobool119.not, label %if.else117.cleanup128_crit_edge, label %do.end123

if.else117.cleanup128_crit_edge:                  ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup128

do.end123:                                        ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i252 = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
  %138 = ptrtoint ptr %dev.i252 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev.i252, align 4
  %device.i253 = getelementptr inbounds %struct.dma_chan_dev, ptr %139, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i253, ptr noundef nonnull @.str.72) #20
  call fastcc void @tegra_dma_desc_put(ptr noundef %dc, ptr noundef nonnull %call63)
  br label %cleanup128

cleanup128:                                       ; preds = %do.end123, %if.else117.cleanup128_crit_edge, %if.then115, %tegra_dma_desc_put.exit242, %tegra_dma_desc_put.exit, %do.end68, %if.then28, %land.end.cleanup128_crit_edge, %if.end7.cleanup128_crit_edge, %do.end5, %do.end
  %retval.2 = phi ptr [ null, %do.end5 ], [ null, %do.end123 ], [ null, %do.end68 ], [ null, %do.end ], [ null, %if.end7.cleanup128_crit_edge ], [ null, %if.then28 ], [ null, %land.end.cleanup128_crit_edge ], [ %call63, %if.else117.cleanup128_crit_edge ], [ %call63, %if.then115 ], [ null, %tegra_dma_desc_put.exit242 ], [ null, %tegra_dma_desc_put.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %burst_size) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req_list) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slave_bw) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %apb_seq) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %apb_ptr) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csr) #15
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra_dma_prep_dma_cyclic(ptr noundef %dc, i32 noundef %buf_addr, i32 noundef %buf_len, i32 noundef %period_len, i32 noundef %direction, i32 noundef %flags) #0 align 64 {
entry:
  %csr = alloca i32, align 4
  %apb_ptr = alloca i32, align 4
  %apb_seq = alloca i32, align 4
  %slave_bw = alloca i32, align 4
  %burst_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %csr) #15
  %0 = ptrtoint ptr %csr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %csr, align 4, !annotation !288
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %apb_ptr) #15
  %1 = ptrtoint ptr %apb_ptr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %apb_ptr, align 4, !annotation !288
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %apb_seq) #15
  %2 = ptrtoint ptr %apb_seq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %apb_seq, align 4, !annotation !288
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %slave_bw) #15
  %3 = ptrtoint ptr %slave_bw to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %slave_bw, align 4, !annotation !288
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %burst_size) #15
  %4 = ptrtoint ptr %burst_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %burst_size, align 4, !annotation !288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len)
  %tobool.not = icmp eq i32 %buf_len, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %period_len)
  %tobool1.not = icmp eq i32 %period_len, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %6, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.79) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %config_init = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 2
  %7 = ptrtoint ptr %config_init to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %config_init, align 4, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i219 = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
  %9 = ptrtoint ptr %dev.i219 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i219, align 4
  %device.i220 = getelementptr inbounds %struct.dma_chan_dev, ptr %10, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i220, ptr noundef nonnull @.str.82) #20
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %busy = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 6
  %11 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %busy, align 4, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not = icmp eq i8 %12, 0
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i221 = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
  %13 = ptrtoint ptr %dev.i221 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i221, align 4
  %device.i222 = getelementptr inbounds %struct.dma_chan_dev, ptr %14, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i222, ptr noundef nonnull @.str.85) #20
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %rem = urem i32 %buf_len, %period_len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool17.not = icmp eq i32 %rem, 0
  br i1 %tobool17.not, label %if.end23, label %do.end21

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i223 = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
  %15 = ptrtoint ptr %dev.i223 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i223, align 4
  %device.i224 = getelementptr inbounds %struct.dma_chan_dev, ptr %16, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i224, ptr noundef nonnull @.str.88) #20
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %17 = or i32 %period_len, %buf_addr
  %18 = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %lor.lhs.false28, label %if.end23.do.end32_crit_edge

if.end23.do.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end32

lor.lhs.false28:                                  ; preds = %if.end23
  %tdma = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 7
  %20 = ptrtoint ptr %tdma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tdma, align 4
  %chip_data = getelementptr inbounds %struct.tegra_dma, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip_data, align 4
  %max_dma_count = getelementptr inbounds %struct.tegra_dma_chip_data, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %max_dma_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_dma_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %period_len)
  %cmp = icmp ult i32 %25, %period_len
  br i1 %cmp, label %lor.lhs.false28.do.end32_crit_edge, label %if.end34

lor.lhs.false28.do.end32_crit_edge:               ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end32

do.end32:                                         ; preds = %lor.lhs.false28.do.end32_crit_edge, %if.end23.do.end32_crit_edge
  %dev.i225 = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
  %26 = ptrtoint ptr %dev.i225 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i225, align 4
  %device.i226 = getelementptr inbounds %struct.dma_chan_dev, ptr %27, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i226, ptr noundef nonnull @.str.91) #20
  br label %cleanup

if.end34:                                         ; preds = %lor.lhs.false28
  %call35 = call fastcc i32 @get_transfer_param(ptr noundef %dc, i32 noundef %direction, ptr noundef nonnull %apb_ptr, ptr noundef nonnull %apb_seq, ptr noundef nonnull %csr, ptr noundef nonnull %burst_size, ptr noundef nonnull %slave_bw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end34.cleanup_crit_edge, label %if.end38

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %slave_id = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 15
  %28 = ptrtoint ptr %slave_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %slave_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %29)
  %cmp40.not = icmp eq i32 %29, 32
  br i1 %cmp40.not, label %if.end38.if.end45_crit_edge, label %if.then41

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end45

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %csr, align 4
  %shl = shl i32 %29, 16
  %or42 = or i32 %shl, %31
  %or44 = or i32 %or42, 2097152
  store i32 %or44, ptr %csr, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.end38.if.end45_crit_edge
  %and46 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %land.end, label %if.then48

if.then48:                                        ; preds = %if.end45
  %32 = ptrtoint ptr %csr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %csr, align 4
  %or49 = or i32 %33, 1073741824
  store i32 %or49, ptr %csr, align 4
  %34 = ptrtoint ptr %apb_seq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %apb_seq, align 4
  %or89 = or i32 %35, 65536
  store i32 %or89, ptr %apb_seq, align 4
  %call90 = tail call fastcc ptr @tegra_dma_desc_get(ptr noundef %dc)
  %tobool91.not = icmp eq ptr %call90, null
  br i1 %tobool91.not, label %do.end95, label %while.body.lr.ph

land.end:                                         ; preds = %if.end45
  %.b217 = load i1, ptr @tegra_dma_prep_dma_cyclic.__already_done, align 1
  br i1 %.b217, label %land.end.cleanup_crit_edge, label %if.then55, !prof !286

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then55:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @tegra_dma_prep_dma_cyclic.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 1236, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

do.end95:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i227 = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
  %36 = ptrtoint ptr %dev.i227 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i227, align 4
  %device.i228 = getelementptr inbounds %struct.dma_chan_dev, ptr %37, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i228, ptr noundef nonnull @.str.94) #20
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.then48
  %tx_list = getelementptr inbounds %struct.tegra_dma_desc, ptr %call90, i32 0, i32 5
  %38 = ptrtoint ptr %tx_list to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %tx_list, ptr %tx_list, align 4
  %prev.i = getelementptr inbounds %struct.tegra_dma_desc, ptr %call90, i32 0, i32 5, i32 1
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %tx_list, ptr %prev.i, align 4
  %cb_node = getelementptr inbounds %struct.tegra_dma_desc, ptr %call90, i32 0, i32 6
  %40 = ptrtoint ptr %cb_node to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %cb_node, ptr %cb_node, align 4
  %prev.i229 = getelementptr inbounds %struct.tegra_dma_desc, ptr %call90, i32 0, i32 6, i32 1
  %41 = ptrtoint ptr %prev.i229 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %cb_node, ptr %prev.i229, align 4
  %cb_count = getelementptr inbounds %struct.tegra_dma_desc, ptr %call90, i32 0, i32 7
  %42 = ptrtoint ptr %cb_count to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %cb_count, align 4
  %bytes_transferred = getelementptr inbounds %struct.tegra_dma_desc, ptr %call90, i32 0, i32 2
  %43 = ptrtoint ptr %bytes_transferred to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %bytes_transferred, align 4
  %bytes_requested = getelementptr inbounds %struct.tegra_dma_desc, ptr %call90, i32 0, i32 1
  %44 = ptrtoint ptr %bytes_requested to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %buf_len, ptr %bytes_requested, align 4
  %lock.i = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 5
  %free_sg_req.i = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 9
  %and.i = and i32 %period_len, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %45 = and i32 %period_len, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool4.not.i = icmp eq i32 %45, 0
  %..i = select i1 %tobool4.not.i, i32 100663296, i32 83886080
  %sub.i = add i32 %period_len, 65532
  %and.i235 = and i32 %sub.i, 65532
  %or.i = or i32 %or49, %and.i235
  %spec.select = select i1 %tobool1.not.i, i32 %..i, i32 67108864
  br label %while.body

while.body:                                       ; preds = %list_add_tail.exit.while.body_crit_edge, %while.body.lr.ph
  %remain_len.0247 = phi i32 [ %buf_len, %while.body.lr.ph ], [ %sub, %list_add_tail.exit.while.body_crit_edge ]
  %mem.0246 = phi i32 [ %buf_addr, %while.body.lr.ph ], [ %add, %list_add_tail.exit.while.body_crit_edge ]
  %ahb_seq.0245 = phi i32 [ -1610612736, %while.body.lr.ph ], [ %or108, %list_add_tail.exit.while.body_crit_edge ]
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #15
  %46 = ptrtoint ptr %free_sg_req.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %free_sg_req.i, align 4
  %cmp.i.not.i = icmp eq ptr %47, %free_sg_req.i
  br i1 %cmp.i.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %while.body
  %add.ptr.i = getelementptr i8, ptr %47, i32 -32
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %47) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i.i, align 4
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %47, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %54 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 256 to ptr), ptr %47, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #15
  br label %tegra_dma_sg_req_get.exit

if.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 2304, i32 noundef 48) #21
  br label %tegra_dma_sg_req_get.exit

tegra_dma_sg_req_get.exit:                        ; preds = %if.end.i, %list_del.exit.i
  %retval.0.i = phi ptr [ %call7.i.i.i, %if.end.i ], [ %add.ptr.i, %list_del.exit.i ]
  %tobool100.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool100.not, label %do.end104, label %if.end106

do.end104:                                        ; preds = %tegra_dma_sg_req_get.exit
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i230 = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
  %57 = ptrtoint ptr %dev.i230 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i230, align 4
  %device.i231 = getelementptr inbounds %struct.dma_chan_dev, ptr %58, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i231, ptr noundef nonnull @.str.69) #20
  tail call fastcc void @tegra_dma_desc_put(ptr noundef %dc, ptr noundef nonnull %call90)
  br label %cleanup

if.end106:                                        ; preds = %tegra_dma_sg_req_get.exit
  %59 = ptrtoint ptr %burst_size to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %burst_size, align 4
  %61 = ptrtoint ptr %slave_bw to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %slave_bw, align 4
  %mul.i = mul i32 %62, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %mul.i)
  %tobool.not.i = icmp ult i32 %mul.i, 4
  br i1 %tobool.not.i, label %if.end106.get_burst_size.exit_crit_edge, label %if.end.i233

if.end106.get_burst_size.exit_crit_edge:          ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_burst_size.exit

if.end.i233:                                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %mul.i)
  %cmp.i = icmp ult i32 %mul.i, 16
  br i1 %cmp.i, label %if.end.i233.get_burst_size.exit_crit_edge, label %if.else8.i

if.end.i233.get_burst_size.exit_crit_edge:        ; preds = %if.end.i233
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_burst_size.exit

if.else8.i:                                       ; preds = %if.end.i233
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %mul.i)
  %cmp9.i = icmp ult i32 %mul.i, 32
  %.2.i = select i1 %cmp9.i, i32 83886080, i32 100663296
  br label %get_burst_size.exit

get_burst_size.exit:                              ; preds = %if.else8.i, %if.end.i233.get_burst_size.exit_crit_edge, %if.end106.get_burst_size.exit_crit_edge
  %retval.0.i234 = phi i32 [ 67108864, %if.end.i233.get_burst_size.exit_crit_edge ], [ %.2.i, %if.else8.i ], [ %spec.select, %if.end106.get_burst_size.exit_crit_edge ]
  %or108 = or i32 %retval.0.i234, %ahb_seq.0245
  %63 = ptrtoint ptr %apb_ptr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %apb_ptr, align 4
  %apb_ptr109 = getelementptr inbounds %struct.tegra_dma_channel_regs, ptr %retval.0.i, i32 0, i32 2
  %65 = ptrtoint ptr %apb_ptr109 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %apb_ptr109, align 4
  %ahb_ptr = getelementptr inbounds %struct.tegra_dma_channel_regs, ptr %retval.0.i, i32 0, i32 1
  %66 = ptrtoint ptr %ahb_ptr to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %mem.0246, ptr %ahb_ptr, align 4
  %67 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or49, ptr %retval.0.i, align 4
  %68 = ptrtoint ptr %tdma to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tdma, align 4
  %chip_data.i = getelementptr inbounds %struct.tegra_dma, ptr %69, i32 0, i32 6
  %70 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %chip_data.i, align 4
  %support_separate_wcount_reg.i = getelementptr inbounds %struct.tegra_dma_chip_data, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %support_separate_wcount_reg.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %support_separate_wcount_reg.i, align 1, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i236 = icmp eq i8 %73, 0
  br i1 %tobool.not.i236, label %if.else.i238, label %if.then.i237

if.then.i237:                                     ; preds = %get_burst_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  %wcount.i = getelementptr inbounds %struct.tegra_dma_channel_regs, ptr %retval.0.i, i32 0, i32 5
  %74 = ptrtoint ptr %wcount.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %and.i235, ptr %wcount.i, align 4
  br label %tegra_dma_prep_wcount.exit

if.else.i238:                                     ; preds = %get_burst_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  %75 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %or.i, ptr %retval.0.i, align 4
  br label %tegra_dma_prep_wcount.exit

tegra_dma_prep_wcount.exit:                       ; preds = %if.else.i238, %if.then.i237
  %apb_seq115 = getelementptr inbounds %struct.tegra_dma_channel_regs, ptr %retval.0.i, i32 0, i32 4
  %76 = ptrtoint ptr %apb_seq115 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %or89, ptr %apb_seq115, align 4
  %ahb_seq117 = getelementptr inbounds %struct.tegra_dma_channel_regs, ptr %retval.0.i, i32 0, i32 3
  %77 = ptrtoint ptr %ahb_seq117 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or108, ptr %ahb_seq117, align 4
  %configured = getelementptr inbounds %struct.tegra_dma_sg_req, ptr %retval.0.i, i32 0, i32 2
  %78 = ptrtoint ptr %configured to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %configured, align 4
  %last_sg = getelementptr inbounds %struct.tegra_dma_sg_req, ptr %retval.0.i, i32 0, i32 3
  %79 = ptrtoint ptr %last_sg to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %last_sg, align 1
  %dma_desc118 = getelementptr inbounds %struct.tegra_dma_sg_req, ptr %retval.0.i, i32 0, i32 5
  %80 = ptrtoint ptr %dma_desc118 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call90, ptr %dma_desc118, align 4
  %req_len = getelementptr inbounds %struct.tegra_dma_sg_req, ptr %retval.0.i, i32 0, i32 1
  %81 = ptrtoint ptr %req_len to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %period_len, ptr %req_len, align 4
  %node = getelementptr inbounds %struct.tegra_dma_sg_req, ptr %retval.0.i, i32 0, i32 4
  %82 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %83, ptr noundef %tx_list) #15
  br i1 %call.i.i, label %if.end.i.i, label %tegra_dma_prep_wcount.exit.list_add_tail.exit_crit_edge

tegra_dma_prep_wcount.exit.list_add_tail.exit_crit_edge: ; preds = %tegra_dma_prep_wcount.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %tegra_dma_prep_wcount.exit
  call void @__sanitizer_cov_trace_pc() #17
  %84 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %node, ptr %prev.i, align 4
  %85 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %tx_list, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.tegra_dma_sg_req, ptr %retval.0.i, i32 0, i32 4, i32 1
  %86 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %83, ptr %prev3.i.i, align 4
  %87 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %node, ptr %83, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %tegra_dma_prep_wcount.exit.list_add_tail.exit_crit_edge
  %sub = sub i32 %remain_len.0247, %period_len
  %add = add i32 %mem.0246, %period_len
  %tobool98.not = icmp eq i32 %sub, 0
  br i1 %tobool98.not, label %while.end, label %list_add_tail.exit.while.body_crit_edge

list_add_tail.exit.while.body_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.end:                                        ; preds = %list_add_tail.exit
  %last_sg120 = getelementptr inbounds %struct.tegra_dma_sg_req, ptr %retval.0.i, i32 0, i32 3
  %88 = ptrtoint ptr %last_sg120 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %last_sg120, align 1
  %and121 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %while.end.if.end125_crit_edge, label %if.then123

while.end.if.end125_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end125

if.then123:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  %flags124 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call90, i32 0, i32 1
  %89 = ptrtoint ptr %flags124 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 2, ptr %flags124, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then123, %while.end.if.end125_crit_edge
  %isr_handler = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 13
  %90 = ptrtoint ptr %isr_handler to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %isr_handler, align 4
  %tobool126.not = icmp eq ptr %91, null
  br i1 %tobool126.not, label %if.then127, label %if.else129

if.then127:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #17
  %92 = ptrtoint ptr %isr_handler to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @handle_cont_sngl_cycle_dma_done, ptr %isr_handler, align 4
  %cyclic = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 8
  %93 = ptrtoint ptr %cyclic to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %cyclic, align 4
  br label %cleanup

if.else129:                                       ; preds = %if.end125
  %cyclic130 = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 8
  %94 = ptrtoint ptr %cyclic130 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %cyclic130, align 4, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool131.not = icmp eq i8 %95, 0
  br i1 %tobool131.not, label %do.end135, label %if.else129.cleanup_crit_edge

if.else129.cleanup_crit_edge:                     ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end135:                                        ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i241 = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
  %96 = ptrtoint ptr %dev.i241 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev.i241, align 4
  %device.i242 = getelementptr inbounds %struct.dma_chan_dev, ptr %97, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i242, ptr noundef nonnull @.str.99) #20
  tail call fastcc void @tegra_dma_desc_put(ptr noundef %dc, ptr noundef nonnull %call90)
  br label %cleanup

cleanup:                                          ; preds = %do.end135, %if.else129.cleanup_crit_edge, %if.then127, %do.end104, %do.end95, %if.then55, %land.end.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %do.end32, %do.end21, %do.end14, %do.end7, %do.end
  %retval.0 = phi ptr [ null, %do.end14 ], [ null, %do.end21 ], [ null, %do.end32 ], [ null, %do.end104 ], [ null, %do.end135 ], [ null, %do.end95 ], [ null, %do.end7 ], [ null, %do.end ], [ null, %if.end34.cleanup_crit_edge ], [ null, %if.then55 ], [ null, %land.end.cleanup_crit_edge ], [ %call90, %if.else129.cleanup_crit_edge ], [ %call90, %if.then127 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %burst_size) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %slave_bw) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %apb_seq) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %apb_ptr) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csr) #15
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dma_slave_config(ptr noundef %dc, ptr nocapture noundef readonly %sconfig) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_sg_req = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 10
  %0 = ptrtoint ptr %pending_sg_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pending_sg_req, align 4
  %cmp.i.not = icmp eq ptr %1, %pending_sg_req
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.107) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dma_sconfig = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 16
  %4 = call ptr @memcpy(ptr %dma_sconfig, ptr %sconfig, i32 48)
  %config_init = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 2
  %5 = ptrtoint ptr %config_init to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %config_init, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dma_terminate_all(ptr noundef %dc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %busy = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 6
  %0 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %busy, align 4, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.skip_dma_stop_crit_edge, label %if.end

entry.skip_dma_stop_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %skip_dma_stop

if.end:                                           ; preds = %entry
  %tdma1.i = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 7
  %2 = ptrtoint ptr %tdma1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tdma1.i, align 4
  %chip_data.i = getelementptr inbounds %struct.tegra_dma, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip_data.i, align 4
  %support_channel_pause.i = getelementptr inbounds %struct.tegra_dma_chip_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %support_channel_pause.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %support_channel_pause.i, align 4, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !293
  tail call void @arm_heavy_mb() #15
  %chan_addr.i.i = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 4
  %8 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 128) #15, !srcloc !290
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 4294960) #15
  br label %tegra_dma_pause.exit

if.else.i:                                        ; preds = %if.end
  %global_lock.i.i = getelementptr inbounds %struct.tegra_dma, ptr %3, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %global_lock.i.i) #15
  %11 = ptrtoint ptr %tdma1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tdma1.i, align 4
  %global_pause_count.i.i = getelementptr inbounds %struct.tegra_dma, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %global_pause_count.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %global_pause_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i = icmp eq i32 %14, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.tegra_dma_global_pause.exit.i_crit_edge

if.else.i.tegra_dma_global_pause.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %tegra_dma_global_pause.exit.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !289
  tail call void @arm_heavy_mb() #15
  %base_addr.i.i.i = getelementptr inbounds %struct.tegra_dma, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_addr.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #15, !srcloc !290
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 4294960) #15
  br label %tegra_dma_global_pause.exit.i

tegra_dma_global_pause.exit.i:                    ; preds = %if.then.i.i, %if.else.i.tegra_dma_global_pause.exit.i_crit_edge
  %18 = ptrtoint ptr %tdma1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tdma1.i, align 4
  %global_pause_count6.i.i = getelementptr inbounds %struct.tegra_dma, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %global_pause_count6.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %global_pause_count6.i.i, align 4
  %inc.i.i = add i32 %21, 1
  store i32 %inc.i.i, ptr %global_pause_count6.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %global_lock.i.i) #15
  br label %tegra_dma_pause.exit

tegra_dma_pause.exit:                             ; preds = %tegra_dma_global_pause.exit.i, %if.then.i
  %chan_addr.i = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 4
  %22 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !291
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !292
  %and = and i32 %25, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %tegra_dma_pause.exit.if.end22_crit_edge, label %do.body9

tegra_dma_pause.exit.if.end22_crit_edge:          ; preds = %tegra_dma_pause.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22

do.body9:                                         ; preds = %tegra_dma_pause.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_dma_terminate_all.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_dma_terminate_all, %do.end20)) #15
          to label %if.then16 [label %do.end20], !srcloc !294

if.then16:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %27, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_dma_terminate_all.__UNIQUE_ID_ddebug274, ptr noundef %device.i, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.109) #15
  br label %do.end20

do.end20:                                         ; preds = %if.then16, %do.body9
  %isr_handler = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 13
  %28 = ptrtoint ptr %isr_handler to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %isr_handler, align 4
  tail call void %29(ptr noundef %dc, i1 noundef zeroext true) #15
  %30 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i77 = getelementptr i8, ptr %31, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i77) #15, !srcloc !291
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !292
  br label %if.end22

if.end22:                                         ; preds = %do.end20, %tegra_dma_pause.exit.if.end22_crit_edge
  %status.0 = phi i32 [ %33, %do.end20 ], [ %25, %tegra_dma_pause.exit.if.end22_crit_edge ]
  %34 = ptrtoint ptr %tdma1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tdma1.i, align 4
  %chip_data = getelementptr inbounds %struct.tegra_dma, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chip_data, align 4
  %support_separate_wcount_reg = getelementptr inbounds %struct.tegra_dma_chip_data, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %support_separate_wcount_reg to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %support_separate_wcount_reg, align 1, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool23.not = icmp eq i8 %39, 0
  br i1 %tobool23.not, label %if.end22.if.end26_crit_edge, label %if.then24

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  %40 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %41, i32 36
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79) #15, !srcloc !291
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !292
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end22.if.end26_crit_edge
  %wcount.0 = phi i32 [ %43, %if.then24 ], [ %status.0, %if.end22.if.end26_crit_edge ]
  %44 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %busy, align 4, !range !295
  tail call fastcc void @tegra_dma_stop(ptr noundef %dc)
  %pending_sg_req = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 10
  %46 = ptrtoint ptr %pending_sg_req to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %pending_sg_req, align 4
  %cmp.i = icmp eq ptr %47, %pending_sg_req
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool28.not = icmp eq i8 %45, 0
  %or.cond = select i1 %cmp.i, i1 true, i1 %tobool28.not
  br i1 %or.cond, label %if.end26.if.end39_crit_edge, label %if.then34

if.end26.if.end39_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

if.then34:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  %req_len.i = getelementptr i8, ptr %47, i32 -8
  %48 = ptrtoint ptr %req_len.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %req_len.i, align 4
  %and.i = and i32 %wcount.0, 65532
  %sub.i = sub nuw nsw i32 -4, %and.i
  %sub1.i = add i32 %sub.i, %49
  %dma_desc38 = getelementptr i8, ptr %47, i32 8
  %50 = ptrtoint ptr %dma_desc38 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dma_desc38, align 4
  %bytes_transferred = getelementptr inbounds %struct.tegra_dma_desc, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %bytes_transferred to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bytes_transferred, align 4
  %add = add i32 %sub1.i, %53
  store i32 %add, ptr %bytes_transferred, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %if.end26.if.end39_crit_edge
  tail call fastcc void @tegra_dma_resume(ptr noundef %dc)
  %54 = ptrtoint ptr %tdma1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tdma1.i, align 4
  %dev = getelementptr inbounds %struct.tegra_dma, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %57, i32 noundef 5) #15
  %wq = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 0, ptr noundef null) #15
  br label %skip_dma_stop

skip_dma_stop:                                    ; preds = %if.end39, %entry.skip_dma_stop_crit_edge
  tail call fastcc void @tegra_dma_abort_all(ptr noundef %dc)
  %cb_desc = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 12
  %58 = ptrtoint ptr %cb_desc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %cb_desc, align 4
  %cmp.i80.not83 = icmp eq ptr %59, %cb_desc
  br i1 %cmp.i80.not83, label %skip_dma_stop.while.end_crit_edge, label %skip_dma_stop.while.body_crit_edge

skip_dma_stop.while.body_crit_edge:               ; preds = %skip_dma_stop
  br label %while.body

skip_dma_stop.while.end_crit_edge:                ; preds = %skip_dma_stop
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %skip_dma_stop.while.body_crit_edge
  %60 = phi ptr [ %71, %list_del.exit.while.body_crit_edge ], [ %59, %skip_dma_stop.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %60) #15
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prev.i.i, align 4
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %60, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev1.i.i.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %64, ptr %62, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %67 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 256 to ptr), ptr %60, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cb_count = getelementptr i8, ptr %60, i32 8
  %69 = ptrtoint ptr %cb_count to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %cb_count, align 4
  %70 = ptrtoint ptr %cb_desc to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile ptr, ptr %cb_desc, align 4
  %cmp.i80.not = icmp eq ptr %71, %cb_desc
  br i1 %cmp.i80.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %skip_dma_stop.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_dma_synchronize(ptr noundef %dc) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tdma = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 7
  %0 = ptrtoint ptr %tdma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tdma, align 4
  %dev = getelementptr inbounds %struct.tegra_dma, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %do.body4

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !296
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #15, !srcloc !297
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !298
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %6, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.111, i32 noundef %call.i) #20
  br label %cleanup23

do.body4:                                         ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 826) #15
  %lock.i = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #15
  %chan_addr.i.i = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 4
  %7 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chan_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !291
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !292
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #15
  %10 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %do.body4.do.end19_crit_edge, label %if.end12

do.body4.do.end19_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end19

if.end12:                                         ; preds = %do.body4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #15
  %11 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #15
  %wq = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 18
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.end12
  %call13 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %call2.i36 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #15
  %12 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chan_addr.i.i, align 4
  %add.ptr.i.i38 = getelementptr i8, ptr %13, i32 4
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i38) #15, !srcloc !291
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !292
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i36) #15
  %15 = and i32 %14, 64
  %tobool.not.i39 = icmp eq i32 %15, 0
  br i1 %tobool.not.i39, label %for.end, label %cleanup

cleanup:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  call void @schedule() #15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  call void @finish_wait(ptr noundef %wq, ptr noundef nonnull %__wq_entry) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %do.end19

do.end19:                                         ; preds = %for.end, %do.body4.do.end19_crit_edge
  %tasklet = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 14
  call void @tasklet_kill(ptr noundef %tasklet) #15
  %16 = ptrtoint ptr %tdma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tdma, align 4
  %dev21 = getelementptr inbounds %struct.tegra_dma, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev21, align 4
  %call.i40 = call i32 @__pm_runtime_idle(ptr noundef %19, i32 noundef 5) #15
  br label %cleanup23

cleanup23:                                        ; preds = %do.end19, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dma_tx_status(ptr noundef %dc, i32 noundef %cookie, ptr noundef %txstate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !299
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %txstate, align 4
  %used2.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 1
  %5 = ptrtoint ptr %used2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %used2.i, align 4
  %residue.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %6 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %residue.i, align 4
  %in_flight_bytes.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 3
  %7 = ptrtoint ptr %in_flight_bytes.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %in_flight_bytes.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i.i = icmp sgt i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cookie)
  %cmp4.not.i.i = icmp sge i32 %3, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cookie)
  %cmp5.i.i = icmp slt i32 %1, %cookie
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %or.cond.i.i = or i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond.i.i, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.do.body2_crit_edge

if.then.i.i.do.body2_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond16.i.i, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.do.body2_crit_edge

if.else.i.i.do.body2_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body2:                                         ; preds = %if.else.i.i.do.body2_crit_edge, %if.then.i.i.do.body2_crit_edge
  %lock = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 5
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %free_dma_desc = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 11
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.body2
  %.pn.in = phi ptr [ %free_dma_desc, %do.body2 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %8 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp10.not = icmp eq ptr %.pn, %free_dma_desc
  br i1 %cmp10.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %dma_desc.0 = getelementptr i8, ptr %.pn, i32 -112
  %9 = ptrtoint ptr %dma_desc.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_desc.0, align 4
  %cmp13 = icmp eq i32 %10, %cookie
  br i1 %cmp13, label %if.then15, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %dma_desc.0.le = getelementptr i8, ptr %.pn, i32 -112
  %dma_status = getelementptr i8, ptr %.pn, i32 -4
  br label %found

for.end:                                          ; preds = %for.cond
  %pending_sg_req = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 10
  br label %for.cond26

for.cond26:                                       ; preds = %for.body32.for.cond26_crit_edge, %for.end
  %.pn103.in = phi ptr [ %pending_sg_req, %for.end ], [ %.pn103, %for.body32.for.cond26_crit_edge ]
  %11 = ptrtoint ptr %.pn103.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn103 = load ptr, ptr %.pn103.in, align 4
  %cmp29.not = icmp eq ptr %.pn103, %pending_sg_req
  br i1 %cmp29.not, label %do.body49, label %for.body32

for.body32:                                       ; preds = %for.cond26
  %dma_desc33 = getelementptr i8, ptr %.pn103, i32 8
  %12 = ptrtoint ptr %dma_desc33 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_desc33, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %cmp36 = icmp eq i32 %15, %cookie
  br i1 %cmp36, label %if.then38, label %for.body32.for.cond26_crit_edge

for.body32.for.cond26_crit_edge:                  ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond26

if.then38:                                        ; preds = %for.body32
  %prev.i.i = getelementptr i8, ptr %.pn103, i32 4
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %17, %pending_sg_req
  br i1 %cmp.i.not.i, label %if.end.i104, label %if.then38.tegra_dma_sg_bytes_xferred.exit_crit_edge

if.then38.tegra_dma_sg_bytes_xferred.exit_crit_edge: ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #17
  br label %tegra_dma_sg_bytes_xferred.exit

if.end.i104:                                      ; preds = %if.then38
  %tdma.i = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 7
  %18 = ptrtoint ptr %tdma.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tdma.i, align 4
  %chip_data.i = getelementptr inbounds %struct.tegra_dma, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip_data.i, align 4
  %support_separate_wcount_reg.i = getelementptr inbounds %struct.tegra_dma_chip_data, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %support_separate_wcount_reg.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %support_separate_wcount_reg.i, align 1, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool1.not.i = icmp eq i8 %23, 0
  br i1 %tobool1.not.i, label %if.end.i104.if.end4.i_crit_edge, label %if.then2.i

if.end.i104.if.end4.i_crit_edge:                  ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #17
  %chan_addr.i.i = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 4
  %24 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chan_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 36
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !291
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !292
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i104.if.end4.i_crit_edge
  %wcount.0.i = phi i32 [ %27, %if.then2.i ], [ 0, %if.end.i104.if.end4.i_crit_edge ]
  %chan_addr.i86.i = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 4
  %28 = ptrtoint ptr %chan_addr.i86.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chan_addr.i86.i, align 4
  %add.ptr.i87.i = getelementptr i8, ptr %29, i32 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87.i) #15, !srcloc !291
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !292
  %and.i = and i32 %31, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  %req_len.i = getelementptr i8, ptr %.pn103, i32 -8
  %32 = ptrtoint ptr %req_len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %req_len.i, align 4
  br label %tegra_dma_sg_bytes_xferred.exit

if.end14.i:                                       ; preds = %if.end4.i
  %34 = ptrtoint ptr %tdma.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tdma.i, align 4
  %chip_data7.i = getelementptr inbounds %struct.tegra_dma, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %chip_data7.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chip_data7.i, align 4
  %support_separate_wcount_reg8.i = getelementptr inbounds %struct.tegra_dma_chip_data, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %support_separate_wcount_reg8.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %support_separate_wcount_reg8.i, align 1, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool9.not.i = icmp eq i8 %39, 0
  %spec.select.i = select i1 %tobool9.not.i, i32 %31, i32 %wcount.0.i
  %req_len.i.i = getelementptr i8, ptr %.pn103, i32 -8
  %40 = ptrtoint ptr %req_len.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %req_len.i.i, align 4
  %and.i.i = and i32 %spec.select.i, 65532
  %sub.i.i = sub nuw nsw i32 -4, %and.i.i
  %sub1.i.i = add i32 %sub.i.i, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i.i)
  %tobool16.not.i = icmp eq i32 %sub1.i.i, 0
  %words_xferred.i = getelementptr i8, ptr %.pn103, i32 12
  %42 = ptrtoint ptr %words_xferred.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %words_xferred.i, align 4
  br i1 %tobool16.not.i, label %if.then17.i, label %if.else.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool18.not.i = icmp eq i32 %43, 0
  %sub.i = add i32 %41, -4
  %spec.select88.i = select i1 %tobool18.not.i, i32 0, i32 %sub.i
  br label %tegra_dma_sg_bytes_xferred.exit

if.else.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i.i, i32 %43)
  %cmp.i = icmp ult i32 %sub1.i.i, %43
  br i1 %cmp.i, label %land.end.i, label %if.else61.i

land.end.i:                                       ; preds = %if.else.i
  %.b85.i = load i1, ptr @tegra_dma_sg_bytes_xferred.__already_done, align 1
  br i1 %.b85.i, label %land.end.i.if.end51.i_crit_edge, label %if.then29.i, !prof !286

land.end.i.if.end51.i_crit_edge:                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51.i

if.then29.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @tegra_dma_sg_bytes_xferred.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 882, i32 noundef 9, ptr noundef null) #15
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then29.i, %land.end.i.if.end51.i_crit_edge
  %44 = ptrtoint ptr %req_len.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %req_len.i.i, align 4
  %sub60.i = add i32 %45, -4
  br label %tegra_dma_sg_bytes_xferred.exit

if.else61.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %46 = ptrtoint ptr %words_xferred.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub1.i.i, ptr %words_xferred.i, align 4
  br label %tegra_dma_sg_bytes_xferred.exit

tegra_dma_sg_bytes_xferred.exit:                  ; preds = %if.else61.i, %if.end51.i, %if.then17.i, %if.then13.i, %if.then38.tegra_dma_sg_bytes_xferred.exit_crit_edge
  %retval.0.i105 = phi i32 [ %33, %if.then13.i ], [ 0, %if.then38.tegra_dma_sg_bytes_xferred.exit_crit_edge ], [ %sub60.i, %if.end51.i ], [ %sub1.i.i, %if.else61.i ], [ %spec.select88.i, %if.then17.i ]
  %dma_status40 = getelementptr inbounds %struct.tegra_dma_desc, ptr %13, i32 0, i32 3
  br label %found

do.body49:                                        ; preds = %for.cond26
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_dma_tx_status.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_dma_tx_status, %if.end65)) #15
          to label %if.then56 [label %if.end65], !srcloc !294

if.then56:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %48, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_dma_tx_status.__UNIQUE_ID_ddebug275, ptr noundef %device.i, ptr noundef nonnull @.str.114, i32 noundef %cookie) #15
  br label %if.end65

found:                                            ; preds = %tegra_dma_sg_bytes_xferred.exit, %if.then15
  %bytes.0 = phi i32 [ 0, %if.then15 ], [ %retval.0.i105, %tegra_dma_sg_bytes_xferred.exit ]
  %ret.0.in = phi ptr [ %dma_status, %if.then15 ], [ %dma_status40, %tegra_dma_sg_bytes_xferred.exit ]
  %dma_desc.1 = phi ptr [ %dma_desc.0.le, %if.then15 ], [ %13, %tegra_dma_sg_bytes_xferred.exit ]
  %49 = ptrtoint ptr %ret.0.in to i32
  call void @__asan_load4_noabort(i32 %49)
  %ret.0 = load i32, ptr %ret.0.in, align 4
  %tobool61.not = icmp eq ptr %dma_desc.1, null
  %or.cond = or i1 %tobool.not.i, %tobool61.not
  br i1 %or.cond, label %found.if.end65_crit_edge, label %dma_set_residue.exit

found.if.end65_crit_edge:                         ; preds = %found
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

dma_set_residue.exit:                             ; preds = %found
  call void @__sanitizer_cov_trace_pc() #17
  %bytes_requested = getelementptr inbounds %struct.tegra_dma_desc, ptr %dma_desc.1, i32 0, i32 1
  %50 = ptrtoint ptr %bytes_requested to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bytes_requested, align 4
  %bytes_transferred = getelementptr inbounds %struct.tegra_dma_desc, ptr %dma_desc.1, i32 0, i32 2
  %52 = ptrtoint ptr %bytes_transferred to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bytes_transferred, align 4
  %add = add i32 %53, %bytes.0
  %rem = urem i32 %add, %51
  %sub = sub i32 %51, %rem
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %54 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub, ptr %residue1.i, align 4
  br label %if.end65

if.end65:                                         ; preds = %dma_set_residue.exit, %found.if.end65_crit_edge, %if.then56, %do.body49
  %ret.0117 = phi i32 [ %ret.0, %dma_set_residue.exit ], [ %ret.0, %found.if.end65_crit_edge ], [ 1, %if.then56 ], [ 1, %do.body49 ]
  tail call fastcc void @trace_tegra_dma_tx_status(ptr noundef %dc, i32 noundef %cookie, ptr noundef %txstate)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0117, %if.end65 ], [ 0, %if.then.i.i.cleanup_crit_edge ], [ 0, %if.else.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_dma_issue_pending(ptr noundef %dc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %pending_sg_req = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 10
  %0 = ptrtoint ptr %pending_sg_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pending_sg_req, align 4
  %cmp.i.not = icmp eq ptr %1, %pending_sg_req
  br i1 %cmp.i.not, label %do.end9, label %if.end

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.115) #20
  br label %end

if.end:                                           ; preds = %entry
  %busy = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 6
  %4 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %busy, align 4, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool11.not = icmp eq i8 %5, 0
  br i1 %tobool11.not, label %if.then12, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %end

if.then12:                                        ; preds = %if.end
  %tdma = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 7
  %6 = ptrtoint ptr %tdma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tdma, align 4
  %dev = getelementptr inbounds %struct.tegra_dma, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i36 = icmp slt i32 %call.i, 0
  br i1 %cmp.i36, label %if.then.i, label %if.end21

if.then.i:                                        ; preds = %if.then12
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !296
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #15
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #15, !srcloc !297
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end19_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end19_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end19

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !298
  br label %do.end19

do.end19:                                         ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end19_crit_edge
  %dev.i37 = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
  %11 = ptrtoint ptr %dev.i37 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i37, align 4
  %device.i38 = getelementptr inbounds %struct.dma_chan_dev, ptr %12, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i38, ptr noundef nonnull @.str.118) #20
  br label %end

if.end21:                                         ; preds = %if.then12
  tail call fastcc void @tdc_start_head_req(ptr noundef %dc)
  %cyclic = getelementptr inbounds %struct.tegra_dma_channel, ptr %dc, i32 0, i32 8
  %13 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cyclic, align 4, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool22.not = icmp eq i8 %14, 0
  br i1 %tobool22.not, label %if.end21.end_crit_edge, label %if.then23

if.end21.end_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %end

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 4294960) #15
  tail call fastcc void @tdc_configure_next_head_desc(ptr noundef %dc)
  br label %end

end:                                              ; preds = %if.then23, %if.end21.end_crit_edge, %do.end19, %if.end.end_crit_edge, %do.end9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra_dma_of_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %ofdma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %0 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_dma_data, align 4
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %3)
  %cmp = icmp ugt i32 %3, 31
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.tegra_dma, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.120, i32 noundef %3) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @dma_get_any_slave_channel(ptr noundef %1) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %args, align 4
  %slave_id = getelementptr inbounds %struct.tegra_dma_channel, ptr %call, i32 0, i32 15
  %8 = ptrtoint ptr %slave_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %slave_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call, %if.end4 ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tegra_dma_isr(ptr noundef %dc, i32 noundef %irq) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tegra_dma_isr, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_tegra_dma_isr, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !294

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !276) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !286

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !276) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !300
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tegra_dma_isr, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %dc, i32 noundef %irq) #15
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !301
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !301
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !276) #15
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !276) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !286

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !276) #15
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !302
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tegra_dma_isr, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_tegra_dma_isr.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_tegra_dma_isr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 56, ptr noundef nonnull @.str.52) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !303
  %38 = tail call i32 @llvm.read_register.i32(metadata !276) #15
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
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tegra_dma_complete_cb(ptr noundef %dc, i32 noundef %count, ptr noundef %ptr) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tegra_dma_complete_cb, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_tegra_dma_complete_cb, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !294

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !276) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !286

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !276) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !304
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tegra_dma_complete_cb, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %dc, i32 noundef %count, ptr noundef %ptr) #15
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !305
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !305
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !276) #15
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !276) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !286

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !276) #15
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !302
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tegra_dma_complete_cb, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_tegra_dma_complete_cb.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_tegra_dma_complete_cb.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 42, ptr noundef nonnull @.str.52) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !303
  %38 = tail call i32 @llvm.read_register.i32(metadata !276) #15
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
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_transfer_param(ptr nocapture noundef readonly %tdc, i32 noundef %direction, ptr nocapture noundef writeonly %apb_addr, ptr nocapture noundef writeonly %apb_seq, ptr nocapture noundef writeonly %csr, ptr nocapture noundef writeonly %burst_size, ptr nocapture noundef writeonly %slave_bw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %direction, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  %dst_addr = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 16, i32 2
  %1 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dst_addr, align 4
  %3 = ptrtoint ptr %apb_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %apb_addr, align 4
  %dst_addr_width = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 16, i32 4
  %4 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dst_addr_width, align 4
  %switch.tableidx = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 8
  br i1 %6, label %switch.hole_check, label %sw.bb.do.end.i_crit_edge

sw.bb.do.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

do.end.i:                                         ; preds = %switch.hole_check.do.end.i_crit_edge, %sw.bb.do.end.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %tdc, i32 0, i32 5
  %7 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %8, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device.i.i, ptr noundef nonnull @.str.76) #20
  br label %get_bus_width.exit

switch.hole_check:                                ; preds = %sw.bb
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %9 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %switch.lobit.not = icmp eq i8 %9, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end.i_crit_edge, label %switch.lookup

switch.hole_check.do.end.i_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.get_transfer_param, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_bus_width.exit

get_bus_width.exit:                               ; preds = %switch.lookup, %do.end.i
  %retval.0.i = phi i32 [ 536870912, %do.end.i ], [ %switch.load, %switch.lookup ]
  %11 = ptrtoint ptr %apb_seq to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.0.i, ptr %apb_seq, align 4
  %dst_maxburst = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 16, i32 6
  %12 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dst_maxburst, align 4
  %14 = ptrtoint ptr %burst_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %burst_size, align 4
  %15 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dst_addr_width, align 4
  %17 = ptrtoint ptr %slave_bw to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %slave_bw, align 4
  %18 = ptrtoint ptr %csr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 268435456, ptr %csr, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  %src_addr = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 16, i32 1
  %19 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %src_addr, align 4
  %21 = ptrtoint ptr %apb_addr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %apb_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 16, i32 3
  %22 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %src_addr_width, align 4
  %switch.tableidx37 = add i32 %23, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx37)
  %24 = icmp ult i32 %switch.tableidx37, 8
  br i1 %24, label %switch.hole_check38, label %sw.bb5.do.end.i33_crit_edge

sw.bb5.do.end.i33_crit_edge:                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i33

do.end.i33:                                       ; preds = %switch.hole_check38.do.end.i33_crit_edge, %sw.bb5.do.end.i33_crit_edge
  %dev.i.i31 = getelementptr inbounds %struct.dma_chan, ptr %tdc, i32 0, i32 5
  %25 = ptrtoint ptr %dev.i.i31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i.i31, align 4
  %device.i.i32 = getelementptr inbounds %struct.dma_chan_dev, ptr %26, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device.i.i32, ptr noundef nonnull @.str.76) #20
  br label %get_bus_width.exit35

switch.hole_check38:                              ; preds = %sw.bb5
  %switch.maskindex40 = trunc i32 %switch.tableidx37 to i8
  %switch.shifted41 = lshr i8 -117, %switch.maskindex40
  %27 = and i8 %switch.shifted41, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %switch.lobit42.not = icmp eq i8 %27, 0
  br i1 %switch.lobit42.not, label %switch.hole_check38.do.end.i33_crit_edge, label %switch.lookup39

switch.hole_check38.do.end.i33_crit_edge:         ; preds = %switch.hole_check38
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i33

switch.lookup39:                                  ; preds = %switch.hole_check38
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep43 = getelementptr inbounds [8 x i32], ptr @switch.table.get_transfer_param.124, i32 0, i32 %switch.tableidx37
  %28 = ptrtoint ptr %switch.gep43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load44 = load i32, ptr %switch.gep43, align 4
  br label %get_bus_width.exit35

get_bus_width.exit35:                             ; preds = %switch.lookup39, %do.end.i33
  %retval.0.i34 = phi i32 [ 536870912, %do.end.i33 ], [ %switch.load44, %switch.lookup39 ]
  %29 = ptrtoint ptr %apb_seq to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i34, ptr %apb_seq, align 4
  %src_maxburst = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 16, i32 5
  %30 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %src_maxburst, align 4
  %32 = ptrtoint ptr %burst_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %burst_size, align 4
  %33 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %src_addr_width, align 4
  %35 = ptrtoint ptr %slave_bw to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %slave_bw, align 4
  %36 = ptrtoint ptr %csr to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %csr, align 4
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %tdc, i32 0, i32 5
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %38, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.74) #20
  br label %return

return:                                           ; preds = %do.end, %get_bus_width.exit35, %get_bus_width.exit
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %get_bus_width.exit35 ], [ 0, %get_bus_width.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tegra_dma_desc_get(ptr noundef %tdc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %free_dma_desc = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 11
  %0 = ptrtoint ptr %free_dma_desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn51 = load ptr, ptr %free_dma_desc, align 4
  %cmp7.not52 = icmp eq ptr %.pn51, %free_dma_desc
  br i1 %cmp7.not52, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn53 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn51, %entry.for.body_crit_edge ]
  %flags.i = getelementptr i8, ptr %.pn53, i32 -108
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %cb_count = getelementptr i8, ptr %.pn53, i32 24
  %3 = ptrtoint ptr %cb_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cb_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %flags.i.le = getelementptr i8, ptr %.pn53, i32 -108
  %dma_desc.0.le = getelementptr i8, ptr %.pn53, i32 -112
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn53) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn53, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn53 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn53, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %11 = ptrtoint ptr %.pn53 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn53, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn53, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #15
  br label %cleanup.sink.split

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %.pn53 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn53, align 4
  %cmp7.not = icmp eq ptr %.pn, %free_dma_desc
  br i1 %cmp7.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 2304, i32 noundef 140) #21
  %tobool22.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool22.not, label %for.end.cleanup_crit_edge, label %if.end24

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end24:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i, ptr noundef %tdc) #15
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %tx_submit to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @tegra_dma_tx_submit, ptr %tx_submit, align 8
  %flags28 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end24, %list_del.exit
  %flags28.sink = phi ptr [ %flags28, %if.end24 ], [ %flags.i.le, %list_del.exit ]
  %retval.0.ph = phi ptr [ %call7.i.i, %if.end24 ], [ %dma_desc.0.le, %list_del.exit ]
  %16 = ptrtoint ptr %flags28.sink to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %flags28.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %for.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_dma_desc_put(ptr noundef %tdc, ptr noundef %dma_desc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %tx_list = getelementptr inbounds %struct.tegra_dma_desc, ptr %dma_desc, i32 0, i32 5
  %0 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %tx_list, align 4
  %cmp.i.not = icmp eq ptr %1, %tx_list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %tx_list, align 4
  %cmp.i.not.i = icmp eq ptr %3, %tx_list
  br i1 %cmp.i.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %free_sg_req = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 9
  %4 = ptrtoint ptr %free_sg_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %free_sg_req, align 4
  %prev2.i.i = getelementptr inbounds %struct.tegra_dma_desc, ptr %dma_desc, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %free_sg_req, ptr %prev3.i.i, align 4
  store ptr %3, ptr %free_sg_req, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %5, ptr %7, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev6.i.i, align 4
  %11 = ptrtoint ptr %tx_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %tx_list, ptr %tx_list, align 4
  store ptr %tx_list, ptr %prev2.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %node = getelementptr inbounds %struct.tegra_dma_desc, ptr %dma_desc, i32 0, i32 4
  %free_dma_desc = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 11
  %prev.i = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 11, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %13, ptr noundef %free_dma_desc) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %node, ptr %prev.i, align 4
  %15 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %free_dma_desc, ptr %node, align 4
  %prev3.i.i13 = getelementptr inbounds %struct.tegra_dma_desc, ptr %dma_desc, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %prev3.i.i13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i13, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %node, ptr %13, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handle_once_dma_done(ptr noundef %tdc, i1 noundef zeroext %to_terminate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %busy = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 6
  %0 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %busy, align 4
  %pending_sg_req = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 10
  %1 = ptrtoint ptr %pending_sg_req to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pending_sg_req, align 4
  %dma_desc1 = getelementptr i8, ptr %2, i32 8
  %3 = ptrtoint ptr %dma_desc1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dma_desc1, align 4
  %req_len = getelementptr i8, ptr %2, i32 -8
  %5 = ptrtoint ptr %req_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %req_len, align 4
  %bytes_transferred = getelementptr inbounds %struct.tegra_dma_desc, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %bytes_transferred to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bytes_transferred, align 4
  %add = add i32 %8, %6
  store i32 %add, ptr %bytes_transferred, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #15
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %last_sg = getelementptr i8, ptr %2, i32 -3
  %17 = ptrtoint ptr %last_sg to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %last_sg, align 1, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %list_del.exit.if.end6_crit_edge, label %if.then

list_del.exit.if.end6_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then:                                          ; preds = %list_del.exit
  %dma_status = getelementptr inbounds %struct.tegra_dma_desc, ptr %4, i32 0, i32 3
  %19 = ptrtoint ptr %dma_status to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %dma_status, align 4
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i = icmp slt i32 %21, 1
  br i1 %cmp.i, label %do.body2.i, label %dma_cookie_complete.exit, !prof !287

do.body2.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #15, !srcloc !306
  unreachable

dma_cookie_complete.exit:                         ; preds = %if.then
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %4, i32 0, i32 3
  %22 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chan.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %21, ptr %completed_cookie.i, align 4
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %4, align 4
  %cb_count = getelementptr inbounds %struct.tegra_dma_desc, ptr %4, i32 0, i32 7
  %26 = ptrtoint ptr %cb_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cb_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool2.not = icmp eq i32 %27, 0
  br i1 %tobool2.not, label %if.then3, label %dma_cookie_complete.exit.if.end_crit_edge

dma_cookie_complete.exit.if.end_crit_edge:        ; preds = %dma_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then3:                                         ; preds = %dma_cookie_complete.exit
  %cb_node = getelementptr inbounds %struct.tegra_dma_desc, ptr %4, i32 0, i32 6
  %cb_desc = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 12
  %prev.i34 = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 12, i32 1
  %28 = ptrtoint ptr %prev.i34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i34, align 4
  %call.i.i35 = tail call zeroext i1 @__list_add_valid(ptr noundef %cb_node, ptr noundef %29, ptr noundef %cb_desc) #15
  br i1 %call.i.i35, label %if.end.i.i36, label %if.then3.if.end_crit_edge

if.then3.if.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i.i36:                                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %prev.i34 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %cb_node, ptr %prev.i34, align 4
  %31 = ptrtoint ptr %cb_node to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %cb_desc, ptr %cb_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.tegra_dma_desc, ptr %4, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %cb_node, ptr %29, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i36, %if.then3.if.end_crit_edge, %dma_cookie_complete.exit.if.end_crit_edge
  %34 = ptrtoint ptr %cb_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cb_count, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %cb_count, align 4
  %node5 = getelementptr inbounds %struct.tegra_dma_desc, ptr %4, i32 0, i32 4
  %free_dma_desc = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 11
  %prev.i37 = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 11, i32 1
  %36 = ptrtoint ptr %prev.i37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i37, align 4
  %call.i.i38 = tail call zeroext i1 @__list_add_valid(ptr noundef %node5, ptr noundef %37, ptr noundef %free_dma_desc) #15
  br i1 %call.i.i38, label %if.end.i.i40, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.end.i.i40:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %38 = ptrtoint ptr %prev.i37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %node5, ptr %prev.i37, align 4
  %39 = ptrtoint ptr %node5 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %free_dma_desc, ptr %node5, align 4
  %prev3.i.i39 = getelementptr inbounds %struct.tegra_dma_desc, ptr %4, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %prev3.i.i39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i39, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %node5, ptr %37, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end.i.i40, %if.end.if.end6_crit_edge, %list_del.exit.if.end6_crit_edge
  %free_sg_req = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 9
  %prev.i42 = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 9, i32 1
  %42 = ptrtoint ptr %prev.i42 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i42, align 4
  %call.i.i43 = tail call zeroext i1 @__list_add_valid(ptr noundef %2, ptr noundef %43, ptr noundef %free_sg_req) #15
  br i1 %call.i.i43, label %if.end.i.i45, label %if.end6.list_add_tail.exit46_crit_edge

if.end6.list_add_tail.exit46_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit46

if.end.i.i45:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %44 = ptrtoint ptr %prev.i42 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %2, ptr %prev.i42, align 4
  %45 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %free_sg_req, ptr %2, align 4
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %2, ptr %43, align 4
  br label %list_add_tail.exit46

list_add_tail.exit46:                             ; preds = %if.end.i.i45, %if.end6.list_add_tail.exit46_crit_edge
  br i1 %to_terminate, label %list_add_tail.exit46.cleanup_crit_edge, label %if.end10

list_add_tail.exit46.cleanup_crit_edge:           ; preds = %list_add_tail.exit46
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %list_add_tail.exit46
  %48 = ptrtoint ptr %pending_sg_req to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %pending_sg_req, align 4
  %cmp.i47.not = icmp eq ptr %49, %pending_sg_req
  br i1 %cmp.i47.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  %tdma = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 7
  %50 = ptrtoint ptr %tdma to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tdma, align 4
  %dev = getelementptr inbounds %struct.tegra_dma, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %53, i32 noundef 5) #15
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @tdc_start_head_req(ptr noundef %tdc)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then13, %list_add_tail.exit46.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dma_tx_submit(ptr noundef %txd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %txd, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %lock = getelementptr inbounds %struct.tegra_dma_channel, ptr %1, i32 0, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %dma_status = getelementptr inbounds %struct.tegra_dma_desc, ptr %txd, i32 0, i32 3
  %2 = ptrtoint ptr %dma_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %dma_status, align 4
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chan, align 4
  %cookie2.i = getelementptr inbounds %struct.dma_chan, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cookie2.i, align 4
  %add.i = add i32 %6, 1
  %7 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 1) #15
  %8 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %cookie2.i, align 4
  %9 = ptrtoint ptr %txd to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %txd, align 4
  %tx_list = getelementptr inbounds %struct.tegra_dma_desc, ptr %txd, i32 0, i32 5
  %10 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %tx_list, align 4
  %cmp.i.not.i = icmp eq ptr %11, %tx_list
  br i1 %cmp.i.not.i, label %entry.list_splice_tail_init.exit_crit_edge, label %if.then.i

entry.list_splice_tail_init.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %pending_sg_req = getelementptr inbounds %struct.tegra_dma_channel, ptr %1, i32 0, i32 10
  %prev.i = getelementptr inbounds %struct.tegra_dma_channel, ptr %1, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.tegra_dma_desc, ptr %txd, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %11, ptr %13, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %pending_sg_req, ptr %15, align 4
  store ptr %15, ptr %prev.i, align 4
  %19 = ptrtoint ptr %tx_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %tx_list, ptr %tx_list, align 4
  store ptr %tx_list, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %entry.list_splice_tail_init.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #15
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tdc_start_head_req(ptr nocapture noundef %tdc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_sg_req = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 10
  %0 = ptrtoint ptr %pending_sg_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pending_sg_req, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !293
  tail call void @arm_heavy_mb() #15
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #15
  %chan_addr.i.i = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 4
  %5 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chan_addr.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #15, !srcloc !290
  %apb_seq.i = getelementptr i8, ptr %1, i32 -16
  %7 = ptrtoint ptr %apb_seq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %apb_seq.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !293
  tail call void @arm_heavy_mb() #15
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #15
  %10 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #15, !srcloc !290
  %apb_ptr.i = getelementptr i8, ptr %1, i32 -24
  %12 = ptrtoint ptr %apb_ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %apb_ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !293
  tail call void @arm_heavy_mb() #15
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #15
  %15 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chan_addr.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %16, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %14) #15, !srcloc !290
  %ahb_seq.i = getelementptr i8, ptr %1, i32 -20
  %17 = ptrtoint ptr %ahb_seq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ahb_seq.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !293
  tail call void @arm_heavy_mb() #15
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #15
  %20 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chan_addr.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %21, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %19) #15, !srcloc !290
  %ahb_ptr.i = getelementptr i8, ptr %1, i32 -28
  %22 = ptrtoint ptr %ahb_ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ahb_ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !293
  tail call void @arm_heavy_mb() #15
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #15
  %25 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chan_addr.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %26, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %24) #15, !srcloc !290
  %tdma.i = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 7
  %27 = ptrtoint ptr %tdma.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tdma.i, align 4
  %chip_data.i = getelementptr inbounds %struct.tegra_dma, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip_data.i, align 4
  %support_separate_wcount_reg.i = getelementptr inbounds %struct.tegra_dma_chip_data, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %support_separate_wcount_reg.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %support_separate_wcount_reg.i, align 1, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i, label %entry.tegra_dma_start.exit_crit_edge, label %if.then.i

entry.tegra_dma_start.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %tegra_dma_start.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %wcount.i = getelementptr i8, ptr %1, i32 -12
  %33 = ptrtoint ptr %wcount.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %wcount.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !293
  tail call void @arm_heavy_mb() #15
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #15
  %36 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chan_addr.i.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %37, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %35) #15, !srcloc !290
  br label %tegra_dma_start.exit

tegra_dma_start.exit:                             ; preds = %if.then.i, %entry.tegra_dma_start.exit_crit_edge
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr, align 4
  %or.i = or i32 %39, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !293
  tail call void @arm_heavy_mb() #15
  %40 = tail call i32 @llvm.bswap.i32(i32 %or.i) #15
  %41 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chan_addr.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #15, !srcloc !290
  %configured = getelementptr i8, ptr %1, i32 -4
  %43 = ptrtoint ptr %configured to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %configured, align 4
  %words_xferred = getelementptr i8, ptr %1, i32 12
  %44 = ptrtoint ptr %words_xferred to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %words_xferred, align 4
  %busy = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 6
  %45 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %busy, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handle_cont_sngl_cycle_dma_done(ptr noundef %tdc, i1 noundef zeroext %to_terminate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_sg_req = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 10
  %0 = ptrtoint ptr %pending_sg_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pending_sg_req, align 4
  %dma_desc1 = getelementptr i8, ptr %1, i32 8
  %2 = ptrtoint ptr %dma_desc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_desc1, align 4
  %bytes_transferred = getelementptr inbounds %struct.tegra_dma_desc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bytes_transferred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bytes_transferred, align 4
  %req_len = getelementptr i8, ptr %1, i32 -8
  %6 = ptrtoint ptr %req_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req_len, align 4
  %add = add i32 %7, %5
  %bytes_requested = getelementptr inbounds %struct.tegra_dma_desc, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %bytes_requested to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bytes_requested, align 4
  %rem = urem i32 %add, %9
  store i32 %rem, ptr %bytes_transferred, align 4
  %cb_count = getelementptr inbounds %struct.tegra_dma_desc, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %cb_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cb_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %cb_node = getelementptr inbounds %struct.tegra_dma_desc, ptr %3, i32 0, i32 6
  %cb_desc = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 12
  %prev.i = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 12, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %cb_node, ptr noundef %13, ptr noundef %cb_desc) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cb_node, ptr %prev.i, align 4
  %15 = ptrtoint ptr %cb_node to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cb_desc, ptr %cb_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.tegra_dma_desc, ptr %3, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %cb_node, ptr %13, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %cb_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cb_count, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %cb_count, align 4
  %words_xferred = getelementptr i8, ptr %1, i32 12
  %20 = ptrtoint ptr %words_xferred to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %words_xferred, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %cmp.i.not = icmp eq ptr %22, %pending_sg_req
  br i1 %cmp.i.not, label %if.end.if.end15_crit_edge, label %if.then6

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then6:                                         ; preds = %if.end
  %call.i.i31 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #15
  br i1 %call.i.i31, label %if.end.i.i32, label %if.then6.__list_del_entry.exit.i_crit_edge

if.then6.__list_del_entry.exit.i_crit_edge:       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %__list_del_entry.exit.i

if.end.i.i32:                                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i32, %if.then6.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 10, i32 1
  %29 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %30, ptr noundef %pending_sg_req) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %31 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %1, ptr %prev.i2.i, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %pending_sg_req, ptr %1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %1, ptr %30, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %configured = getelementptr i8, ptr %1, i32 -4
  %35 = ptrtoint ptr %configured to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %configured, align 4
  %36 = ptrtoint ptr %pending_sg_req to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pending_sg_req, align 4
  %configured.i = getelementptr i8, ptr %37, i32 -4
  %38 = ptrtoint ptr %configured.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %configured.i, align 4, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i, label %if.then13, label %if.end.i

if.end.i:                                         ; preds = %list_move_tail.exit
  br i1 %to_terminate, label %if.end.i.if.end15_crit_edge, label %if.then3.i

if.end.i.if.end15_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @tdc_configure_next_head_desc(ptr noundef %tdc) #15
  br label %if.end15

if.then13:                                        ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @tegra_dma_stop(ptr noundef %tdc) #15
  %tdma.i = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 7
  %40 = ptrtoint ptr %tdma.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tdma.i, align 4
  %dev.i = getelementptr inbounds %struct.tegra_dma, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  %call.i.i33 = tail call i32 @__pm_runtime_idle(ptr noundef %43, i32 noundef 5) #15
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %tdc, i32 0, i32 5
  %44 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %45, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i, ptr noundef nonnull @.str.101) #20
  tail call fastcc void @tegra_dma_abort_all(ptr noundef %tdc) #15
  %dma_status = getelementptr inbounds %struct.tegra_dma_desc, ptr %3, i32 0, i32 3
  %46 = ptrtoint ptr %dma_status to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3, ptr %dma_status, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then3.i, %if.end.i.if.end15_crit_edge, %if.end.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_dma_stop(ptr nocapture noundef %tdc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_addr.i = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 4
  %0 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan_addr.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #15, !srcloc !291
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !292
  %and = and i32 %3, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !293
  tail call void @arm_heavy_mb() #15
  %4 = tail call i32 @llvm.bswap.i32(i32 %and) #15
  %5 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chan_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #15, !srcloc !290
  %and1 = and i32 %3, 1073741823
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !293
  tail call void @arm_heavy_mb() #15
  %7 = tail call i32 @llvm.bswap.i32(i32 %and1) #15
  %8 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #15, !srcloc !290
  %10 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !291
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !292
  %13 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %do.body

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_dma_stop.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_dma_stop, %do.end)) #15
          to label %if.then9 [label %do.end], !srcloc !294

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %tdc, i32 0, i32 5
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %15, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_dma_stop.__UNIQUE_ID_ddebug273, ptr noundef %device.i, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.103) #15
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !293
  tail call void @arm_heavy_mb() #15
  %16 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %12) #15, !srcloc !290
  br label %if.end11

if.end11:                                         ; preds = %do.end, %entry.if.end11_crit_edge
  %busy = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 6
  %18 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %busy, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_dma_abort_all(ptr noundef %tdc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_sg_req = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 10
  %0 = ptrtoint ptr %pending_sg_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pending_sg_req, align 4
  %cmp.i.not27 = icmp eq ptr %1, %pending_sg_req
  br i1 %cmp.i.not27, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %free_sg_req = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 9
  %prev.i2.i = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 9, i32 1
  %free_dma_desc = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 11
  %prev.i = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 11, i32 1
  %cb_desc = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 12
  %prev.i22 = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 12, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end8.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %37, %if.end8.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #15
  br i1 %call.i.i, label %if.end.i.i, label %while.body.__list_del_entry.exit.i_crit_edge

while.body.__list_del_entry.exit.i_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %while.body.__list_del_entry.exit.i_crit_edge
  %9 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %2, ptr noundef %10, ptr noundef %free_sg_req) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %prev.i2.i, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %free_sg_req, ptr %2, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %2, ptr %10, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %last_sg = getelementptr i8, ptr %2, i32 -3
  %15 = ptrtoint ptr %last_sg to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %last_sg, align 1, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool2.not = icmp eq i8 %16, 0
  br i1 %tobool2.not, label %list_move_tail.exit.if.end8_crit_edge, label %if.then

list_move_tail.exit.if.end8_crit_edge:            ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then:                                          ; preds = %list_move_tail.exit
  %dma_desc3 = getelementptr i8, ptr %2, i32 8
  %17 = ptrtoint ptr %dma_desc3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dma_desc3, align 4
  %dma_status = getelementptr inbounds %struct.tegra_dma_desc, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %dma_status to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %dma_status, align 4
  %node4 = getelementptr inbounds %struct.tegra_dma_desc, ptr %18, i32 0, i32 4
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i, align 4
  %call.i.i20 = tail call zeroext i1 @__list_add_valid(ptr noundef %node4, ptr noundef %21, ptr noundef %free_dma_desc) #15
  br i1 %call.i.i20, label %if.end.i.i21, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i21:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %node4, ptr %prev.i, align 4
  %23 = ptrtoint ptr %node4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %free_dma_desc, ptr %node4, align 4
  %prev3.i.i = getelementptr inbounds %struct.tegra_dma_desc, ptr %18, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %node4, ptr %21, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i21, %if.then.list_add_tail.exit_crit_edge
  %cb_count = getelementptr inbounds %struct.tegra_dma_desc, ptr %18, i32 0, i32 7
  %26 = ptrtoint ptr %cb_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cb_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool5.not = icmp eq i32 %27, 0
  br i1 %tobool5.not, label %if.then6, label %list_add_tail.exit.if.end_crit_edge

list_add_tail.exit.if.end_crit_edge:              ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then6:                                         ; preds = %list_add_tail.exit
  %cb_node = getelementptr inbounds %struct.tegra_dma_desc, ptr %18, i32 0, i32 6
  %28 = ptrtoint ptr %prev.i22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i22, align 4
  %call.i.i23 = tail call zeroext i1 @__list_add_valid(ptr noundef %cb_node, ptr noundef %29, ptr noundef %cb_desc) #15
  br i1 %call.i.i23, label %if.end.i.i25, label %if.then6.if.end_crit_edge

if.then6.if.end_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i.i25:                                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %prev.i22 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %cb_node, ptr %prev.i22, align 4
  %31 = ptrtoint ptr %cb_node to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %cb_desc, ptr %cb_node, align 4
  %prev3.i.i24 = getelementptr inbounds %struct.tegra_dma_desc, ptr %18, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %prev3.i.i24 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i24, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %cb_node, ptr %29, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i25, %if.then6.if.end_crit_edge, %list_add_tail.exit.if.end_crit_edge
  %34 = ptrtoint ptr %cb_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cb_count, align 4
  %inc = add i32 %35, 1
  store i32 %inc, ptr %cb_count, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %list_move_tail.exit.if.end8_crit_edge
  %36 = ptrtoint ptr %pending_sg_req to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %pending_sg_req, align 4
  %cmp.i.not = icmp eq ptr %37, %pending_sg_req
  br i1 %cmp.i.not, label %if.end8.while.end_crit_edge, label %if.end8.while.body_crit_edge

if.end8.while.body_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end8.while.end_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %if.end8.while.end_crit_edge, %entry.while.end_crit_edge
  %isr_handler = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 13
  %38 = ptrtoint ptr %isr_handler to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %isr_handler, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tdc_configure_next_head_desc(ptr noundef readonly %tdc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_sg_req = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 10
  %0 = ptrtoint ptr %pending_sg_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pending_sg_req, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp.i.not = icmp eq ptr %3, %pending_sg_req
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr6 = getelementptr i8, ptr %3, i32 -32
  %tdma1.i.i = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 7
  %4 = ptrtoint ptr %tdma1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tdma1.i.i, align 4
  %chip_data.i.i = getelementptr inbounds %struct.tegra_dma, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip_data.i.i, align 4
  %support_channel_pause.i.i = getelementptr inbounds %struct.tegra_dma_chip_data, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %support_channel_pause.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %support_channel_pause.i.i, align 4, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !293
  tail call void @arm_heavy_mb() #15
  %chan_addr.i.i.i = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 4
  %10 = ptrtoint ptr %chan_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan_addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 128) #15, !srcloc !290
  br label %tegra_dma_pause.exit.i

if.else.i.i:                                      ; preds = %if.then
  %global_lock.i.i.i = getelementptr inbounds %struct.tegra_dma, ptr %5, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %global_lock.i.i.i) #15
  %12 = ptrtoint ptr %tdma1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tdma1.i.i, align 4
  %global_pause_count.i.i.i = getelementptr inbounds %struct.tegra_dma, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %global_pause_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %global_pause_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i.i.i = icmp eq i32 %15, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.tegra_dma_global_pause.exit.i.i_crit_edge

if.else.i.i.tegra_dma_global_pause.exit.i.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %tegra_dma_global_pause.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !289
  tail call void @arm_heavy_mb() #15
  %base_addr.i.i.i.i = getelementptr inbounds %struct.tegra_dma, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %base_addr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base_addr.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #15, !srcloc !290
  br label %tegra_dma_global_pause.exit.i.i

tegra_dma_global_pause.exit.i.i:                  ; preds = %if.then.i.i.i, %if.else.i.i.tegra_dma_global_pause.exit.i.i_crit_edge
  %18 = ptrtoint ptr %tdma1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tdma1.i.i, align 4
  %global_pause_count6.i.i.i = getelementptr inbounds %struct.tegra_dma, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %global_pause_count6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %global_pause_count6.i.i.i, align 4
  %inc.i.i.i = add i32 %21, 1
  store i32 %inc.i.i.i, ptr %global_pause_count6.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %global_lock.i.i.i) #15
  br label %tegra_dma_pause.exit.i

tegra_dma_pause.exit.i:                           ; preds = %tegra_dma_global_pause.exit.i.i, %if.then.i.i
  %chan_addr.i.i = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 4
  %22 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chan_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !291
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !292
  %25 = and i32 %24, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %tegra_dma_pause.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %tdc, i32 0, i32 5
  %26 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %27, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i, ptr noundef nonnull @.str.105) #20
  br label %tegra_dma_configure_for_next.exit

if.end.i:                                         ; preds = %tegra_dma_pause.exit.i
  %apb_ptr.i = getelementptr i8, ptr %3, i32 -24
  %28 = ptrtoint ptr %apb_ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %apb_ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !293
  tail call void @arm_heavy_mb() #15
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #15
  %31 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chan_addr.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %32, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %30) #15, !srcloc !290
  %ahb_ptr.i = getelementptr i8, ptr %3, i32 -28
  %33 = ptrtoint ptr %ahb_ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ahb_ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !293
  tail call void @arm_heavy_mb() #15
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #15
  %36 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chan_addr.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %37, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %35) #15, !srcloc !290
  %38 = ptrtoint ptr %tdma1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tdma1.i.i, align 4
  %chip_data.i = getelementptr inbounds %struct.tegra_dma, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chip_data.i, align 4
  %support_separate_wcount_reg.i = getelementptr inbounds %struct.tegra_dma_chip_data, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %support_separate_wcount_reg.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %support_separate_wcount_reg.i, align 1, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool3.not.i = icmp eq i8 %43, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then4.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %wcount.i = getelementptr i8, ptr %3, i32 -12
  %44 = ptrtoint ptr %wcount.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %wcount.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !293
  tail call void @arm_heavy_mb() #15
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #15
  %47 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %chan_addr.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %48, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %46) #15, !srcloc !290
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %49 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr6, align 4
  %or.i = or i32 %50, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !293
  tail call void @arm_heavy_mb() #15
  %51 = tail call i32 @llvm.bswap.i32(i32 %or.i) #15
  %52 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chan_addr.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #15, !srcloc !290
  %configured.i = getelementptr i8, ptr %3, i32 -4
  %54 = ptrtoint ptr %configured.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %configured.i, align 4
  %words_xferred.i = getelementptr i8, ptr %3, i32 12
  %55 = ptrtoint ptr %words_xferred.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %words_xferred.i, align 4
  br label %tegra_dma_configure_for_next.exit

tegra_dma_configure_for_next.exit:                ; preds = %if.end6.i, %do.end.i
  tail call fastcc void @tegra_dma_resume(ptr noundef %tdc) #15
  br label %if.end

if.end:                                           ; preds = %tegra_dma_configure_for_next.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_dma_resume(ptr nocapture noundef readonly %tdc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tdma1 = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 7
  %0 = ptrtoint ptr %tdma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tdma1, align 4
  %chip_data = getelementptr inbounds %struct.tegra_dma, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data, align 4
  %support_channel_pause = getelementptr inbounds %struct.tegra_dma_chip_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %support_channel_pause to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %support_channel_pause, align 4, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !293
  tail call void @arm_heavy_mb() #15
  %chan_addr.i = getelementptr inbounds %struct.tegra_dma_channel, ptr %tdc, i32 0, i32 4
  %6 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #15, !srcloc !290
  br label %if.end

if.else:                                          ; preds = %entry
  %global_lock.i = getelementptr inbounds %struct.tegra_dma, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %global_lock.i) #15
  %8 = ptrtoint ptr %tdma1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tdma1, align 4
  %global_pause_count.i = getelementptr inbounds %struct.tegra_dma, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %global_pause_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %global_pause_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  br i1 %cmp.i, label %do.end.i, label %if.end23.critedge.i, !prof !287

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 375, i32 noundef 9, ptr noundef null) #15
  br label %tegra_dma_global_resume.exit

if.end23.critedge.i:                              ; preds = %if.else
  %dec.i = add i32 %11, -1
  %12 = ptrtoint ptr %global_pause_count.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %dec.i, ptr %global_pause_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp26.i = icmp eq i32 %dec.i, 0
  br i1 %cmp26.i, label %if.then27.i, label %if.end23.critedge.i.tegra_dma_global_resume.exit_crit_edge

if.end23.critedge.i.tegra_dma_global_resume.exit_crit_edge: ; preds = %if.end23.critedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %tegra_dma_global_resume.exit

if.then27.i:                                      ; preds = %if.end23.critedge.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !289
  tail call void @arm_heavy_mb() #15
  %base_addr.i.i = getelementptr inbounds %struct.tegra_dma, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base_addr.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 128) #15, !srcloc !290
  br label %tegra_dma_global_resume.exit

tegra_dma_global_resume.exit:                     ; preds = %if.then27.i, %if.end23.critedge.i.tegra_dma_global_resume.exit_crit_edge, %do.end.i
  tail call void @_raw_spin_unlock(ptr noundef %global_lock.i) #15
  br label %if.end

if.end:                                           ; preds = %tegra_dma_global_resume.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #14

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_tegra_dma_tx_status(ptr noundef %dc, i32 noundef %cookie, ptr noundef %state) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tegra_dma_tx_status, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_tegra_dma_tx_status, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !294

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !276) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !286

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !276) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !307
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tegra_dma_tx_status, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %dc, i32 noundef %cookie, ptr noundef %state) #15
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !308
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !308
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !276) #15
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !276) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !286

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.53, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !276) #15
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !302
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tegra_dma_tx_status, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_tegra_dma_tx_status.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_tegra_dma_tx_status.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.51, i32 noundef 25, ptr noundef nonnull @.str.52) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !303
  %38 = tail call i32 @llvm.read_register.i32(metadata !276) #15
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
declare dso_local ptr @dma_get_any_slave_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dma_dev_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %chip_data = getelementptr inbounds %struct.tegra_dma, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp29.not = icmp eq i32 %5, 0
  br i1 %cmp29.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %entry.for.body_crit_edge
  %i.030 = phi i32 [ %inc, %for.inc.critedge.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %tasklet = getelementptr %struct.tegra_dma, ptr %1, i32 0, i32 8, i32 %i.030, i32 14
  tail call void @tasklet_kill(ptr noundef %tasklet) #15
  %lock = getelementptr %struct.tegra_dma, ptr %1, i32 0, i32 8, i32 %i.030, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %busy7 = getelementptr %struct.tegra_dma, ptr %1, i32 0, i32 8, i32 %i.030, i32 6
  %6 = ptrtoint ptr %busy7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %busy7, align 4, !range !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #15
  br i1 %tobool.not, label %for.inc.critedge, label %do.end12

do.end12:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %dev13 = getelementptr inbounds %struct.tegra_dma, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.122, i32 noundef %i.030) #20
  br label %cleanup15

for.inc.critedge:                                 ; preds = %for.body
  %inc = add nuw i32 %i.030, 1
  %10 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip_data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.inc.critedge.for.body_crit_edge, label %for.inc.critedge.for.end_crit_edge

for.inc.critedge.for.end_crit_edge:               ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc.critedge.for.end_crit_edge, %entry.for.end_crit_edge
  %call14 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #15
  br label %cleanup15

cleanup15:                                        ; preds = %for.end, %do.end12
  %retval.2 = phi i32 [ %call14, %for.end ], [ -16, %do.end12 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dma_dev_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @tegra_dma_init_hw(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dma_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dma_clk = getelementptr inbounds %struct.tegra_dma, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dma_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_dma_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dma_clk = getelementptr inbounds %struct.tegra_dma, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dma_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %3) #15
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
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
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nobuiltin }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !31, !33, !34, !35, !36, !37, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !65, !67, !69, !70, !71, !72, !73, !74, !75, !77, !79, !80, !81, !83, !84, !86, !88, !89, !90, !92, !93, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !123, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !200, !201, !202, !204, !205, !207, !208, !209, !211, !212, !213, !214, !216, !217, !218, !220, !221, !222, !223, !225, !226, !227, !228, !230, !231, !232, !234, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !250, !252, !253, !254, !256, !257, !258, !259, !261, !263, !265, !267, !269, !271, !273, !274, !275}
!llvm.named.register.sp = !{!276}
!llvm.module.flags = !{!277, !278, !279, !280, !281, !282, !283, !284}
!llvm.ident = !{!285}

!0 = !{ptr @__tracepoint_tegra_dma_tx_status, !1, !"__tracepoint_tegra_dma_tx_status", i1 false, i1 false}
!1 = !{!"../include/trace/events/tegra_apb_dma.h", i32 10, i32 1}
!2 = !{ptr @__tracepoint_ptr_tegra_dma_tx_status, !1, !"__tracepoint_ptr_tegra_dma_tx_status", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_tegra_dma_tx_status, !1, !"__SCK__tp_func_tegra_dma_tx_status", i1 false, i1 false}
!4 = !{ptr @__tracepoint_tegra_dma_complete_cb, !5, !"__tracepoint_tegra_dma_complete_cb", i1 false, i1 false}
!5 = !{!"../include/trace/events/tegra_apb_dma.h", i32 27, i32 1}
!6 = !{ptr @__tracepoint_ptr_tegra_dma_complete_cb, !5, !"__tracepoint_ptr_tegra_dma_complete_cb", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_tegra_dma_complete_cb, !5, !"__SCK__tp_func_tegra_dma_complete_cb", i1 false, i1 false}
!8 = !{ptr @__tracepoint_tegra_dma_isr, !9, !"__tracepoint_tegra_dma_isr", i1 false, i1 false}
!9 = !{!"../include/trace/events/tegra_apb_dma.h", i32 44, i32 1}
!10 = !{ptr @__tracepoint_ptr_tegra_dma_isr, !9, !"__tracepoint_ptr_tegra_dma_isr", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_tegra_dma_isr, !9, !"__SCK__tp_func_tegra_dma_isr", i1 false, i1 false}
!12 = !{ptr @event_class_tegra_dma_tx_status, !1, !"event_class_tegra_dma_tx_status", i1 false, i1 false}
!13 = !{ptr @event_tegra_dma_tx_status, !1, !"event_tegra_dma_tx_status", i1 false, i1 false}
!14 = !{ptr @__event_tegra_dma_tx_status, !1, !"__event_tegra_dma_tx_status", i1 false, i1 false}
!15 = !{ptr @event_class_tegra_dma_complete_cb, !5, !"event_class_tegra_dma_complete_cb", i1 false, i1 false}
!16 = !{ptr @event_tegra_dma_complete_cb, !5, !"event_tegra_dma_complete_cb", i1 false, i1 false}
!17 = !{ptr @__event_tegra_dma_complete_cb, !5, !"__event_tegra_dma_complete_cb", i1 false, i1 false}
!18 = !{ptr @event_class_tegra_dma_isr, !9, !"event_class_tegra_dma_isr", i1 false, i1 false}
!19 = !{ptr @event_tegra_dma_isr, !9, !"event_tegra_dma_isr", i1 false, i1 false}
!20 = !{ptr @__event_tegra_dma_isr, !9, !"__event_tegra_dma_isr", i1 false, i1 false}
!21 = !{ptr @__bpf_trace_tp_map_tegra_dma_tx_status, !1, !"__bpf_trace_tp_map_tegra_dma_tx_status", i1 false, i1 false}
!22 = !{ptr @__bpf_trace_tp_map_tegra_dma_complete_cb, !5, !"__bpf_trace_tp_map_tegra_dma_complete_cb", i1 false, i1 false}
!23 = !{ptr @__bpf_trace_tp_map_tegra_dma_isr, !9, !"__bpf_trace_tp_map_tegra_dma_isr", i1 false, i1 false}
!24 = !{ptr @__initcall__kmod_tegra20_apb_dma__277_1689_tegra_dmac_driver_init6, !25, !"__initcall__kmod_tegra20_apb_dma__277_1689_tegra_dmac_driver_init6", i1 false, i1 false}
!25 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1689, i32 1}
!26 = !{ptr @__exitcall_tegra_dmac_driver_exit, !25, !"__exitcall_tegra_dmac_driver_exit", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_description278, !28, !"__UNIQUE_ID_description278", i1 false, i1 false}
!28 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1691, i32 1}
!29 = !{ptr @__UNIQUE_ID_author279, !30, !"__UNIQUE_ID_author279", i1 false, i1 false}
!30 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1692, i32 1}
!31 = !{ptr @__UNIQUE_ID_file280, !32, !"__UNIQUE_ID_file280", i1 false, i1 false}
!32 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1693, i32 1}
!33 = !{ptr @__UNIQUE_ID_license281, !32, !"__UNIQUE_ID_license281", i1 false, i1 false}
!34 = !{ptr @__tpstrtab_tegra_dma_tx_status, !1, !"__tpstrtab_tegra_dma_tx_status", i1 false, i1 false}
!35 = !{ptr @__tpstrtab_tegra_dma_complete_cb, !5, !"__tpstrtab_tegra_dma_complete_cb", i1 false, i1 false}
!36 = !{ptr @__tpstrtab_tegra_dma_isr, !9, !"__tpstrtab_tegra_dma_isr", i1 false, i1 false}
!37 = !{ptr @str__tegra_apb_dma__trace_system_name, !38, !"str__tegra_apb_dma__trace_system_name", i1 false, i1 false}
!38 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!39 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @trace_event_fields_tegra_dma_tx_status, !1, !"trace_event_fields_tegra_dma_tx_status", i1 false, i1 false}
!47 = !{ptr @trace_event_type_funcs_tegra_dma_tx_status, !1, !"trace_event_type_funcs_tegra_dma_tx_status", i1 false, i1 false}
!48 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @print_fmt_tegra_dma_tx_status, !1, !"print_fmt_tegra_dma_tx_status", i1 false, i1 false}
!50 = !{ptr @.str.8, !5, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.9, !5, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.10, !5, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.11, !5, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @trace_event_fields_tegra_dma_complete_cb, !5, !"trace_event_fields_tegra_dma_complete_cb", i1 false, i1 false}
!55 = !{ptr @trace_event_type_funcs_tegra_dma_complete_cb, !5, !"trace_event_type_funcs_tegra_dma_complete_cb", i1 false, i1 false}
!56 = !{ptr @.str.12, !5, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @print_fmt_tegra_dma_complete_cb, !5, !"print_fmt_tegra_dma_complete_cb", i1 false, i1 false}
!58 = !{ptr @.str.13, !9, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @trace_event_fields_tegra_dma_isr, !9, !"trace_event_fields_tegra_dma_isr", i1 false, i1 false}
!60 = !{ptr @trace_event_type_funcs_tegra_dma_isr, !9, !"trace_event_type_funcs_tegra_dma_isr", i1 false, i1 false}
!61 = !{ptr @.str.14, !9, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @print_fmt_tegra_dma_isr, !9, !"print_fmt_tegra_dma_isr", i1 false, i1 false}
!63 = !{ptr @.str.15, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1681, i32 11}
!65 = !{ptr @tegra_dmac_driver, !66, !"tegra_dmac_driver", i1 false, i1 false}
!66 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1679, i32 31}
!67 = !{ptr @.str.16, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1464, i32 3}
!69 = !{ptr @.str.17, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.18, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @tegra_dma_probe._entry, !68, !"_entry", i1 false, i1 false}
!74 = !{ptr @tegra_dma_probe._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1468, i32 49}
!77 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1470, i32 3}
!79 = !{ptr @tegra_dma_probe._entry.22, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @tegra_dma_probe._entry_ptr.24, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @tegra_dma_probe.__key, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1474, i32 2}
!83 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.26, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1502, i32 42}
!86 = !{ptr @.str.28, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1506, i32 4}
!88 = !{ptr @tegra_dma_probe._entry.27, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @tegra_dma_probe._entry_ptr.29, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @tegra_dma_probe.__key.30, !91, !"__key", i1 false, i1 false}
!91 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1521, i32 3}
!92 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @tegra_dma_probe.__key.32, !94, !"__key", i1 false, i1 false}
!94 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1522, i32 3}
!95 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1560, i32 3}
!98 = !{ptr @tegra_dma_probe._entry.34, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @tegra_dma_probe._entry_ptr.36, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1568, i32 3}
!102 = !{ptr @tegra_dma_probe._entry.37, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @tegra_dma_probe._entry_ptr.39, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1573, i32 2}
!106 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @tegra_dma_probe._entry.40, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @tegra_dma_probe._entry_ptr.43, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1415, i32 3}
!111 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @tegra_dma_init_hw._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @tegra_dma_init_hw._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1421, i32 3}
!116 = !{ptr @tegra_dma_init_hw._entry.46, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @tegra_dma_init_hw._entry_ptr.48, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 686, i32 2}
!120 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @tegra_dma_isr._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @tegra_dma_isr._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!124 = !{ptr @.str.51, !9, !"<string literal>", i1 false, i1 false}
!125 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!126 = !{ptr @.str.52, !9, !"<string literal>", i1 false, i1 false}
!127 = distinct !{null, !128, !"__already_done", i1 false, i1 false}
!128 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!129 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!130 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!131 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1323, i32 2}
!134 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @tegra_dma_free_chan_resources.__UNIQUE_ID_ddebug276, !133, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!137 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1059, i32 3}
!139 = !{ptr @.str.58, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @tegra_dma_prep_slave_sg._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @tegra_dma_prep_slave_sg._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.60, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1063, i32 3}
!144 = !{ptr @tegra_dma_prep_slave_sg._entry.59, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @tegra_dma_prep_slave_sg._entry_ptr.61, !143, !"_entry_ptr", i1 false, i1 false}
!146 = distinct !{null, !147, !"__already_done", i1 false, i1 false}
!147 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1088, i32 3}
!148 = !{ptr @.str.63, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1096, i32 3}
!150 = !{ptr @tegra_dma_prep_slave_sg._entry.62, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @tegra_dma_prep_slave_sg._entry_ptr.64, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1115, i32 4}
!154 = !{ptr @tegra_dma_prep_slave_sg._entry.65, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @tegra_dma_prep_slave_sg._entry_ptr.67, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.69, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1123, i32 4}
!158 = !{ptr @tegra_dma_prep_slave_sg._entry.68, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @tegra_dma_prep_slave_sg._entry_ptr.70, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.72, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1157, i32 4}
!162 = !{ptr @tegra_dma_prep_slave_sg._entry.71, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @tegra_dma_prep_slave_sg._entry_ptr.73, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.74, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1021, i32 3}
!166 = !{ptr @.str.75, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @get_transfer_param._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @get_transfer_param._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.76, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 958, i32 3}
!171 = !{ptr @.str.77, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @get_bus_width._entry, !170, !"_entry", i1 false, i1 false}
!174 = !{ptr @get_bus_width._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.79, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1183, i32 3}
!177 = !{ptr @.str.80, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @tegra_dma_prep_dma_cyclic._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @tegra_dma_prep_dma_cyclic._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.82, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1188, i32 3}
!182 = !{ptr @tegra_dma_prep_dma_cyclic._entry.81, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @tegra_dma_prep_dma_cyclic._entry_ptr.83, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.85, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1199, i32 3}
!186 = !{ptr @tegra_dma_prep_dma_cyclic._entry.84, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @tegra_dma_prep_dma_cyclic._entry_ptr.86, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.88, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1208, i32 3}
!190 = !{ptr @tegra_dma_prep_dma_cyclic._entry.87, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @tegra_dma_prep_dma_cyclic._entry_ptr.89, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.91, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1215, i32 3}
!194 = !{ptr @tegra_dma_prep_dma_cyclic._entry.90, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @tegra_dma_prep_dma_cyclic._entry_ptr.92, !193, !"_entry_ptr", i1 false, i1 false}
!196 = distinct !{null, !197, !"__already_done", i1 false, i1 false}
!197 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1236, i32 3}
!198 = !{ptr @.str.94, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1244, i32 3}
!200 = !{ptr @tegra_dma_prep_dma_cyclic._entry.93, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @tegra_dma_prep_dma_cyclic._entry_ptr.95, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @tegra_dma_prep_dma_cyclic._entry.96, !203, !"_entry", i1 false, i1 false}
!203 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1260, i32 4}
!204 = !{ptr @tegra_dma_prep_dma_cyclic._entry_ptr.97, !203, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.99, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1294, i32 4}
!207 = !{ptr @tegra_dma_prep_dma_cyclic._entry.98, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @tegra_dma_prep_dma_cyclic._entry_ptr.100, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.101, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 564, i32 3}
!211 = !{ptr @.str.102, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @handle_continuous_head_request._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @handle_continuous_head_request._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.103, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 427, i32 3}
!216 = !{ptr @.str.104, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @tegra_dma_stop.__UNIQUE_ID_ddebug273, !215, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!218 = !{ptr @.str.105, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 475, i32 3}
!220 = !{ptr @.str.106, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @tegra_dma_configure_for_next._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @tegra_dma_configure_for_next._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.107, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 341, i32 3}
!225 = !{ptr @.str.108, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @tegra_dma_slave_config._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @tegra_dma_slave_config._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.109, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 761, i32 3}
!230 = !{ptr @.str.110, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @tegra_dma_terminate_all.__UNIQUE_ID_ddebug274, !229, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!232 = !{ptr @.str.111, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 817, i32 3}
!234 = !{ptr @.str.112, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @tegra_dma_synchronize._entry, !233, !"_entry", i1 false, i1 false}
!236 = !{ptr @tegra_dma_synchronize._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.113, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 928, i32 2}
!239 = !{ptr @.str.114, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @tegra_dma_tx_status.__UNIQUE_ID_ddebug275, !238, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!241 = distinct !{null, !242, !"__already_done", i1 false, i1 false}
!242 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 882, i32 3}
!243 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!244 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!245 = !{ptr @.str.115, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 716, i32 3}
!247 = !{ptr @.str.116, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @tegra_dma_issue_pending._entry, !246, !"_entry", i1 false, i1 false}
!249 = !{ptr @tegra_dma_issue_pending._entry_ptr, !246, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.118, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 722, i32 4}
!252 = !{ptr @tegra_dma_issue_pending._entry.117, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @tegra_dma_issue_pending._entry_ptr.119, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.120, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1359, i32 3}
!256 = !{ptr @.str.121, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @tegra_dma_of_xlate._entry, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @tegra_dma_of_xlate._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @tegra_dma_of_match, !260, !"tegra_dma_of_match", i1 false, i1 false}
!260 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1661, i32 34}
!261 = !{ptr @tegra148_dma_chip_data, !262, !"tegra148_dma_chip_data", i1 false, i1 false}
!262 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1401, i32 41}
!263 = !{ptr @tegra114_dma_chip_data, !264, !"tegra114_dma_chip_data", i1 false, i1 false}
!264 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1392, i32 41}
!265 = !{ptr @tegra30_dma_chip_data, !266, !"tegra30_dma_chip_data", i1 false, i1 false}
!266 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1383, i32 41}
!267 = !{ptr @tegra20_dma_chip_data, !268, !"tegra20_dma_chip_data", i1 false, i1 false}
!268 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1374, i32 41}
!269 = !{ptr @tegra_dma_dev_pm_ops, !270, !"tegra_dma_dev_pm_ops", i1 false, i1 false}
!270 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1655, i32 32}
!271 = !{ptr @.str.122, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/dma/tegra20-apb-dma.c", i32 1635, i32 4}
!273 = !{ptr @.str.123, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @tegra_dma_dev_suspend._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @tegra_dma_dev_suspend._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{!"sp"}
!277 = !{i32 1, !"wchar_size", i32 2}
!278 = !{i32 1, !"min_enum_size", i32 4}
!279 = !{i32 8, !"branch-target-enforcement", i32 0}
!280 = !{i32 8, !"sign-return-address", i32 0}
!281 = !{i32 8, !"sign-return-address-all", i32 0}
!282 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!283 = !{i32 7, !"uwtable", i32 1}
!284 = !{i32 7, !"frame-pointer", i32 2}
!285 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!286 = !{!"branch_weights", i32 2000, i32 1}
!287 = !{!"branch_weights", i32 1, i32 2000}
!288 = !{!"auto-init"}
!289 = !{i64 2155723022}
!290 = !{i64 6350221}
!291 = !{i64 6350639}
!292 = !{i64 2155725103}
!293 = !{i64 2155724258}
!294 = !{i64 2148765631, i64 2148765636, i64 2148765649, i64 2148765693, i64 2148765727, i64 2148765748}
!295 = !{i8 0, i8 2}
!296 = !{i64 2148205774}
!297 = !{i64 690597, i64 690622, i64 690644, i64 690660, i64 690672, i64 690692, i64 690716, i64 690732, i64 690744}
!298 = !{i64 2148205962}
!299 = !{i64 2154486806}
!300 = !{i64 2154601006}
!301 = !{i64 2154601209}
!302 = !{i64 2149341717}
!303 = !{i64 2149342753}
!304 = !{i64 2154580395}
!305 = !{i64 2154580628}
!306 = !{i64 2154485306, i64 2154485793, i64 2154485343, i64 2154485399, i64 2154485433, i64 2154485457, i64 2154485498, i64 2154485519, i64 2154485547, i64 2154485581}
!307 = !{i64 2154563326}
!308 = !{i64 2154563561}
