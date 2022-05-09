; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/bpf/verifier.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/bpf/verifier.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfp_insn_meta = type { %struct.bpf_insn, %union.anon, i32, i16, i16, i16, ptr, %struct.list_head }
%struct.bpf_insn = type { i8, i8, i16, i32 }
%union.anon = type { %struct.anon.199 }
%struct.anon.199 = type { i32, %struct.bpf_reg_state, %struct.nfp_bpf_reg_state }
%struct.bpf_reg_state = type { i32, i32, %union.anon.0, i32, i32, %struct.tnum, i64, i64, i64, i64, i32, i32, i32, i32, ptr, i32, i32, i32, i8 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, i32 }
%struct.tnum = type { i64, i64 }
%struct.nfp_bpf_reg_state = type { %struct.bpf_reg_state, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nfp_prog = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.list_head }
%struct.bpf_verifier_env = type { i32, i32, ptr, ptr, ptr, i32, i8, i8, ptr, ptr, ptr, [64 x ptr], [64 x %struct.btf_mod_pair], i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, %struct.bpf_verifier_log, [257 x %struct.bpf_subprog_info], [75 x %struct.bpf_id_pair], %struct.anon.193, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, %struct.sockptr_t, i32, i64, i32, i32, [64 x i8] }
%struct.btf_mod_pair = type { ptr, ptr }
%struct.bpf_verifier_log = type { i32, [1024 x i8], ptr, i32, i32 }
%struct.bpf_subprog_info = type { i32, i32, i16, i8, i8, i8, i8 }
%struct.bpf_id_pair = type { i32, i32 }
%struct.anon.193 = type { ptr, ptr, i32 }
%struct.sockptr_t = type { %union.anon.194, i8 }
%union.anon.194 = type { ptr }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.115 }
%union.anon.115 = type { %struct.anon.116 }
%struct.anon.116 = type { %struct.anon.117, [0 x %struct.sock_filter] }
%struct.anon.117 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.bpf_ksym, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i32, [2 x ptr], [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, %union.anon.114 }
%struct.atomic64_t = type { i64 }
%struct.hlist_node = type { ptr, ptr }
%struct.bpf_ksym = type { i32, i32, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.31 }
%union.anon.31 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.114 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.bpf_prog_offload = type { ptr, ptr, ptr, ptr, %struct.list_head, i8, i8, ptr, i32 }
%struct.bpf_verifier_state = type { [8 x ptr], ptr, i32, i32, i32, i32, i8, i32, i32, ptr, i32 }
%struct.nfp_app_bpf = type { ptr, %struct.nfp_ccm, ptr, i32, i32, i32, %struct.list_head, i32, i32, %struct.rhashtable, i32, %struct.nfp_bpf_cap_adjust_head, %struct.anon.243, %struct.anon.244, i8, i8, i8, i8 }
%struct.nfp_ccm = type { ptr, [2048 x i32], i16, i16, %struct.sk_buff_head, %struct.wait_queue_head }
%struct.sk_buff_head = type { %union.anon.106, i32, %struct.spinlock }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.30 }
%union.anon.30 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.nfp_bpf_cap_adjust_head = type { i32, i32, i32, i32, i32 }
%struct.anon.243 = type { i32, i32, i32, i32, i32, i32 }
%struct.anon.244 = type { i32, i32, i32, i32 }
%struct.bpf_offloaded_map = type { %struct.bpf_map, ptr, ptr, ptr, %struct.list_head, [108 x i8] }
%struct.bpf_map = type { ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], i8, i8, [30 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, %struct.atomic64_t, [96 x i8] }
%struct.bpf_func_state = type { [11 x %struct.bpf_reg_state], i32, i32, i32, i32, i8, i8, i32, ptr, i32, ptr }
%struct.bpf_stack_state = type { %struct.bpf_reg_state, [8 x i8] }
%struct.nfp_bpf_map = type { ptr, ptr, i32, %struct.spinlock, i32, i32, i64, ptr, %struct.list_head, [0 x %struct.nfp_bpf_map_word] }
%struct.nfp_bpf_map_word = type { i8 }
%struct.nfp_app = type { ptr, ptr, ptr, ptr, [3 x ptr], ptr, i32, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.201, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.201 = type { ptr }
%struct.anon = type { %struct.bpf_reg_state, ptr, i16, i8, %struct.anon.197, i8, i8 }
%struct.anon.197 = type { i16, i16, i8 }
%struct.nfp_bpf_subprog_info = type { i16, i8 }
%struct.bpf_insn_aux_data = type { %union.anon.188, i64, i32, i32, i8, i8, i8, i32, i8 }
%union.anon.188 = type { %struct.anon.190 }
%struct.anon.190 = type { i32, %union.anon.191 }
%union.anon.191 = type { %struct.anon.192 }
%struct.anon.192 = type { ptr, i32 }
%struct.anon.198 = type { ptr, i8, i32 }

@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[nfp] instruction %#02x not supported\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[nfp] program uses extended registers - jit hardening?\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[nfp] stack too large: program %dB > FW stack %dB\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[nfp] branch hard wire at %d changes target %d -> %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[nfp] unsupported instruction replacement %hhx -> %hhx\0A\00", [40 x i8] zeroinitializer }, align 32
@nfp_bpf_opt_remove_insns.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/ethernet/netronome/nfp/bpf/verifier.c\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[nfp] adjust_head not supported by FW\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"[nfp] adjust_head: FW requires shifting metadata, not supported by the driver\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"[nfp] adjust_tail not supported by FW\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"map_lookup\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"map_update\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"map_delete\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"[nfp] bpf_get_prandom_u32(): FW doesn't support random number generation\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[nfp] event_output: not supported by FW\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[nfp] event_output: must use BPF_F_CURRENT_CPU, var_off: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[nfp] event_output: unsupported ptr type: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"event_output\00", [19 x i8] zeroinitializer }, align 32
@nfp_bpf_check_helper_call.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@nfp_bpf_check_helper_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 285, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"bpf: note: return codes and behavior of bpf_event_output() helper differs for offloaded programs!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nfp_bpf_check_helper_call\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_bpf_check_helper_call._entry_ptr = internal global ptr @nfp_bpf_check_helper_call._entry, section ".printk_index", align 4
@.str.21 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"[nfp] warning: return codes and behavior of event_output helper differ for offload!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[nfp] event_output: ptr type changed: %d %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[nfp] unsupported function id: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[nfp] %s: not supported by FW\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[nfp] %s: unsupported ptr type %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"[nfp] %s: variable pointer\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[nfp] %s: unaligned stack pointer %lld\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [149 x i8], [43 x i8] } { [149 x i8] c"[nfp] value at offset %d/%d may be non-zero, bpf_map_update_elem() is required to initialize atomic counters to zero to avoid offload endian issues\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[nfp] unsupported exit state: %d, var_off: %s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[nfp] unsupported exit state: %d, imm: %llx\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[nfp] unsupported ptr type: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"[nfp] map writes not supported\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[nfp] ptr type changed for instruction %d -> %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"[nfp] variable ptr stack access\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[nfp] stack access changed location was:%d is:%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"[nfp] map value offset is variable\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[nfp] map value access out-of-bounds\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[nfp] map value use type conflict %s vs %s off: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"[nfp] atomic counter in map value may already be initialized to non-zero value off: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@nfp_bpf_map_use_name.names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"unused\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"atomic\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[nfp] queue selection not supported by FW\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[nfp] unsupported store to context field\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[nfp] atomic op not implemented: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[nfp] atomic add not to a map value pointer: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[nfp] atomic add not of a scalar: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[nfp] multiplier is not within u32 value range\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[nfp] multiplicand is not within u32 value range\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"[nfp] sign extended multiplicand won't be within u32 value range\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[nfp] dividend is not within u32 value range\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[nfp] divisor is not constant\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[nfp] divisor is not within u32 value range\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"[nfp] divide by negative constant is not supported\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"[nfp] BUG: number of processed BPF functions is not consistent (processed %d, expected %d)\0A\00", [36 x i8] zeroinitializer }, align 32
@switch.table.nfp_bpf_map_mark_used = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 4, i32 2], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 133, i64 149]
@__sancov_gen_cov_switch_values.58 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 7, i64 25, i64 44, i64 65]
@__sancov_gen_cov_switch_values.59 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 64, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 8, i64 97, i64 99, i64 195]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 3, i64 4, i64 7]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 8, i64 99, i64 195]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 3, i64 4, i64 7]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 3, i64 4, i64 7]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 128, i64 144]
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 641, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 648, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 798, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 828, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 836, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 851, i32 7 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 183, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 187, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 196, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 202, i32 28 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 210, i32 28 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 220, i32 28 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 230, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 240, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 253, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 267, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 273, i32 29 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 284, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 286, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 292, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 299, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 162, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 131, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 136, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 142, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 113, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 324, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 334, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 461, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 479, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 491, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 354, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 372, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 427, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 437, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 398, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 406, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 379, i32 28 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 380, i32 22 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 381, i32 24 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 382, i32 25 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 383, i32 30 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 387, i32 10 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 514, i32 5 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 518, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 533, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 538, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 543, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 583, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 587, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 592, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 609, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 614, i32 5 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 618, i32 5 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 623, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.247 = private constant [53 x i8] c"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 690, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [35 x i8] c"switch.table.nfp_bpf_map_mark_used\00", align 1
@llvm.compiler.used = appending global [62 x ptr] [ptr @nfp_bpf_check_helper_call._entry, ptr @nfp_bpf_check_helper_call._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @nfp_bpf_map_use_name.names, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @switch.table.nfp_bpf_map_mark_used], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_check_helper_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 149, i32 192, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_bpf_map_use_name.names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nfp_bpf_map_mark_used to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_bpf_goto_meta(ptr nocapture noundef readonly %nfp_prog, ptr noundef readonly %meta, i32 noundef %insn_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %n = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 3
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %n, align 4
  %conv = zext i16 %1 to i32
  %sub = sub i32 %conv, %insn_idx
  %sub3 = sub i32 %insn_idx, %conv
  %2 = tail call i32 @llvm.abs.i32(i32 %sub3, i1 false)
  %n_insns = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 20
  %3 = ptrtoint ptr %n_insns to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n_insns, align 4
  %5 = xor i32 %insn_idx, -1
  %sub6 = add i32 %4, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %sub6)
  %cmp7 = icmp ugt i32 %2, %sub6
  br i1 %cmp7, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 21, i32 1
  %6 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 -264
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %backward.0 = phi i32 [ %sub6, %if.then ], [ %sub, %entry.if.end_crit_edge ]
  %meta.addr.0 = phi ptr [ %add.ptr, %if.then ], [ %meta, %entry.if.end_crit_edge ]
  %8 = tail call i32 @llvm.umin.i32(i32 %sub3, i32 %backward.0)
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %insn_idx)
  %cmp20 = icmp ugt i32 %8, %insn_idx
  call void @__sanitizer_cov_trace_cmp4(i32 %backward.0, i32 %insn_idx)
  %cmp22 = icmp ugt i32 %backward.0, %insn_idx
  %or.cond = select i1 %cmp20, i1 %cmp22, i1 false
  br i1 %or.cond, label %if.then24, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %insns26 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 21
  %9 = ptrtoint ptr %insns26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %insns26, align 4
  %add.ptr28 = getelementptr i8, ptr %10, i32 -264
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end.if.end29_crit_edge
  %forward.0 = phi i32 [ %insn_idx, %if.then24 ], [ %sub3, %if.end.if.end29_crit_edge ]
  %meta.addr.1 = phi ptr [ %add.ptr28, %if.then24 ], [ %meta.addr.0, %if.end.if.end29_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %forward.0, i32 %backward.0)
  %cmp30 = icmp ult i32 %forward.0, %backward.0
  br i1 %cmp30, label %for.cond.preheader, label %for.cond39.preheader

for.cond39.preheader:                             ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %backward.0)
  %cmp4080.not = icmp eq i32 %backward.0, 0
  br i1 %cmp4080.not, label %for.cond39.preheader.if.end51_crit_edge, label %for.cond39.preheader.for.body42_crit_edge

for.cond39.preheader.for.body42_crit_edge:        ; preds = %for.cond39.preheader
  br label %for.body42

for.cond39.preheader.if.end51_crit_edge:          ; preds = %for.cond39.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

for.cond.preheader:                               ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %forward.0)
  %cmp3383.not = icmp eq i32 %forward.0, 0
  br i1 %cmp3383.not, label %for.cond.preheader.if.end51_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end51_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %meta.addr.285 = phi ptr [ %add.ptr38, %for.body.for.body_crit_edge ], [ %meta.addr.1, %for.cond.preheader.for.body_crit_edge ]
  %i.084 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %l = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.addr.285, i32 0, i32 7
  %11 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %l, align 8
  %add.ptr38 = getelementptr i8, ptr %12, i32 -264
  %inc = add nuw i32 %i.084, 1
  %exitcond88.not = icmp eq i32 %inc, %forward.0
  br i1 %exitcond88.not, label %for.body.if.end51_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.if.end51_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

for.body42:                                       ; preds = %for.body42.for.body42_crit_edge, %for.cond39.preheader.for.body42_crit_edge
  %meta.addr.382 = phi ptr [ %add.ptr47, %for.body42.for.body42_crit_edge ], [ %meta.addr.1, %for.cond39.preheader.for.body42_crit_edge ]
  %i.181 = phi i32 [ %inc49, %for.body42.for.body42_crit_edge ], [ 0, %for.cond39.preheader.for.body42_crit_edge ]
  %prev45 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.addr.382, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %prev45 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev45, align 4
  %add.ptr47 = getelementptr i8, ptr %14, i32 -264
  %inc49 = add nuw i32 %i.181, 1
  %exitcond.not = icmp eq i32 %inc49, %backward.0
  br i1 %exitcond.not, label %for.body42.if.end51_crit_edge, label %for.body42.for.body42_crit_edge

for.body42.for.body42_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body42

for.body42.if.end51_crit_edge:                    ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.end51:                                         ; preds = %for.body42.if.end51_crit_edge, %for.body.if.end51_crit_edge, %for.cond.preheader.if.end51_crit_edge, %for.cond39.preheader.if.end51_crit_edge
  %meta.addr.4 = phi ptr [ %meta.addr.1, %for.cond.preheader.if.end51_crit_edge ], [ %meta.addr.1, %for.cond39.preheader.if.end51_crit_edge ], [ %add.ptr38, %for.body.if.end51_crit_edge ], [ %add.ptr47, %for.body42.if.end51_crit_edge ]
  ret ptr %meta.addr.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_verify_insn(ptr noundef %env, i32 noundef %insn_idx, i32 noundef %prev_insn_idx) local_unnamed_addr #2 align 64 {
entry:
  %tn_buf.i84 = alloca [48 x i8], align 1
  %tn_buf.i = alloca [48 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %prog = getelementptr inbounds %struct.bpf_verifier_env, ptr %env, i32 0, i32 2
  %0 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prog, align 8
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aux, align 4
  %offload = getelementptr inbounds %struct.bpf_prog_aux, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %offload to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %offload, align 8
  %dev_priv = getelementptr inbounds %struct.bpf_prog_offload, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv, align 4
  %verifier_meta = getelementptr inbounds %struct.nfp_prog, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %verifier_meta to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %verifier_meta, align 4
  %n.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %n.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %n.i, align 4
  %conv.i = zext i16 %11 to i32
  %sub.i = sub i32 %conv.i, %insn_idx
  %sub3.i = sub i32 %insn_idx, %conv.i
  %12 = tail call i32 @llvm.abs.i32(i32 %sub3.i, i1 false) #7
  %n_insns.i = getelementptr inbounds %struct.nfp_prog, ptr %7, i32 0, i32 20
  %13 = ptrtoint ptr %n_insns.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_insns.i, align 4
  %15 = xor i32 %insn_idx, -1
  %sub6.i = add i32 %14, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %sub6.i)
  %cmp7.i = icmp ugt i32 %12, %sub6.i
  br i1 %cmp7.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i = getelementptr inbounds %struct.nfp_prog, ptr %7, i32 0, i32 21, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 -264
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %backward.0.i = phi i32 [ %sub6.i, %if.then.i ], [ %sub.i, %entry.if.end.i_crit_edge ]
  %meta.addr.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %9, %entry.if.end.i_crit_edge ]
  %18 = tail call i32 @llvm.umin.i32(i32 %sub3.i, i32 %backward.0.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %insn_idx)
  %cmp20.i = icmp ugt i32 %18, %insn_idx
  call void @__sanitizer_cov_trace_cmp4(i32 %backward.0.i, i32 %insn_idx)
  %cmp22.i = icmp ugt i32 %backward.0.i, %insn_idx
  %or.cond.i = select i1 %cmp20.i, i1 %cmp22.i, i1 false
  br i1 %or.cond.i, label %if.then24.i, label %if.end.i.if.end29.i_crit_edge

if.end.i.if.end29.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.then24.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %insns26.i = getelementptr inbounds %struct.nfp_prog, ptr %7, i32 0, i32 21
  %19 = ptrtoint ptr %insns26.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %insns26.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %20, i32 -264
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then24.i, %if.end.i.if.end29.i_crit_edge
  %forward.0.i = phi i32 [ %insn_idx, %if.then24.i ], [ %sub3.i, %if.end.i.if.end29.i_crit_edge ]
  %meta.addr.1.i = phi ptr [ %add.ptr28.i, %if.then24.i ], [ %meta.addr.0.i, %if.end.i.if.end29.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %forward.0.i, i32 %backward.0.i)
  %cmp30.i = icmp ult i32 %forward.0.i, %backward.0.i
  br i1 %cmp30.i, label %for.cond.preheader.i, label %for.cond39.preheader.i

for.cond39.preheader.i:                           ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %backward.0.i)
  %cmp4080.not.i = icmp eq i32 %backward.0.i, 0
  br i1 %cmp4080.not.i, label %for.cond39.preheader.i.nfp_bpf_goto_meta.exit_crit_edge, label %for.cond39.preheader.i.for.body42.i_crit_edge

for.cond39.preheader.i.for.body42.i_crit_edge:    ; preds = %for.cond39.preheader.i
  br label %for.body42.i

for.cond39.preheader.i.nfp_bpf_goto_meta.exit_crit_edge: ; preds = %for.cond39.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_bpf_goto_meta.exit

for.cond.preheader.i:                             ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %forward.0.i)
  %cmp3383.not.i = icmp eq i32 %forward.0.i, 0
  br i1 %cmp3383.not.i, label %for.cond.preheader.i.nfp_bpf_goto_meta.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.nfp_bpf_goto_meta.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_bpf_goto_meta.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %meta.addr.285.i = phi ptr [ %add.ptr38.i, %for.body.i.for.body.i_crit_edge ], [ %meta.addr.1.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.084.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %l.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.addr.285.i, i32 0, i32 7
  %21 = ptrtoint ptr %l.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %l.i, align 8
  %add.ptr38.i = getelementptr i8, ptr %22, i32 -264
  %inc.i = add nuw i32 %i.084.i, 1
  %exitcond88.not.i = icmp eq i32 %inc.i, %forward.0.i
  br i1 %exitcond88.not.i, label %for.body.i.nfp_bpf_goto_meta.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.nfp_bpf_goto_meta.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_bpf_goto_meta.exit

for.body42.i:                                     ; preds = %for.body42.i.for.body42.i_crit_edge, %for.cond39.preheader.i.for.body42.i_crit_edge
  %meta.addr.382.i = phi ptr [ %add.ptr47.i, %for.body42.i.for.body42.i_crit_edge ], [ %meta.addr.1.i, %for.cond39.preheader.i.for.body42.i_crit_edge ]
  %i.181.i = phi i32 [ %inc49.i, %for.body42.i.for.body42.i_crit_edge ], [ 0, %for.cond39.preheader.i.for.body42.i_crit_edge ]
  %prev45.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.addr.382.i, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %prev45.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev45.i, align 4
  %add.ptr47.i = getelementptr i8, ptr %24, i32 -264
  %inc49.i = add nuw i32 %i.181.i, 1
  %exitcond.not.i = icmp eq i32 %inc49.i, %backward.0.i
  br i1 %exitcond.not.i, label %for.body42.i.nfp_bpf_goto_meta.exit_crit_edge, label %for.body42.i.for.body42.i_crit_edge

for.body42.i.for.body42.i_crit_edge:              ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body42.i

for.body42.i.nfp_bpf_goto_meta.exit_crit_edge:    ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_bpf_goto_meta.exit

nfp_bpf_goto_meta.exit:                           ; preds = %for.body42.i.nfp_bpf_goto_meta.exit_crit_edge, %for.body.i.nfp_bpf_goto_meta.exit_crit_edge, %for.cond.preheader.i.nfp_bpf_goto_meta.exit_crit_edge, %for.cond39.preheader.i.nfp_bpf_goto_meta.exit_crit_edge
  %meta.addr.4.i = phi ptr [ %meta.addr.1.i, %for.cond.preheader.i.nfp_bpf_goto_meta.exit_crit_edge ], [ %meta.addr.1.i, %for.cond39.preheader.i.nfp_bpf_goto_meta.exit_crit_edge ], [ %add.ptr38.i, %for.body.i.nfp_bpf_goto_meta.exit_crit_edge ], [ %add.ptr47.i, %for.body42.i.nfp_bpf_goto_meta.exit_crit_edge ]
  %25 = ptrtoint ptr %verifier_meta to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %meta.addr.4.i, ptr %verifier_meta, align 4
  %26 = ptrtoint ptr %meta.addr.4.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %meta.addr.4.i, align 8
  %call2 = tail call zeroext i1 @nfp_bpf_supported_opcode(i8 noundef zeroext %27) #7
  br i1 %call2, label %if.end, label %if.then

if.then:                                          ; preds = %nfp_bpf_goto_meta.exit
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %meta.addr.4.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %meta.addr.4.i, align 8
  %conv = zext i8 %29 to i32
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str, i32 noundef %conv) #7
  br label %cleanup

if.end:                                           ; preds = %nfp_bpf_goto_meta.exit
  %src_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta.addr.4.i, i32 0, i32 1
  %30 = ptrtoint ptr %src_reg to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load = load i8, ptr %src_reg, align 1
  %bf.clear = and i8 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %bf.clear)
  %cmp = icmp ugt i8 %bf.clear, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -81, i8 %bf.load)
  %cmp11 = icmp ugt i8 %bf.load, -81
  %or.cond = or i1 %cmp11, %cmp
  br i1 %or.cond, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %31 = ptrtoint ptr %meta.addr.4.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %insn.sroa.0.0.copyload.i = load i8, ptr %meta.addr.4.i, align 8
  %32 = zext i8 %insn.sroa.0.0.copyload.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i8 %insn.sroa.0.0.copyload.i, label %if.end26 [
    i8 -123, label %is_mbpf_helper_call.exit
    i8 -107, label %if.then24
  ]

is_mbpf_helper_call.exit:                         ; preds = %if.end14
  %33 = ptrtoint ptr %src_reg to i32
  call void @__asan_load1_noabort(i32 %33)
  %insn.sroa.5.0.copyload.i = load i8, ptr %src_reg, align 1
  %bf.clear.i = and i8 %insn.sroa.5.0.copyload.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear.i)
  %cmp4.i.not = icmp eq i8 %bf.clear.i, 1
  br i1 %cmp4.i.not, label %is_mbpf_helper_call.exit.cleanup_crit_edge, label %if.then16

is_mbpf_helper_call.exit.cleanup_crit_edge:       ; preds = %is_mbpf_helper_call.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then16:                                        ; preds = %is_mbpf_helper_call.exit
  %cur_state.i.i.i = getelementptr inbounds %struct.bpf_verifier_env, ptr %env, i32 0, i32 8
  %34 = ptrtoint ptr %cur_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cur_state.i.i.i, align 4
  %curframe.i.i.i = getelementptr inbounds %struct.bpf_verifier_state, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %curframe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %curframe.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [8 x ptr], ptr %35, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i81 = getelementptr %struct.bpf_reg_state, ptr %39, i32 1
  %add.ptr2.i = getelementptr %struct.bpf_reg_state, ptr %39, i32 2
  %add.ptr4.i = getelementptr %struct.bpf_reg_state, ptr %39, i32 3
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %7, align 4
  %imm.i = getelementptr inbounds %struct.bpf_insn, ptr %meta.addr.4.i, i32 0, i32 3
  %42 = ptrtoint ptr %imm.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %imm.i, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %43, label %sw.default.i [
    i32 44, label %sw.bb.i
    i32 65, label %sw.bb10.i
    i32 1, label %sw.bb14.i
    i32 2, label %sw.bb22.i
    i32 3, label %sw.bb42.i
    i32 7, label %sw.bb57.i
    i32 25, label %do.end.i
  ]

sw.bb.i:                                          ; preds = %if.then16
  %off_max.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %41, i32 0, i32 11, i32 2
  %45 = ptrtoint ptr %off_max.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %off_max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i, label %if.then.i82, label %if.end.i83

if.then.i82:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.6) #7
  br label %cleanup

if.end.i83:                                       ; preds = %sw.bb.i
  %adjust_head.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %41, i32 0, i32 11
  %47 = ptrtoint ptr %adjust_head.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %adjust_head.i, align 4
  %and.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.7) #7
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i83
  %49 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp.not.i.i = icmp eq i32 %50, 1
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end9.i.nfp_record_adjust_head.exit.i_crit_edge

if.end9.i.nfp_record_adjust_head.exit.i_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_record_adjust_head.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end9.i
  %.elt42.i.i = getelementptr %struct.bpf_reg_state, ptr %39, i32 2, i32 5, i32 1
  %51 = ptrtoint ptr %.elt42.i.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %.unpack43.i.i = load i64, ptr %.elt42.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack43.i.i)
  %tobool.not.i.i.i = icmp eq i64 %.unpack43.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.nfp_record_adjust_head.exit.i_crit_edge

lor.lhs.false.i.i.nfp_record_adjust_head.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_record_adjust_head.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %var_off.i.i = getelementptr %struct.bpf_reg_state, ptr %39, i32 2, i32 5
  %52 = ptrtoint ptr %var_off.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %.unpack.i.i = load i64, ptr %var_off.i.i, align 8
  %conv.i.i = trunc i64 %.unpack.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %conv.i.i)
  %cmp2.i.i = icmp sgt i32 %conv.i.i, 46
  br i1 %cmp2.i.i, label %if.end.i.i.nfp_record_adjust_head.exit.i_crit_edge, label %if.end5.i.i

if.end.i.i.nfp_record_adjust_head.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_record_adjust_head.exit.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %guaranteed_add.i.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %41, i32 0, i32 11, i32 4
  %53 = ptrtoint ptr %guaranteed_add.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %guaranteed_add.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %conv.i.i)
  %cmp6.i.i = icmp slt i32 %54, %conv.i.i
  br i1 %cmp6.i.i, label %if.end5.i.i.nfp_record_adjust_head.exit.i_crit_edge, label %lor.lhs.false8.i.i

if.end5.i.i.nfp_record_adjust_head.exit.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_record_adjust_head.exit.i

lor.lhs.false8.i.i:                               ; preds = %if.end5.i.i
  %guaranteed_sub.i.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %41, i32 0, i32 11, i32 3
  %55 = ptrtoint ptr %guaranteed_sub.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %guaranteed_sub.i.i, align 4
  %sub.i.i = sub i32 0, %56
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %sub.i.i)
  %cmp10.i.i = icmp slt i32 %conv.i.i, %sub.i.i
  br i1 %cmp10.i.i, label %lor.lhs.false8.i.i.nfp_record_adjust_head.exit.i_crit_edge, label %if.end13.i.i

lor.lhs.false8.i.i.nfp_record_adjust_head.exit.i_crit_edge: ; preds = %lor.lhs.false8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_record_adjust_head.exit.i

if.end13.i.i:                                     ; preds = %lor.lhs.false8.i.i
  %adjust_head_location.i.i = getelementptr inbounds %struct.nfp_prog, ptr %7, i32 0, i32 15
  %57 = ptrtoint ptr %adjust_head_location.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %adjust_head_location.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i.i, label %if.end13.i.i.if.end28.i.i_crit_edge, label %if.then14.i.i

if.end13.i.i.if.end28.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i.i

if.then14.i.i:                                    ; preds = %if.end13.i.i
  %n.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.addr.4.i, i32 0, i32 3
  %59 = ptrtoint ptr %n.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %n.i.i, align 4
  %conv16.i.i = zext i16 %60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %conv16.i.i)
  %cmp17.not.i.i = icmp eq i32 %58, %conv16.i.i
  br i1 %cmp17.not.i.i, label %if.end20.i.i, label %if.then14.i.i.nfp_record_adjust_head.exit.i_crit_edge

if.then14.i.i.nfp_record_adjust_head.exit.i_crit_edge: ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_record_adjust_head.exit.i

if.end20.i.i:                                     ; preds = %if.then14.i.i
  %var_off21.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.addr.4.i, i32 0, i32 1, i32 0, i32 2, i32 0, i32 5
  %61 = ptrtoint ptr %var_off21.i.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %var_off21.i.i, align 8
  %conv23.i.i = sext i32 %conv.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %62, i64 %conv23.i.i)
  %cmp24.not.i.i = icmp eq i64 %62, %conv23.i.i
  br i1 %cmp24.not.i.i, label %if.end20.i.i.if.end28.i.i_crit_edge, label %if.end20.i.i.nfp_record_adjust_head.exit.i_crit_edge

if.end20.i.i.nfp_record_adjust_head.exit.i_crit_edge: ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_record_adjust_head.exit.i

if.end20.i.i.if.end28.i.i_crit_edge:              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.end20.i.i.if.end28.i.i_crit_edge, %if.end13.i.i.if.end28.i.i_crit_edge
  %n29.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.addr.4.i, i32 0, i32 3
  %63 = ptrtoint ptr %n29.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %n29.i.i, align 4
  %conv30.i.i = zext i16 %64 to i32
  br label %nfp_record_adjust_head.exit.i

nfp_record_adjust_head.exit.i:                    ; preds = %if.end28.i.i, %if.end20.i.i.nfp_record_adjust_head.exit.i_crit_edge, %if.then14.i.i.nfp_record_adjust_head.exit.i_crit_edge, %lor.lhs.false8.i.i.nfp_record_adjust_head.exit.i_crit_edge, %if.end5.i.i.nfp_record_adjust_head.exit.i_crit_edge, %if.end.i.i.nfp_record_adjust_head.exit.i_crit_edge, %lor.lhs.false.i.i.nfp_record_adjust_head.exit.i_crit_edge, %if.end9.i.nfp_record_adjust_head.exit.i_crit_edge
  %location.0.i.i = phi i32 [ -1, %if.end9.i.nfp_record_adjust_head.exit.i_crit_edge ], [ -1, %if.end.i.i.nfp_record_adjust_head.exit.i_crit_edge ], [ -1, %if.end5.i.i.nfp_record_adjust_head.exit.i_crit_edge ], [ -1, %lor.lhs.false8.i.i.nfp_record_adjust_head.exit.i_crit_edge ], [ -1, %if.then14.i.i.nfp_record_adjust_head.exit.i_crit_edge ], [ -1, %if.end20.i.i.nfp_record_adjust_head.exit.i_crit_edge ], [ %conv30.i.i, %if.end28.i.i ], [ -1, %lor.lhs.false.i.i.nfp_record_adjust_head.exit.i_crit_edge ]
  %adjust_head_location31.i.i = getelementptr inbounds %struct.nfp_prog, ptr %7, i32 0, i32 15
  %65 = ptrtoint ptr %adjust_head_location31.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %location.0.i.i, ptr %adjust_head_location31.i.i, align 4
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %if.then16
  %adjust_tail.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %41, i32 0, i32 16
  %66 = ptrtoint ptr %adjust_tail.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %adjust_tail.i, align 2, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool11.not.i = icmp eq i8 %67, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %sw.bb10.i.sw.epilog.i_crit_edge

sw.bb10.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.then12.i:                                      ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.8) #7
  br label %cleanup

sw.bb14.i:                                        ; preds = %if.then16
  %helpers.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %41, i32 0, i32 13
  %68 = ptrtoint ptr %helpers.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %helpers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i208.i = icmp eq i32 %69, 0
  br i1 %tobool.not.i208.i, label %nfp_bpf_map_call_ok.exit.i, label %lor.lhs.false.i

nfp_bpf_map_call_ok.exit.i:                       ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.9) #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %sw.bb14.i
  %70 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.addr.4.i, i32 0, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool17.not.i = icmp eq i32 %72, 0
  %arg2.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.addr.4.i, i32 0, i32 1, i32 0, i32 2
  %spec.select.i = select i1 %tobool17.not.i, ptr null, ptr %arg2.i
  %73 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %74)
  %cmp.not.i209.i = icmp eq i32 %74, 6
  br i1 %cmp.not.i209.i, label %if.end.i212.i, label %if.then.i210.i

if.then.i210.i:                                   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.9, i32 noundef %74) #7
  br label %cleanup

if.end.i212.i:                                    ; preds = %lor.lhs.false.i
  %.elt39.i.i = getelementptr %struct.bpf_reg_state, ptr %39, i32 2, i32 5, i32 1
  %75 = ptrtoint ptr %.elt39.i.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %.unpack40.i.i = load i64, ptr %.elt39.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack40.i.i)
  %tobool.not.i.i211.i = icmp eq i64 %.unpack40.i.i, 0
  br i1 %tobool.not.i.i211.i, label %if.end3.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i212.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.9) #7
  br label %cleanup

if.end3.i.i:                                      ; preds = %if.end.i212.i
  %var_off.i213.i = getelementptr %struct.bpf_reg_state, ptr %39, i32 2, i32 5
  %76 = ptrtoint ptr %var_off.i213.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %.unpack.i214.i = load i64, ptr %var_off.i213.i, align 8
  %off5.i.i = getelementptr %struct.bpf_reg_state, ptr %39, i32 2, i32 1
  %77 = ptrtoint ptr %off5.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %off5.i.i, align 4
  %conv.i215.i = sext i32 %78 to i64
  %add.i.i = add i64 %.unpack.i214.i, %conv.i215.i
  %sub.i216.i = sub i64 0, %add.i.i
  %79 = and i64 %sub.i216.i, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %79)
  %tobool.not.i217.i = icmp eq i64 %79, 0
  br i1 %tobool.not.i217.i, label %if.end8.i.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.9, i64 noundef %sub.i216.i) #7
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end3.i.i
  br i1 %tobool17.not.i, label %if.end8.i.i.sw.epilog.i_crit_edge, label %if.end11.i.i

if.end8.i.i.sw.epilog.i_crit_edge:                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end11.i.i:                                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %var_off13.i.i = getelementptr inbounds %struct.bpf_reg_state, ptr %spec.select.i, i32 0, i32 5
  %80 = ptrtoint ptr %var_off13.i.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %var_off13.i.i, align 8
  %off16.i.i = getelementptr inbounds %struct.bpf_reg_state, ptr %spec.select.i, i32 0, i32 1
  %82 = ptrtoint ptr %off16.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %off16.i.i, align 4
  %conv17.i.i = sext i32 %83 to i64
  %add18.i.i = add i64 %81, %conv17.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %add18.i.i)
  %cmp19.i.i = icmp ne i64 %add.i.i, %add18.i.i
  %conv20.i.i = zext i1 %cmp19.i.i to i8
  %var_off21.i218.i = getelementptr inbounds %struct.nfp_bpf_reg_state, ptr %spec.select.i, i32 0, i32 1
  %84 = ptrtoint ptr %var_off21.i218.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %var_off21.i218.i, align 8, !range !128
  %or.i.i = or i8 %85, %conv20.i.i
  store i8 %or.i.i, ptr %var_off21.i218.i, align 8
  br label %sw.epilog.i

sw.bb22.i:                                        ; preds = %if.then16
  %map_update.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %41, i32 0, i32 13, i32 1
  %86 = ptrtoint ptr %map_update.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %map_update.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i219.i = icmp eq i32 %87, 0
  br i1 %tobool.not.i219.i, label %nfp_bpf_map_call_ok.exit221.i, label %lor.lhs.false25.i

nfp_bpf_map_call_ok.exit221.i:                    ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.10) #7
  br label %cleanup

lor.lhs.false25.i:                                ; preds = %sw.bb22.i
  %88 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.addr.4.i, i32 0, i32 1
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %88, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool27.not.i = icmp eq i32 %90, 0
  %arg229.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.addr.4.i, i32 0, i32 1, i32 0, i32 2
  %spec.select200.i = select i1 %tobool27.not.i, ptr null, ptr %arg229.i
  %91 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %92)
  %cmp.not.i222.i = icmp eq i32 %92, 6
  br i1 %cmp.not.i222.i, label %if.end.i227.i, label %if.then.i223.i

if.then.i223.i:                                   ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.10, i32 noundef %92) #7
  br label %cleanup

if.end.i227.i:                                    ; preds = %lor.lhs.false25.i
  %.elt39.i224.i = getelementptr %struct.bpf_reg_state, ptr %39, i32 2, i32 5, i32 1
  %93 = ptrtoint ptr %.elt39.i224.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %.unpack40.i225.i = load i64, ptr %.elt39.i224.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack40.i225.i)
  %tobool.not.i.i226.i = icmp eq i64 %.unpack40.i225.i, 0
  br i1 %tobool.not.i.i226.i, label %if.end3.i236.i, label %if.then2.i228.i

if.then2.i228.i:                                  ; preds = %if.end.i227.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.10) #7
  br label %cleanup

if.end3.i236.i:                                   ; preds = %if.end.i227.i
  %var_off.i229.i = getelementptr %struct.bpf_reg_state, ptr %39, i32 2, i32 5
  %94 = ptrtoint ptr %var_off.i229.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %.unpack.i230.i = load i64, ptr %var_off.i229.i, align 8
  %off5.i231.i = getelementptr %struct.bpf_reg_state, ptr %39, i32 2, i32 1
  %95 = ptrtoint ptr %off5.i231.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %off5.i231.i, align 4
  %conv.i232.i = sext i32 %96 to i64
  %add.i233.i = add i64 %.unpack.i230.i, %conv.i232.i
  %sub.i234.i = sub i64 0, %add.i233.i
  %97 = and i64 %sub.i234.i, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %97)
  %tobool.not.i235.i = icmp eq i64 %97, 0
  br i1 %tobool.not.i235.i, label %if.end8.i239.i, label %if.then6.i237.i

if.then6.i237.i:                                  ; preds = %if.end3.i236.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.10, i64 noundef %sub.i234.i) #7
  br label %cleanup

if.end8.i239.i:                                   ; preds = %if.end3.i236.i
  br i1 %tobool27.not.i, label %if.end8.i239.i.lor.lhs.false35.i_crit_edge, label %if.end11.i248.i

if.end8.i239.i.lor.lhs.false35.i_crit_edge:       ; preds = %if.end8.i239.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false35.i

if.end11.i248.i:                                  ; preds = %if.end8.i239.i
  call void @__sanitizer_cov_trace_pc() #9
  %var_off13.i240.i = getelementptr inbounds %struct.bpf_reg_state, ptr %spec.select200.i, i32 0, i32 5
  %98 = ptrtoint ptr %var_off13.i240.i to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %var_off13.i240.i, align 8
  %off16.i241.i = getelementptr inbounds %struct.bpf_reg_state, ptr %spec.select200.i, i32 0, i32 1
  %100 = ptrtoint ptr %off16.i241.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %off16.i241.i, align 4
  %conv17.i242.i = sext i32 %101 to i64
  %add18.i243.i = add i64 %99, %conv17.i242.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i233.i, i64 %add18.i243.i)
  %cmp19.i244.i = icmp ne i64 %add.i233.i, %add18.i243.i
  %conv20.i245.i = zext i1 %cmp19.i244.i to i8
  %var_off21.i246.i = getelementptr inbounds %struct.nfp_bpf_reg_state, ptr %spec.select200.i, i32 0, i32 1
  %102 = ptrtoint ptr %var_off21.i246.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %var_off21.i246.i, align 8, !range !128
  %or.i247.i = or i8 %103, %conv20.i245.i
  store i8 %or.i247.i, ptr %var_off21.i246.i, align 8
  br label %lor.lhs.false35.i

lor.lhs.false35.i:                                ; preds = %if.end11.i248.i, %if.end8.i239.i.lor.lhs.false35.i_crit_edge
  %104 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %add.ptr4.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %105)
  %cmp.not.i251.i = icmp eq i32 %105, 6
  br i1 %cmp.not.i251.i, label %if.end.i256.i, label %if.then.i252.i

if.then.i252.i:                                   ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.10, i32 noundef %105) #7
  br label %cleanup

if.end.i256.i:                                    ; preds = %lor.lhs.false35.i
  %.elt39.i253.i = getelementptr %struct.bpf_reg_state, ptr %39, i32 3, i32 5, i32 1
  %106 = ptrtoint ptr %.elt39.i253.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %.unpack40.i254.i = load i64, ptr %.elt39.i253.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack40.i254.i)
  %tobool.not.i.i255.i = icmp eq i64 %.unpack40.i254.i, 0
  br i1 %tobool.not.i.i255.i, label %if.end3.i265.i, label %if.then2.i257.i

if.then2.i257.i:                                  ; preds = %if.end.i256.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.10) #7
  br label %cleanup

if.end3.i265.i:                                   ; preds = %if.end.i256.i
  %var_off.i258.i = getelementptr %struct.bpf_reg_state, ptr %39, i32 3, i32 5
  %107 = ptrtoint ptr %var_off.i258.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %.unpack.i259.i = load i64, ptr %var_off.i258.i, align 8
  %off5.i260.i = getelementptr %struct.bpf_reg_state, ptr %39, i32 3, i32 1
  %108 = ptrtoint ptr %off5.i260.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %off5.i260.i, align 4
  %conv.i261.i = sext i32 %109 to i64
  %add.i262.i = add i64 %.unpack.i259.i, %conv.i261.i
  %sub.i263.i = sub i64 0, %add.i262.i
  %110 = and i64 %sub.i263.i, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %110)
  %tobool.not.i264.i = icmp eq i64 %110, 0
  br i1 %tobool.not.i264.i, label %lor.lhs.false38.i, label %if.then6.i266.i

if.then6.i266.i:                                  ; preds = %if.end3.i265.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.10, i64 noundef %sub.i263.i) #7
  br label %cleanup

lor.lhs.false38.i:                                ; preds = %if.end3.i265.i
  %111 = ptrtoint ptr %cur_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cur_state.i.i.i, align 4
  %curframe.i.i.i.i = getelementptr inbounds %struct.bpf_verifier_state, ptr %112, i32 0, i32 4
  %113 = ptrtoint ptr %curframe.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %curframe.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [8 x ptr], ptr %112, i32 0, i32 %114
  %115 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %117 = getelementptr %struct.bpf_reg_state, ptr %116, i32 1, i32 2
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 8
  %dev_priv.i.i = getelementptr inbounds %struct.bpf_offloaded_map, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev_priv.i.i, align 8
  %off4.i.i = getelementptr %struct.bpf_reg_state, ptr %116, i32 3, i32 1
  %122 = ptrtoint ptr %off4.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %off4.i.i, align 4
  %var_off.i270.i = getelementptr %struct.bpf_reg_state, ptr %116, i32 3, i32 5
  %124 = ptrtoint ptr %var_off.i270.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %var_off.i270.i, align 8
  %126 = trunc i64 %125 to i32
  %conv5.i.i = add i32 %123, %126
  %value_size.i.i = getelementptr inbounds %struct.bpf_map, ptr %119, i32 0, i32 5
  %127 = ptrtoint ptr %value_size.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %value_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp56.not.i.i = icmp eq i32 %128, 0
  br i1 %cmp56.not.i.i, label %lor.lhs.false38.i.sw.epilog.i_crit_edge, label %for.body.lr.ph.i.i

lor.lhs.false38.i.sw.epilog.i_crit_edge:          ; preds = %lor.lhs.false38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

for.body.lr.ph.i.i:                               ; preds = %lor.lhs.false38.i
  %frameno.i.i = getelementptr %struct.bpf_reg_state, ptr %116, i32 3, i32 15
  %129 = ptrtoint ptr %frameno.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %frameno.i.i, align 4
  %arrayidx.i.i = getelementptr [8 x ptr], ptr %112, i32 0, i32 %130
  %131 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx.i.i, align 4
  %stack.i.i = getelementptr inbounds %struct.bpf_func_state, ptr %132, i32 0, i32 10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.057.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %add7.i.i = add i32 %conv5.i.i, %i.057.i.i
  %sub8.i.i = xor i32 %add7.i.i, -1
  %133 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %stack.i.i, align 8
  %div48.i.i = lshr i32 %sub8.i.i, 3
  %rem.i.i = and i32 %sub8.i.i, 7
  %arrayidx10.i.i = getelementptr %struct.bpf_stack_state, ptr %134, i32 %div48.i.i, i32 1, i32 %rem.i.i
  %135 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx10.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %136)
  %cmp12.i.i = icmp eq i8 %136, 3
  br i1 %cmp12.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i271.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end.i271.i:                                    ; preds = %for.body.i.i
  %div14.i.i = sdiv i32 %i.057.i.i, 4
  %arrayidx15.i.i = getelementptr %struct.nfp_bpf_map, ptr %121, i32 0, i32 9, i32 %div14.i.i
  %137 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %bf.load.i.i = load i8, ptr %arrayidx15.i.i, align 1
  %bf.lshr.mask.i.i = and i8 %bf.load.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %bf.lshr.mask.i.i)
  %cmp17.i.i = icmp eq i8 %bf.lshr.mask.i.i, 48
  br i1 %cmp17.i.i, label %nfp_bpf_map_update_value_ok.exit.i, label %if.end20.i272.i

if.end20.i272.i:                                  ; preds = %if.end.i271.i
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set.i.i = or i8 %bf.load.i.i, 8
  %138 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %bf.set.i.i, ptr %arrayidx15.i.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end20.i272.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.057.i.i, 1
  %139 = ptrtoint ptr %value_size.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %value_size.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %140
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.sw.epilog.i_crit_edge

for.inc.i.i.sw.epilog.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

nfp_bpf_map_update_value_ok.exit.i:               ; preds = %if.end.i271.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.28, i32 noundef %i.057.i.i, i32 noundef %sub8.i.i) #7
  br label %cleanup

sw.bb42.i:                                        ; preds = %if.then16
  %map_delete.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %41, i32 0, i32 13, i32 2
  %141 = ptrtoint ptr %map_delete.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %map_delete.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool.not.i273.i = icmp eq i32 %142, 0
  br i1 %tobool.not.i273.i, label %nfp_bpf_map_call_ok.exit275.i, label %lor.lhs.false45.i

nfp_bpf_map_call_ok.exit275.i:                    ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.11) #7
  br label %cleanup

lor.lhs.false45.i:                                ; preds = %sw.bb42.i
  %143 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.addr.4.i, i32 0, i32 1
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %143, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool47.not.i = icmp eq i32 %145, 0
  %arg249.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.addr.4.i, i32 0, i32 1, i32 0, i32 2
  %spec.select201.i = select i1 %tobool47.not.i, ptr null, ptr %arg249.i
  %146 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %add.ptr2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %147)
  %cmp.not.i276.i = icmp eq i32 %147, 6
  br i1 %cmp.not.i276.i, label %if.end.i281.i, label %if.then.i277.i

if.then.i277.i:                                   ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.11, i32 noundef %147) #7
  br label %cleanup

if.end.i281.i:                                    ; preds = %lor.lhs.false45.i
  %.elt39.i278.i = getelementptr %struct.bpf_reg_state, ptr %39, i32 2, i32 5, i32 1
  %148 = ptrtoint ptr %.elt39.i278.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %.unpack40.i279.i = load i64, ptr %.elt39.i278.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack40.i279.i)
  %tobool.not.i.i280.i = icmp eq i64 %.unpack40.i279.i, 0
  br i1 %tobool.not.i.i280.i, label %if.end3.i290.i, label %if.then2.i282.i

if.then2.i282.i:                                  ; preds = %if.end.i281.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.11) #7
  br label %cleanup

if.end3.i290.i:                                   ; preds = %if.end.i281.i
  %var_off.i283.i = getelementptr %struct.bpf_reg_state, ptr %39, i32 2, i32 5
  %149 = ptrtoint ptr %var_off.i283.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %.unpack.i284.i = load i64, ptr %var_off.i283.i, align 8
  %off5.i285.i = getelementptr %struct.bpf_reg_state, ptr %39, i32 2, i32 1
  %150 = ptrtoint ptr %off5.i285.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %off5.i285.i, align 4
  %conv.i286.i = sext i32 %151 to i64
  %add.i287.i = add i64 %.unpack.i284.i, %conv.i286.i
  %sub.i288.i = sub i64 0, %add.i287.i
  %152 = and i64 %sub.i288.i, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %152)
  %tobool.not.i289.i = icmp eq i64 %152, 0
  br i1 %tobool.not.i289.i, label %if.end8.i293.i, label %if.then6.i291.i

if.then6.i291.i:                                  ; preds = %if.end3.i290.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.11, i64 noundef %sub.i288.i) #7
  br label %cleanup

if.end8.i293.i:                                   ; preds = %if.end3.i290.i
  br i1 %tobool47.not.i, label %if.end8.i293.i.sw.epilog.i_crit_edge, label %if.end11.i302.i

if.end8.i293.i.sw.epilog.i_crit_edge:             ; preds = %if.end8.i293.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end11.i302.i:                                  ; preds = %if.end8.i293.i
  call void @__sanitizer_cov_trace_pc() #9
  %var_off13.i294.i = getelementptr inbounds %struct.bpf_reg_state, ptr %spec.select201.i, i32 0, i32 5
  %153 = ptrtoint ptr %var_off13.i294.i to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %var_off13.i294.i, align 8
  %off16.i295.i = getelementptr inbounds %struct.bpf_reg_state, ptr %spec.select201.i, i32 0, i32 1
  %155 = ptrtoint ptr %off16.i295.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %off16.i295.i, align 4
  %conv17.i296.i = sext i32 %156 to i64
  %add18.i297.i = add i64 %154, %conv17.i296.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i287.i, i64 %add18.i297.i)
  %cmp19.i298.i = icmp ne i64 %add.i287.i, %add18.i297.i
  %conv20.i299.i = zext i1 %cmp19.i298.i to i8
  %var_off21.i300.i = getelementptr inbounds %struct.nfp_bpf_reg_state, ptr %spec.select201.i, i32 0, i32 1
  %157 = ptrtoint ptr %var_off21.i300.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %var_off21.i300.i, align 8, !range !128
  %or.i301.i = or i8 %158, %conv20.i299.i
  store i8 %or.i301.i, ptr %var_off21.i300.i, align 8
  br label %sw.epilog.i

sw.bb57.i:                                        ; preds = %if.then16
  %pseudo_random.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %41, i32 0, i32 14
  %159 = ptrtoint ptr %pseudo_random.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %pseudo_random.i, align 4, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool58.not.i = icmp eq i8 %160, 0
  br i1 %tobool58.not.i, label %if.end60.i, label %sw.bb57.i.sw.epilog.i_crit_edge

sw.bb57.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end60.i:                                       ; preds = %sw.bb57.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.12) #7
  br label %cleanup

do.end.i:                                         ; preds = %if.then16
  %perf_event_output.i = getelementptr inbounds %struct.nfp_app_bpf, ptr %41, i32 0, i32 13, i32 3
  %161 = ptrtoint ptr %perf_event_output.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %perf_event_output.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool63.not.i = icmp eq i32 %162, 0
  br i1 %tobool63.not.i, label %if.then64.i, label %if.end65.i

if.then64.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.13) #7
  br label %cleanup

if.end65.i:                                       ; preds = %do.end.i
  %var_off.i = getelementptr %struct.bpf_reg_state, ptr %39, i32 3, i32 5
  %mask.i = getelementptr %struct.bpf_reg_state, ptr %39, i32 3, i32 5, i32 1
  %163 = ptrtoint ptr %mask.i to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %mask.i, align 8
  %and66.i = and i64 %164, 4294967295
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and66.i)
  %tobool67.not.i = icmp eq i64 %and66.i, 0
  br i1 %tobool67.not.i, label %lor.lhs.false68.i, label %if.end65.i.if.then71.i_crit_edge

if.end65.i.if.then71.i_crit_edge:                 ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then71.i

lor.lhs.false68.i:                                ; preds = %if.end65.i
  %165 = ptrtoint ptr %var_off.i to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %var_off.i, align 8
  %and70.i = and i64 %166, 4294967295
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %and70.i)
  %cmp.not.i = icmp eq i64 %and70.i, 4294967295
  br i1 %cmp.not.i, label %if.end75.i, label %lor.lhs.false68.i.if.then71.i_crit_edge

lor.lhs.false68.i.if.then71.i_crit_edge:          ; preds = %lor.lhs.false68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then71.i

if.then71.i:                                      ; preds = %lor.lhs.false68.i.if.then71.i_crit_edge, %if.end65.i.if.then71.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %tn_buf.i) #7
  %167 = call ptr @memset(ptr %tn_buf.i, i32 255, i32 48)
  %168 = ptrtoint ptr %var_off.i to i32
  call void @__asan_load8_noabort(i32 %168)
  %.unpack.i = load i64, ptr %var_off.i, align 8
  %169 = insertvalue [2 x i64] undef, i64 %.unpack.i, 0
  %170 = ptrtoint ptr %mask.i to i32
  call void @__asan_load8_noabort(i32 %170)
  %.unpack199.i = load i64, ptr %mask.i, align 8
  %171 = insertvalue [2 x i64] %169, i64 %.unpack199.i, 1
  %call73.i = call i32 @tnum_strn(ptr noundef nonnull %tn_buf.i, i32 noundef 48, [2 x i64] %171) #7
  call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.14, ptr noundef nonnull %tn_buf.i) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %tn_buf.i) #7
  br label %cleanup

if.end75.i:                                       ; preds = %lor.lhs.false68.i
  %add.ptr77.i = getelementptr %struct.bpf_reg_state, ptr %39, i32 4
  %172 = ptrtoint ptr %add.ptr77.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %add.ptr77.i, align 8
  %174 = zext i32 %173 to i64
  call void @__sanitizer_cov_trace_switch(i64 %174, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %173, label %if.then87.i [
    i32 6, label %land.lhs.true92.i
    i32 1, label %if.end75.i.do.body97.i_crit_edge
    i32 4, label %if.end75.i.do.body97.i_crit_edge124
    i32 8, label %if.end75.i.do.body97.i_crit_edge125
  ]

if.end75.i.do.body97.i_crit_edge125:              ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body97.i

if.end75.i.do.body97.i_crit_edge124:              ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body97.i

if.end75.i.do.body97.i_crit_edge:                 ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body97.i

if.then87.i:                                      ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.15, i32 noundef %173) #7
  br label %cleanup

land.lhs.true92.i:                                ; preds = %if.end75.i
  %call93.i = tail call fastcc i32 @nfp_bpf_stack_arg_ok(ptr noundef nonnull @.str.16, ptr noundef %env, ptr noundef %add.ptr77.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i)
  %tobool94.not.i = icmp eq i32 %call93.i, 0
  br i1 %tobool94.not.i, label %land.lhs.true92.i.cleanup_crit_edge, label %land.lhs.true92.i.do.body97.i_crit_edge

land.lhs.true92.i.do.body97.i_crit_edge:          ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body97.i

land.lhs.true92.i.cleanup_crit_edge:              ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body97.i:                                      ; preds = %land.lhs.true92.i.do.body97.i_crit_edge, %if.end75.i.do.body97.i_crit_edge, %if.end75.i.do.body97.i_crit_edge124, %if.end75.i.do.body97.i_crit_edge125
  %.b197.i = load i1, ptr @nfp_bpf_check_helper_call.__print_once, align 1
  br i1 %.b197.i, label %do.body97.i.do.end106.i_crit_edge, label %if.then99.i

do.body97.i.do.end106.i_crit_edge:                ; preds = %do.body97.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end106.i

if.then99.i:                                      ; preds = %do.body97.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @nfp_bpf_check_helper_call.__print_once, align 1
  %175 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %7, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %176, align 4
  %pf.i = getelementptr inbounds %struct.nfp_app, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %pf.i, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %180, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %182, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.17) #10
  br label %do.end106.i

do.end106.i:                                      ; preds = %if.then99.i, %do.body97.i.do.end106.i_crit_edge
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.21) #7
  %183 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.addr.4.i, i32 0, i32 1
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %183, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool108.not.i = icmp eq i32 %185, 0
  br i1 %tobool108.not.i, label %do.end106.i.sw.epilog.i_crit_edge, label %if.end110.i

do.end106.i.sw.epilog.i_crit_edge:                ; preds = %do.end106.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end110.i:                                      ; preds = %do.end106.i
  %186 = ptrtoint ptr %add.ptr77.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %add.ptr77.i, align 8
  %arg1.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.addr.4.i, i32 0, i32 1, i32 0, i32 1
  %188 = ptrtoint ptr %arg1.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arg1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %187, i32 %189)
  %cmp113.not.i = icmp eq i32 %187, %189
  br i1 %cmp113.not.i, label %if.end110.i.sw.epilog.i_crit_edge, label %if.then114.i

if.end110.i.sw.epilog.i_crit_edge:                ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.then114.i:                                     ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.22, i32 noundef %189, i32 noundef %187) #7
  br label %cleanup

sw.default.i:                                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.23, i32 noundef %43) #7
  br label %cleanup

sw.epilog.i:                                      ; preds = %if.end110.i.sw.epilog.i_crit_edge, %do.end106.i.sw.epilog.i_crit_edge, %sw.bb57.i.sw.epilog.i_crit_edge, %if.end11.i302.i, %if.end8.i293.i.sw.epilog.i_crit_edge, %for.inc.i.i.sw.epilog.i_crit_edge, %lor.lhs.false38.i.sw.epilog.i_crit_edge, %if.end11.i.i, %if.end8.i.i.sw.epilog.i_crit_edge, %sw.bb10.i.sw.epilog.i_crit_edge, %nfp_record_adjust_head.exit.i
  %reg1.0.i = phi ptr [ %add.ptr77.i, %if.end110.i.sw.epilog.i_crit_edge ], [ %add.ptr77.i, %do.end106.i.sw.epilog.i_crit_edge ], [ %add.ptr.i81, %sw.bb57.i.sw.epilog.i_crit_edge ], [ %add.ptr.i81, %sw.bb10.i.sw.epilog.i_crit_edge ], [ %add.ptr.i81, %nfp_record_adjust_head.exit.i ], [ %add.ptr.i81, %if.end8.i.i.sw.epilog.i_crit_edge ], [ %add.ptr.i81, %if.end11.i.i ], [ %add.ptr.i81, %if.end8.i293.i.sw.epilog.i_crit_edge ], [ %add.ptr.i81, %if.end11.i302.i ], [ %add.ptr.i81, %lor.lhs.false38.i.sw.epilog.i_crit_edge ], [ %add.ptr.i81, %for.inc.i.i.sw.epilog.i_crit_edge ]
  %190 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.addr.4.i, i32 0, i32 1
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %43, ptr %190, align 8
  %arg1120.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.addr.4.i, i32 0, i32 1, i32 0, i32 1
  %192 = call ptr @memcpy(ptr %arg1120.i, ptr %reg1.0.i, i32 112)
  %arg2121.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.addr.4.i, i32 0, i32 1, i32 0, i32 2
  %193 = call ptr @memcpy(ptr %arg2121.i, ptr %add.ptr2.i, i32 112)
  br label %cleanup

if.then24:                                        ; preds = %if.end14
  %cur_state.i.i.i85 = getelementptr inbounds %struct.bpf_verifier_env, ptr %env, i32 0, i32 8
  %194 = ptrtoint ptr %cur_state.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %cur_state.i.i.i85, align 4
  %curframe.i.i.i86 = getelementptr inbounds %struct.bpf_verifier_state, ptr %195, i32 0, i32 4
  %196 = ptrtoint ptr %curframe.i.i.i86 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %curframe.i.i.i86, align 4
  %arrayidx.i.i.i87 = getelementptr [8 x ptr], ptr %195, i32 0, i32 %197
  %198 = ptrtoint ptr %arrayidx.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %arrayidx.i.i.i87, align 4
  %type.i = getelementptr inbounds %struct.nfp_prog, ptr %7, i32 0, i32 6
  %200 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %201)
  %cmp.i88 = icmp eq i32 %201, 6
  br i1 %cmp.i88, label %if.then24.cleanup_crit_edge, label %if.end.i89

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i89:                                       ; preds = %if.then24
  %202 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %199, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %203)
  %cmp2.i = icmp eq i32 %203, 1
  br i1 %cmp2.i, label %land.lhs.true.i, label %if.end.i89.if.then4.i_crit_edge

if.end.i89.if.then4.i_crit_edge:                  ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

land.lhs.true.i:                                  ; preds = %if.end.i89
  %var_off.i90 = getelementptr inbounds %struct.bpf_reg_state, ptr %199, i32 0, i32 5
  %204 = ptrtoint ptr %var_off.i90 to i32
  call void @__asan_load8_noabort(i32 %204)
  %.unpack39.i = load i64, ptr %var_off.i90, align 8
  %.elt40.i = getelementptr inbounds %struct.bpf_reg_state, ptr %199, i32 0, i32 5, i32 1
  %205 = ptrtoint ptr %.elt40.i to i32
  call void @__asan_load8_noabort(i32 %205)
  %.unpack41.i = load i64, ptr %.elt40.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack41.i)
  %tobool.not.i.i91 = icmp eq i64 %.unpack41.i, 0
  br i1 %tobool.not.i.i91, label %if.end9.i94, label %land.lhs.true.i.if.then4.i_crit_edge

land.lhs.true.i.if.then4.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4.i

if.then4.i:                                       ; preds = %land.lhs.true.i.if.then4.i_crit_edge, %if.end.i89.if.then4.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %tn_buf.i84) #7
  %206 = call ptr @memset(ptr %tn_buf.i84, i32 255, i32 48)
  %var_off5.i = getelementptr inbounds %struct.bpf_reg_state, ptr %199, i32 0, i32 5
  %207 = ptrtoint ptr %var_off5.i to i32
  call void @__asan_load8_noabort(i32 %207)
  %.unpack.i92 = load i64, ptr %var_off5.i, align 8
  %208 = insertvalue [2 x i64] undef, i64 %.unpack.i92, 0
  %.elt37.i = getelementptr inbounds %struct.bpf_reg_state, ptr %199, i32 0, i32 5, i32 1
  %209 = ptrtoint ptr %.elt37.i to i32
  call void @__asan_load8_noabort(i32 %209)
  %.unpack38.i = load i64, ptr %.elt37.i, align 8
  %210 = insertvalue [2 x i64] %208, i64 %.unpack38.i, 1
  %call6.i = call i32 @tnum_strn(ptr noundef nonnull %tn_buf.i84, i32 noundef 48, [2 x i64] %210) #7
  %211 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %199, align 8
  call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.29, i32 noundef %212, ptr noundef nonnull %tn_buf.i84) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %tn_buf.i84) #7
  br label %cleanup

if.end9.i94:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %201)
  %cmp12.i = icmp ne i32 %201, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 7, i64 %.unpack39.i)
  %cmp14.i = icmp ugt i64 %.unpack39.i, 7
  %or.cond.i93 = select i1 %cmp12.i, i1 true, i1 %cmp14.i
  %213 = freeze i1 %or.cond.i93
  br i1 %213, label %if.end9.i94.cleanup_crit_edge, label %switch.early.test.i

if.end9.i94.cleanup_crit_edge:                    ; preds = %if.end9.i94
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.early.test.i:                              ; preds = %if.end9.i94
  call void @__sanitizer_cov_trace_switch(i64 %.unpack39.i, ptr @__sancov_gen_cov_switch_values.60)
  switch i64 %.unpack39.i, label %if.then21.i [
    i64 5, label %switch.early.test.i.cleanup_crit_edge
    i64 4, label %switch.early.test.i.cleanup_crit_edge126
    i64 2, label %switch.early.test.i.cleanup_crit_edge127
  ]

switch.early.test.i.cleanup_crit_edge127:         ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.early.test.i.cleanup_crit_edge126:         ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.early.test.i.cleanup_crit_edge:            ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then21.i:                                      ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.30, i32 noundef 1, i64 noundef %.unpack39.i) #7
  br label %cleanup

if.end26:                                         ; preds = %if.end14
  %214 = and i8 %insn.sroa.0.0.copyload.i, -25
  %215 = zext i8 %214 to i64
  call void @__sanitizer_cov_trace_switch(i64 %215, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %214, label %if.end42 [
    i8 97, label %if.then28
    i8 99, label %if.then36
    i8 -61, label %if.then40
  ]

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = tail call fastcc i32 @nfp_bpf_check_ptr(ptr noundef %meta.addr.4.i, ptr noundef %env, i8 noundef zeroext %bf.clear)
  br label %cleanup

if.then36:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %call37 = tail call fastcc i32 @nfp_bpf_check_store(ptr noundef %7, ptr noundef %meta.addr.4.i, ptr noundef %env)
  br label %cleanup

if.then40:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %call41 = tail call fastcc i32 @nfp_bpf_check_atomic(ptr noundef %meta.addr.4.i, ptr noundef %env)
  br label %cleanup

if.end42:                                         ; preds = %if.end26
  %trunc = trunc i8 %insn.sroa.0.0.copyload.i to i3
  %216 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %216, ptr @__sancov_gen_cov_switch_values.62)
  switch i3 %trunc, label %if.end42.cleanup_crit_edge [
    i3 -1, label %if.end42.if.then44_crit_edge
    i3 -4, label %if.end42.if.then44_crit_edge128
  ]

if.end42.if.then44_crit_edge128:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44

if.end42.if.then44_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then44

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then44:                                        ; preds = %if.end42.if.then44_crit_edge, %if.end42.if.then44_crit_edge128
  %call45 = tail call fastcc i32 @nfp_bpf_check_alu(ptr noundef %meta.addr.4.i, ptr noundef %env)
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %if.end42.cleanup_crit_edge, %if.then40, %if.then36, %if.then28, %if.then21.i, %switch.early.test.i.cleanup_crit_edge, %switch.early.test.i.cleanup_crit_edge126, %switch.early.test.i.cleanup_crit_edge127, %if.end9.i94.cleanup_crit_edge, %if.then4.i, %if.then24.cleanup_crit_edge, %sw.epilog.i, %sw.default.i, %if.then114.i, %land.lhs.true92.i.cleanup_crit_edge, %if.then87.i, %if.then71.i, %if.then64.i, %if.end60.i, %if.then6.i291.i, %if.then2.i282.i, %if.then.i277.i, %nfp_bpf_map_call_ok.exit275.i, %nfp_bpf_map_update_value_ok.exit.i, %if.then6.i266.i, %if.then2.i257.i, %if.then.i252.i, %if.then6.i237.i, %if.then2.i228.i, %if.then.i223.i, %nfp_bpf_map_call_ok.exit221.i, %if.then6.i.i, %if.then2.i.i, %if.then.i210.i, %nfp_bpf_map_call_ok.exit.i, %if.then12.i, %if.then8.i, %if.then.i82, %is_mbpf_helper_call.exit.cleanup_crit_edge, %if.then13, %if.then
  %retval.0 = phi i32 [ -22, %if.then13 ], [ %call33, %if.then28 ], [ %call37, %if.then36 ], [ %call41, %if.then40 ], [ %call45, %if.then44 ], [ -22, %if.then ], [ 0, %if.end42.cleanup_crit_edge ], [ -95, %sw.default.i ], [ -95, %if.then71.i ], [ -95, %if.then87.i ], [ -22, %if.then114.i ], [ 0, %sw.epilog.i ], [ -95, %if.then64.i ], [ -95, %if.end60.i ], [ -95, %if.then12.i ], [ -95, %if.then8.i ], [ -95, %if.then.i82 ], [ -95, %nfp_bpf_map_call_ok.exit.i ], [ -95, %nfp_bpf_map_update_value_ok.exit.i ], [ -95, %nfp_bpf_map_call_ok.exit221.i ], [ -95, %nfp_bpf_map_call_ok.exit275.i ], [ -95, %land.lhs.true92.i.cleanup_crit_edge ], [ -95, %if.then.i210.i ], [ -95, %if.then6.i.i ], [ -95, %if.then2.i.i ], [ -95, %if.then.i223.i ], [ -95, %if.then6.i237.i ], [ -95, %if.then2.i228.i ], [ -95, %if.then.i252.i ], [ -95, %if.then6.i266.i ], [ -95, %if.then2.i257.i ], [ -95, %if.then.i277.i ], [ -95, %if.then6.i291.i ], [ -95, %if.then2.i282.i ], [ -22, %if.then21.i ], [ -22, %if.then4.i ], [ 0, %if.then24.cleanup_crit_edge ], [ 0, %switch.early.test.i.cleanup_crit_edge ], [ 0, %if.end9.i94.cleanup_crit_edge ], [ 0, %switch.early.test.i.cleanup_crit_edge126 ], [ 0, %switch.early.test.i.cleanup_crit_edge127 ], [ 0, %is_mbpf_helper_call.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfp_bpf_supported_opcode(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_verifier_log_write(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_bpf_check_ptr(ptr nocapture noundef %meta, ptr noundef %env, i8 noundef zeroext %reg_no) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_state.i.i = getelementptr inbounds %struct.bpf_verifier_env, ptr %env, i32 0, i32 8
  %0 = ptrtoint ptr %cur_state.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_state.i.i, align 4
  %curframe.i.i = getelementptr inbounds %struct.bpf_verifier_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %curframe.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %curframe.i.i, align 4
  %arrayidx.i.i = getelementptr [8 x ptr], ptr %1, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %conv = zext i8 %reg_no to i32
  %add.ptr = getelementptr %struct.bpf_reg_state, ptr %5, i32 %conv
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %7, label %if.then [
    i32 6, label %if.then17
    i32 2, label %entry.if.end21_crit_edge
    i32 4, label %entry.if.end21_crit_edge5
    i32 8, label %entry.if.end21_crit_edge6
  ]

entry.if.end21_crit_edge6:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

entry.if.end21_crit_edge5:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.31, i32 noundef %7) #7
  br label %cleanup

if.then17:                                        ; preds = %entry
  %frameno.i = getelementptr %struct.bpf_reg_state, ptr %5, i32 %conv, i32 15
  %9 = ptrtoint ptr %frameno.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %frameno.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %3)
  %cmp.not.i = icmp eq i32 %10, %3
  br i1 %cmp.not.i, label %if.then17.if.end.i_crit_edge, label %if.then.i

if.then17.if.end.i_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 4
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags.i, align 2
  %13 = or i16 %12, 4
  store i16 %13, ptr %flags.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then17.if.end.i_crit_edge
  %var_off.i = getelementptr %struct.bpf_reg_state, ptr %5, i32 %conv, i32 5
  %14 = ptrtoint ptr %var_off.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %.unpack.i = load i64, ptr %var_off.i, align 8
  %.elt1.i = getelementptr %struct.bpf_reg_state, ptr %5, i32 %conv, i32 5, i32 1
  %15 = ptrtoint ptr %.elt1.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %.unpack2.i = load i64, ptr %.elt1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack2.i)
  %tobool.not.i.i = icmp eq i64 %.unpack2.i, 0
  br i1 %tobool.not.i.i, label %if.end3.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.34) #7
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %16 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp4.i = icmp eq i32 %18, 0
  br i1 %cmp4.i, label %if.end3.i.if.end21thread-pre-split_crit_edge, label %if.end7.i

if.end3.i.if.end21thread-pre-split_crit_edge:     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21thread-pre-split

if.end7.i:                                        ; preds = %if.end3.i
  %off.i = getelementptr inbounds %struct.bpf_reg_state, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %off.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %off.i, align 4
  %var_off11.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %var_off11.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %var_off11.i, align 8
  %23 = trunc i64 %22 to i32
  %conv12.i = add i32 %20, %23
  %off13.i = getelementptr %struct.bpf_reg_state, ptr %5, i32 %conv, i32 1
  %24 = ptrtoint ptr %off13.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %off13.i, align 4
  %26 = trunc i64 %.unpack.i to i32
  %conv18.i = add i32 %25, %26
  call void @__sanitizer_cov_trace_cmp4(i32 %conv12.i, i32 %conv18.i)
  %cmp19.i = icmp ne i32 %conv12.i, %conv18.i
  %conv20.i = zext i1 %cmp19.i to i32
  %ptr_not_const.i = getelementptr inbounds %struct.anon, ptr %16, i32 0, i32 3
  %27 = ptrtoint ptr %ptr_not_const.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ptr_not_const.i, align 2, !range !128
  %29 = zext i8 %28 to i32
  %or22.i = or i32 %conv20.i, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or22.i)
  %tobool23.not.i = icmp eq i32 %or22.i, 0
  %30 = trunc i32 %or22.i to i8
  %31 = ptrtoint ptr %ptr_not_const.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %ptr_not_const.i, align 2
  br i1 %tobool23.not.i, label %if.end7.i.if.end21thread-pre-split_crit_edge, label %if.end27.i

if.end7.i.if.end21thread-pre-split_crit_edge:     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21thread-pre-split

if.end27.i:                                       ; preds = %if.end7.i
  %rem.i = srem i32 %conv12.i, 4
  %rem28.i = srem i32 %conv18.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %rem28.i)
  %cmp29.i = icmp eq i32 %rem.i, %rem28.i
  br i1 %cmp29.i, label %if.end27.i.if.end21thread-pre-split_crit_edge, label %if.end32.i

if.end27.i.if.end21thread-pre-split_crit_edge:    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21thread-pre-split

if.end32.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.35, i32 noundef %conv12.i, i32 noundef %conv18.i) #7
  br label %cleanup

if.end21thread-pre-split:                         ; preds = %if.end27.i.if.end21thread-pre-split_crit_edge, %if.end7.i.if.end21thread-pre-split_crit_edge, %if.end3.i.if.end21thread-pre-split_crit_edge
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr = load i32, ptr %add.ptr, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end21thread-pre-split, %entry.if.end21_crit_edge, %entry.if.end21_crit_edge5, %entry.if.end21_crit_edge6
  %33 = phi i32 [ %.pr, %if.end21thread-pre-split ], [ %7, %entry.if.end21_crit_edge ], [ %7, %entry.if.end21_crit_edge5 ], [ %7, %entry.if.end21_crit_edge6 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp23 = icmp eq i32 %33, 4
  br i1 %cmp23, label %if.then25, label %if.end21.if.end43_crit_edge

if.end21.if.end43_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then25:                                        ; preds = %if.end21
  %34 = ptrtoint ptr %meta to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %meta, align 8
  %36 = and i8 %35, -25
  call void @__sanitizer_cov_trace_const_cmp1(i8 97, i8 %36)
  %cmp.i = icmp eq i8 %36, 97
  br i1 %cmp.i, label %if.then27, label %if.then25.if.end32_crit_edge

if.then25.if.end32_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then27:                                        ; preds = %if.then25
  %call28 = tail call fastcc i32 @nfp_bpf_map_mark_used(ptr noundef %env, ptr noundef %meta, ptr noundef %add.ptr, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then27.if.end32_crit_edge, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then27.if.end32_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.end32:                                         ; preds = %if.then27.if.end32_crit_edge, %if.then25.if.end32_crit_edge
  %37 = ptrtoint ptr %meta to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %meta, align 8
  %39 = and i8 %38, -25
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %39, label %if.end32.if.end43_crit_edge [
    i8 99, label %if.then34
    i8 -61, label %if.then37
  ]

if.end32.if.end43_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.32) #7
  br label %cleanup

if.then37:                                        ; preds = %if.end32
  %call38 = tail call fastcc i32 @nfp_bpf_map_mark_used(ptr noundef %env, ptr noundef %meta, ptr noundef %add.ptr, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then37.if.end43_crit_edge, label %if.then37.cleanup_crit_edge

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then37.if.end43_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.end43:                                         ; preds = %if.then37.if.end43_crit_edge, %if.end32.if.end43_crit_edge, %if.end21.if.end43_crit_edge
  %41 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp45.not = icmp eq i32 %43, 0
  br i1 %cmp45.not, label %if.end43.if.end57_crit_edge, label %land.lhs.true47

if.end43.if.end57_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

land.lhs.true47:                                  ; preds = %if.end43
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp51.not = icmp eq i32 %43, %45
  br i1 %cmp51.not, label %land.lhs.true47.if.end57_crit_edge, label %if.then53

land.lhs.true47.if.end57_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then53:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.33, i32 noundef %43, i32 noundef %45) #7
  br label %cleanup

if.end57:                                         ; preds = %land.lhs.true47.if.end57_crit_edge, %if.end43.if.end57_crit_edge
  %46 = call ptr @memcpy(ptr %41, ptr %add.ptr, i32 112)
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.then53, %if.then37.cleanup_crit_edge, %if.then34, %if.then27.cleanup_crit_edge, %if.end32.i, %if.then2.i, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -95, %if.then34 ], [ -22, %if.then53 ], [ 0, %if.end57 ], [ %call28, %if.then27.cleanup_crit_edge ], [ %call38, %if.then37.cleanup_crit_edge ], [ -22, %if.end32.i ], [ -22, %if.then2.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_bpf_check_store(ptr nocapture noundef readonly %nfp_prog, ptr nocapture noundef %meta, ptr noundef %env) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_state.i.i = getelementptr inbounds %struct.bpf_verifier_env, ptr %env, i32 0, i32 8
  %0 = ptrtoint ptr %cur_state.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_state.i.i, align 4
  %curframe.i.i = getelementptr inbounds %struct.bpf_verifier_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %curframe.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %curframe.i.i, align 4
  %arrayidx.i.i = getelementptr [8 x ptr], ptr %1, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %dst_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %6 = ptrtoint ptr %dst_reg to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %dst_reg, align 1
  %bf.lshr = lshr i8 %bf.load, 4
  %conv = zext i8 %bf.lshr to i32
  %add.ptr = getelementptr %struct.bpf_reg_state, ptr %5, i32 %conv
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp eq i32 %8, 2
  br i1 %cmp, label %if.then, label %entry.exit_check_ptr_crit_edge

entry.exit_check_ptr_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_check_ptr

if.then:                                          ; preds = %entry
  %type2 = getelementptr inbounds %struct.nfp_prog, ptr %nfp_prog, i32 0, i32 6
  %9 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %10)
  %cmp3 = icmp eq i32 %10, 6
  br i1 %cmp3, label %if.then5, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then5:                                         ; preds = %if.then
  %off = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 2
  %11 = ptrtoint ptr %off to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %off, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %12)
  %cond = icmp eq i16 %12, 16
  br i1 %cond, label %sw.bb, label %if.then5.if.end9_crit_edge

if.then5.if.end9_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

sw.bb:                                            ; preds = %if.then5
  %13 = ptrtoint ptr %nfp_prog to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nfp_prog, align 4
  %queue_select = getelementptr inbounds %struct.nfp_app_bpf, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %queue_select to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %queue_select, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.exit_check_ptr_crit_edge

sw.bb.exit_check_ptr_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_check_ptr

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.45) #7
  br label %cleanup

if.end9:                                          ; preds = %if.then5.if.end9_crit_edge, %if.then.if.end9_crit_edge
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.46) #7
  br label %cleanup

exit_check_ptr:                                   ; preds = %sw.bb.exit_check_ptr_crit_edge, %entry.exit_check_ptr_crit_edge
  %call15 = tail call fastcc i32 @nfp_bpf_check_ptr(ptr noundef %meta, ptr noundef %env, i8 noundef zeroext %bf.lshr)
  br label %cleanup

cleanup:                                          ; preds = %exit_check_ptr, %if.end9, %if.end
  %retval.0 = phi i32 [ %call15, %exit_check_ptr ], [ -95, %if.end ], [ -95, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_bpf_check_atomic(ptr nocapture noundef %meta, ptr noundef %env) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_state.i.i = getelementptr inbounds %struct.bpf_verifier_env, ptr %env, i32 0, i32 8
  %0 = ptrtoint ptr %cur_state.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_state.i.i, align 4
  %curframe.i.i = getelementptr inbounds %struct.bpf_verifier_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %curframe.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %curframe.i.i, align 4
  %arrayidx.i.i = getelementptr [8 x ptr], ptr %1, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %src_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %6 = ptrtoint ptr %src_reg to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %src_reg, align 1
  %bf.clear = and i8 %bf.load, 15
  %conv = zext i8 %bf.clear to i32
  %add.ptr = getelementptr %struct.bpf_reg_state, ptr %5, i32 %conv
  %imm = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %7 = ptrtoint ptr %imm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %imm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.47, i32 noundef %8) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %bf.lshr = lshr i8 %bf.load, 4
  %conv4 = zext i8 %bf.lshr to i32
  %add.ptr5 = getelementptr %struct.bpf_reg_state, ptr %5, i32 %conv4
  %9 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp10.not = icmp eq i32 %10, 4
  br i1 %cmp10.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.48, i32 noundef %10) #7
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp16.not = icmp eq i32 %12, 1
  br i1 %cmp16.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.49, i32 noundef %12) #7
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %var_off = getelementptr %struct.bpf_reg_state, ptr %5, i32 %conv, i32 5
  %13 = ptrtoint ptr %var_off to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %var_off, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 65535, i64 %14)
  %cmp21 = icmp ugt i64 %14, 65535
  br i1 %cmp21, label %if.end20.lor.end_crit_edge, label %lor.rhs

if.end20.lor.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.rhs:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %mask = getelementptr %struct.bpf_reg_state, ptr %5, i32 %conv, i32 5, i32 1
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %mask, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 65535, i64 %16)
  %cmp24 = icmp ugt i64 %16, 65535
  %phi.cast = zext i1 %cmp24 to i8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end20.lor.end_crit_edge
  %17 = phi i8 [ 1, %if.end20.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  %18 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1
  %xadd_over_16bit = getelementptr inbounds %struct.anon, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %xadd_over_16bit to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %xadd_over_16bit, align 2, !range !128
  %or = or i8 %20, %17
  store i8 %or, ptr %xadd_over_16bit, align 2
  %21 = ptrtoint ptr %var_off to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %var_off, align 8
  %mask31 = getelementptr %struct.bpf_reg_state, ptr %5, i32 %conv, i32 5, i32 1
  %23 = ptrtoint ptr %mask31 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %mask31, align 8
  %neg = xor i64 %24, -1
  %and = and i64 %22, %neg
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %and)
  %cmp32 = icmp ult i64 %and, 65536
  %conv33 = zext i1 %cmp32 to i8
  %xadd_maybe_16bit = getelementptr inbounds %struct.anon, ptr %18, i32 0, i32 6
  %25 = ptrtoint ptr %xadd_maybe_16bit to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %xadd_maybe_16bit, align 1, !range !128
  %or36 = or i8 %26, %conv33
  store i8 %or36, ptr %xadd_maybe_16bit, align 1
  %call43 = tail call fastcc i32 @nfp_bpf_check_ptr(ptr noundef %meta, ptr noundef %env, i8 noundef zeroext %bf.lshr)
  br label %cleanup

cleanup:                                          ; preds = %lor.end, %if.then18, %if.then12, %if.then
  %retval.0 = phi i32 [ -95, %if.then ], [ -95, %if.then12 ], [ -95, %if.then18 ], [ %call43, %lor.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_bpf_check_alu(ptr nocapture noundef %meta, ptr noundef %env) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_state.i.i = getelementptr inbounds %struct.bpf_verifier_env, ptr %env, i32 0, i32 8
  %0 = ptrtoint ptr %cur_state.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_state.i.i, align 4
  %curframe.i.i = getelementptr inbounds %struct.bpf_verifier_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %curframe.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %curframe.i.i, align 4
  %arrayidx.i.i = getelementptr [8 x ptr], ptr %1, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %src_reg = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 1
  %6 = ptrtoint ptr %src_reg to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %src_reg, align 1
  %bf.clear = and i8 %bf.load, 15
  %conv = zext i8 %bf.clear to i32
  %bf.lshr = lshr i8 %bf.load, 4
  %conv4 = zext i8 %bf.lshr to i32
  %7 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %7, align 8
  %umin_value = getelementptr %struct.bpf_reg_state, ptr %5, i32 %conv, i32 8
  %10 = ptrtoint ptr %umin_value to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %umin_value, align 8
  %12 = tail call i64 @llvm.umin.i64(i64 %9, i64 %11)
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %7, align 8
  %umax_src = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %umax_src to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %umax_src, align 8
  %umax_value = getelementptr %struct.bpf_reg_state, ptr %5, i32 %conv, i32 9
  %16 = ptrtoint ptr %umax_value to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %umax_value, align 8
  %18 = tail call i64 @llvm.umax.i64(i64 %15, i64 %17)
  %19 = ptrtoint ptr %umax_src to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %umax_src, align 8
  %umin_dst = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %umin_dst to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %umin_dst, align 8
  %umin_value16 = getelementptr %struct.bpf_reg_state, ptr %5, i32 %conv4, i32 8
  %22 = ptrtoint ptr %umin_value16 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %umin_value16, align 8
  %24 = tail call i64 @llvm.umin.i64(i64 %21, i64 %23)
  %25 = ptrtoint ptr %umin_dst to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %umin_dst, align 8
  %umax_dst = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta, i32 0, i32 1, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %umax_dst to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %umax_dst, align 8
  %umax_value25 = getelementptr %struct.bpf_reg_state, ptr %5, i32 %conv4, i32 9
  %28 = ptrtoint ptr %umax_value25 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %umax_value25, align 8
  %30 = tail call i64 @llvm.umax.i64(i64 %27, i64 %29)
  %31 = ptrtoint ptr %umax_dst to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %umax_dst, align 8
  %32 = ptrtoint ptr %meta to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %meta, align 8
  %trunc.i = trunc i8 %33 to i3
  %34 = zext i3 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.65)
  switch i3 %trunc.i, label %entry.cleanup_crit_edge [
    i3 -1, label %entry.is_mbpf_mul.exit_crit_edge
    i3 -4, label %entry.is_mbpf_mul.exit_crit_edge11
  ]

entry.is_mbpf_mul.exit_crit_edge11:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_mbpf_mul.exit

entry.is_mbpf_mul.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_mbpf_mul.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

is_mbpf_mul.exit:                                 ; preds = %entry.is_mbpf_mul.exit_crit_edge, %entry.is_mbpf_mul.exit_crit_edge11
  %35 = and i8 %33, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %35)
  %cmp.i = icmp eq i8 %35, 32
  br i1 %cmp.i, label %if.then, label %is_mbpf_mul.exit.if.end63_crit_edge

is_mbpf_mul.exit.if.end63_crit_edge:              ; preds = %is_mbpf_mul.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

if.then:                                          ; preds = %is_mbpf_mul.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %30)
  %cmp36 = icmp ugt i64 %30, 4294967295
  br i1 %cmp36, label %if.then.cleanup.sink.split_crit_edge, label %if.end

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.then
  %36 = and i8 %33, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp41.not = icmp eq i8 %36, 0
  br i1 %cmp41.not, label %if.end47, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %18)
  %cmp44 = icmp ugt i64 %18, 4294967295
  br i1 %cmp44, label %land.lhs.true.cleanup.sink.split_crit_edge, label %land.lhs.true.if.end63_crit_edge

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end47:                                         ; preds = %if.end
  %37 = and i8 %33, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %37)
  %cmp50 = icmp eq i8 %37, 7
  br i1 %cmp50, label %land.lhs.true57, label %if.end47.if.end63_crit_edge

if.end47.if.end63_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

land.lhs.true57:                                  ; preds = %if.end47
  %imm = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %38 = ptrtoint ptr %imm to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %imm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp59 = icmp slt i32 %39, 0
  br i1 %cmp59, label %land.lhs.true57.cleanup.sink.split_crit_edge, label %land.lhs.true57.if.end63_crit_edge

land.lhs.true57.if.end63_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

land.lhs.true57.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end63:                                         ; preds = %land.lhs.true57.if.end63_crit_edge, %if.end47.if.end63_crit_edge, %land.lhs.true.if.end63_crit_edge, %is_mbpf_mul.exit.if.end63_crit_edge
  %40 = zext i3 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.66)
  switch i3 %trunc.i, label %if.end63.cleanup_crit_edge [
    i3 -1, label %if.end63.is_mbpf_div.exit_crit_edge
    i3 -4, label %if.end63.is_mbpf_div.exit_crit_edge12
  ]

if.end63.is_mbpf_div.exit_crit_edge12:            ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_mbpf_div.exit

if.end63.is_mbpf_div.exit_crit_edge:              ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %is_mbpf_div.exit

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

is_mbpf_div.exit:                                 ; preds = %if.end63.is_mbpf_div.exit_crit_edge, %if.end63.is_mbpf_div.exit_crit_edge12
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %35)
  %cmp.i5 = icmp eq i8 %35, 48
  br i1 %cmp.i5, label %if.then65, label %is_mbpf_div.exit.cleanup_crit_edge

is_mbpf_div.exit.cleanup_crit_edge:               ; preds = %is_mbpf_div.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then65:                                        ; preds = %is_mbpf_div.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %30)
  %cmp67 = icmp ugt i64 %30, 4294967295
  br i1 %cmp67, label %if.then65.cleanup.sink.split_crit_edge, label %if.end70

if.then65.cleanup.sink.split_crit_edge:           ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end70:                                         ; preds = %if.then65
  %41 = and i8 %33, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %switch.not = icmp eq i8 %41, 0
  br i1 %switch.not, label %land.lhs.true92, label %if.then75

if.then75:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %18)
  %cmp78.not = icmp eq i64 %12, %18
  br i1 %cmp78.not, label %if.end81, label %if.then75.cleanup.sink.split_crit_edge

if.then75.cleanup.sink.split_crit_edge:           ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end81:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %12)
  %cmp83 = icmp ugt i64 %12, 4294967295
  br i1 %cmp83, label %if.end81.cleanup.sink.split_crit_edge, label %if.end81.cleanup_crit_edge

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end81.cleanup.sink.split_crit_edge:            ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

land.lhs.true92:                                  ; preds = %if.end70
  %imm94 = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 3
  %42 = ptrtoint ptr %imm94 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %imm94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp95 = icmp slt i32 %43, 0
  br i1 %cmp95, label %land.lhs.true92.cleanup.sink.split_crit_edge, label %land.lhs.true92.cleanup_crit_edge

land.lhs.true92.cleanup_crit_edge:                ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true92.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %land.lhs.true92.cleanup.sink.split_crit_edge, %if.end81.cleanup.sink.split_crit_edge, %if.then75.cleanup.sink.split_crit_edge, %if.then65.cleanup.sink.split_crit_edge, %land.lhs.true57.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.str.56.sink = phi ptr [ @.str.50, %if.then.cleanup.sink.split_crit_edge ], [ @.str.51, %land.lhs.true.cleanup.sink.split_crit_edge ], [ @.str.52, %land.lhs.true57.cleanup.sink.split_crit_edge ], [ @.str.53, %if.then65.cleanup.sink.split_crit_edge ], [ @.str.54, %if.then75.cleanup.sink.split_crit_edge ], [ @.str.55, %if.end81.cleanup.sink.split_crit_edge ], [ @.str.56, %land.lhs.true92.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull %.str.56.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true92.cleanup_crit_edge, %if.end81.cleanup_crit_edge, %is_mbpf_div.exit.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true92.cleanup_crit_edge ], [ 0, %is_mbpf_div.exit.cleanup_crit_edge ], [ 0, %if.end63.cleanup_crit_edge ], [ 0, %if.end81.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_bpf_finalize(ptr noundef %env) local_unnamed_addr #2 align 64 {
entry:
  %ret_insn.i = alloca [8 x ptr], align 4
  %frame_depths.i = alloca [8 x i16], align 2
  %ret_prog.i = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %prog = getelementptr inbounds %struct.bpf_verifier_env, ptr %env, i32 0, i32 2
  %0 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prog, align 8
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aux, align 4
  %offload = getelementptr inbounds %struct.bpf_prog_aux, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %offload to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %offload, align 8
  %dev_priv = getelementptr inbounds %struct.bpf_prog_offload, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv, align 4
  %subprog_cnt = getelementptr inbounds %struct.bpf_verifier_env, ptr %env, i32 0, i32 31
  %8 = ptrtoint ptr %subprog_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %subprog_cnt, align 4
  %subprog_cnt1 = getelementptr inbounds %struct.nfp_prog, ptr %7, i32 0, i32 17
  %10 = ptrtoint ptr %subprog_cnt1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %subprog_cnt1, align 4
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 4) #7
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !129

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %subprog93 = getelementptr inbounds %struct.nfp_prog, ptr %7, i32 0, i32 19
  %13 = ptrtoint ptr %subprog93 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %subprog93, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %14 = extractvalue { i32, i1 } %11, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #11
  %subprog = getelementptr inbounds %struct.nfp_prog, ptr %7, i32 0, i32 19
  %15 = ptrtoint ptr %subprog to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call8.i.i, ptr %subprog, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  %insns.i = getelementptr inbounds %struct.nfp_prog, ptr %7, i32 0, i32 21
  %16 = ptrtoint ptr %insns.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn1.i = load ptr, ptr %insns.i, align 4
  %cmp.not2.i = icmp eq ptr %.pn1.i, %insns.i
  br i1 %cmp.not2.i, label %if.end.for.end.i_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn4.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn1.i, %if.end.for.body.i_crit_edge ]
  %index.03.i = phi i32 [ %spec.select.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %meta.0.i = getelementptr i8, ptr %.pn4.i, i32 -264
  %call.i = tail call zeroext i1 @nfp_is_subprog_start(ptr noundef %meta.0.i) #7
  %inc.i = zext i1 %call.i to i32
  %spec.select.i = add i32 %index.03.i, %inc.i
  %conv.i = trunc i32 %spec.select.i to i16
  %subprog_idx.i = getelementptr i8, ptr %.pn4.i, i32 -8
  %17 = ptrtoint ptr %subprog_idx.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %subprog_idx.i, align 8
  %dst_reg.i = getelementptr i8, ptr %.pn4.i, i32 -263
  %18 = ptrtoint ptr %dst_reg.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %dst_reg.i, align 1
  %19 = add i8 %bf.load.i, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %19)
  %20 = icmp ult i8 %19, 64
  br i1 %20, label %if.then12.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then12.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %subprog to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %subprog, align 4
  %needs_reg_push.i = getelementptr %struct.nfp_bpf_subprog_info, ptr %22, i32 %spec.select.i, i32 1
  %23 = ptrtoint ptr %needs_reg_push.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load13.i = load i8, ptr %needs_reg_push.i, align 2
  %bf.set.i = or i8 %bf.load13.i, -128
  store i8 %bf.set.i, ptr %needs_reg_push.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then12.i, %for.body.i.for.inc.i_crit_edge
  %24 = ptrtoint ptr %.pn4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn.i = load ptr, ptr %.pn4.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %insns.i
  br i1 %cmp.not.i, label %for.end.loopexit.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo.i = add i32 %spec.select.i, 1
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %if.end.for.end.i_crit_edge
  %index.0.lcssa.i = phi i32 [ 1, %if.end.for.end.i_crit_edge ], [ %phi.bo.i, %for.end.loopexit.i ]
  %25 = ptrtoint ptr %subprog_cnt1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %subprog_cnt1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0.lcssa.i, i32 %26)
  %cmp20.not.i = icmp eq i32 %index.0.lcssa.i, %26
  br i1 %cmp20.not.i, label %for.end.i.nfp_assign_subprog_idx_and_regs.exit_crit_edge, label %if.then22.i

for.end.i.nfp_assign_subprog_idx_and_regs.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_assign_subprog_idx_and_regs.exit

if.then22.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.57, i32 noundef %index.0.lcssa.i, i32 noundef %26) #7
  %27 = ptrtoint ptr %subprog_cnt1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr = load i32, ptr %subprog_cnt1, align 4
  br label %nfp_assign_subprog_idx_and_regs.exit

nfp_assign_subprog_idx_and_regs.exit:             ; preds = %if.then22.i, %for.end.i.nfp_assign_subprog_idx_and_regs.exit_crit_edge
  %28 = phi i32 [ %26, %for.end.i.nfp_assign_subprog_idx_and_regs.exit_crit_edge ], [ %.pr, %if.then22.i ]
  %subprog_info = getelementptr inbounds %struct.bpf_verifier_env, ptr %env, i32 0, i32 27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp105.not = icmp eq i32 %28, 0
  br i1 %cmp105.not, label %nfp_assign_subprog_idx_and_regs.exit.for.end_crit_edge, label %for.inc.peel

nfp_assign_subprog_idx_and_regs.exit.for.end_crit_edge: ; preds = %nfp_assign_subprog_idx_and_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.peel:                                     ; preds = %nfp_assign_subprog_idx_and_regs.exit
  %stack_depth.peel = getelementptr %struct.bpf_verifier_env, ptr %env, i32 0, i32 27, i32 0, i32 2
  %29 = ptrtoint ptr %stack_depth.peel to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %stack_depth.peel, align 4
  %31 = ptrtoint ptr %subprog to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %subprog, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %30, ptr %32, align 2
  %34 = ptrtoint ptr %subprog_cnt1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %subprog_cnt1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp.peel = icmp ugt i32 %35, 1
  br i1 %cmp.peel, label %for.inc.peel.if.end11_crit_edge, label %for.inc.peel.for.end_crit_edge

for.inc.peel.for.end_crit_edge:                   ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.peel.if.end11_crit_edge:                  ; preds = %for.inc.peel
  br label %if.end11

if.end11:                                         ; preds = %for.inc.if.end11_crit_edge, %for.inc.peel.if.end11_crit_edge
  %i.0106 = phi i32 [ %inc, %for.inc.if.end11_crit_edge ], [ 1, %for.inc.peel.if.end11_crit_edge ]
  %stack_depth = getelementptr %struct.bpf_subprog_info, ptr %subprog_info, i32 %i.0106, i32 2
  %36 = ptrtoint ptr %stack_depth to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %stack_depth, align 4
  %38 = ptrtoint ptr %subprog to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %subprog, align 4
  %arrayidx7 = getelementptr %struct.nfp_bpf_subprog_info, ptr %39, i32 %i.0106
  %40 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %37, ptr %arrayidx7, align 2
  %41 = load ptr, ptr %subprog, align 4
  %arrayidx13 = getelementptr %struct.nfp_bpf_subprog_info, ptr %41, i32 %i.0106
  %42 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx13, align 2
  %add = add i16 %43, 4
  store i16 %add, ptr %arrayidx13, align 2
  %44 = load ptr, ptr %subprog, align 4
  %needs_reg_push = getelementptr %struct.nfp_bpf_subprog_info, ptr %44, i32 %i.0106, i32 1
  %45 = ptrtoint ptr %needs_reg_push to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load = load i8, ptr %needs_reg_push, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool18.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool18.not, label %if.end11.for.inc_crit_edge, label %if.then19

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then19:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx17 = getelementptr %struct.nfp_bpf_subprog_info, ptr %44, i32 %i.0106
  %46 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx17, align 2
  %add24 = add i16 %47, 32
  store i16 %add24, ptr %arrayidx17, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %if.end11.for.inc_crit_edge
  %inc = add nuw i32 %i.0106, 1
  %48 = ptrtoint ptr %subprog_cnt1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %subprog_cnt1, align 4
  %cmp = icmp ult i32 %inc, %49
  br i1 %cmp, label %for.inc.if.end11_crit_edge, label %for.inc.for.end_crit_edge, !llvm.loop !130

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.if.end11_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.inc.peel.for.end_crit_edge, %nfp_assign_subprog_idx_and_regs.exit.for.end_crit_edge
  %50 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prog, align 8
  %aux28 = getelementptr inbounds %struct.bpf_prog, ptr %51, i32 0, i32 10
  %52 = ptrtoint ptr %aux28 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %aux28, align 4
  %offload29 = getelementptr inbounds %struct.bpf_prog_aux, ptr %53, i32 0, i32 48
  %54 = ptrtoint ptr %offload29 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %offload29, align 8
  %netdev = getelementptr inbounds %struct.bpf_prog_offload, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %netdev, align 4
  %ctrl_bar.i = getelementptr i8, ptr %57, i32 2340
  %58 = ptrtoint ptr %ctrl_bar.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ctrl_bar.i, align 4
  %add.ptr.i72 = getelementptr i8, ptr %59, i32 136
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i72) #7, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  %conv32 = zext i8 %60 to i32
  %61 = ptrtoint ptr %insns.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %insns.i, align 4
  %add.ptr.i75 = getelementptr i8, ptr %62, i32 -264
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ret_insn.i) #7
  %63 = call ptr @memset(ptr %ret_insn.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %frame_depths.i) #7
  %64 = call ptr @memset(ptr %frame_depths.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ret_prog.i) #7
  %subprog_idx.i76 = getelementptr i8, ptr %62, i32 -8
  %65 = call ptr @memset(ptr %ret_prog.i, i32 255, i32 16)
  %66 = ptrtoint ptr %subprog to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %subprog, align 4
  %prev.i = getelementptr inbounds %struct.nfp_prog, ptr %7, i32 0, i32 21, i32 1
  %68 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %69, i32 -264
  %n_insns.i.i = getelementptr inbounds %struct.nfp_prog, ptr %7, i32 0, i32 20
  br label %process_subprog.i

process_subprog.i:                                ; preds = %nfp_bpf_goto_meta.exit.i, %for.end
  %idx.0.in.i = phi ptr [ %subprog_idx.i76, %for.end ], [ %subprog_idx31.i, %nfp_bpf_goto_meta.exit.i ]
  %frame.0.i = phi i32 [ 0, %for.end ], [ %inc.i81, %nfp_bpf_goto_meta.exit.i ]
  %depth.0.i = phi i32 [ 0, %for.end ], [ %depth.1.i, %nfp_bpf_goto_meta.exit.i ]
  %max_depth.0.i = phi i32 [ 0, %for.end ], [ %74, %nfp_bpf_goto_meta.exit.i ]
  %meta.0.i78 = phi ptr [ %add.ptr.i75, %for.end ], [ %meta.addr.4.i.i, %nfp_bpf_goto_meta.exit.i ]
  %70 = ptrtoint ptr %idx.0.in.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %idx.0.i = load i16, ptr %idx.0.in.i, align 8
  %idxprom.i = zext i16 %idx.0.i to i32
  %arrayidx.i = getelementptr %struct.nfp_bpf_subprog_info, ptr %67, i32 %idxprom.i
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arrayidx.i, align 2
  %arrayidx1.i = getelementptr [8 x i16], ptr %frame_depths.i, i32 0, i32 %frame.0.i
  %sub.i = add i16 %72, -1
  %or.i = or i16 %sub.i, 63
  %add.i = add i16 %or.i, 1
  %73 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %add.i, ptr %arrayidx1.i, align 2
  %conv6.i = zext i16 %add.i to i32
  %add7.i = add i32 %depth.0.i, %conv6.i
  %74 = tail call i32 @llvm.umax.i32(i32 %max_depth.0.i, i32 %add7.i) #7
  br label %continue_subprog.i

continue_subprog.i:                               ; preds = %if.end40.i, %process_subprog.i
  %idx.1.i = phi i16 [ %idx.0.i, %process_subprog.i ], [ %103, %if.end40.i ]
  %frame.1.i = phi i32 [ %frame.0.i, %process_subprog.i ], [ %dec.i, %if.end40.i ]
  %depth.1.i = phi i32 [ %add7.i, %process_subprog.i ], [ %sub43.i, %if.end40.i ]
  %meta.1.i = phi ptr [ %meta.0.i78, %process_subprog.i ], [ %101, %if.end40.i ]
  %cmp14.not83.i = icmp eq ptr %meta.1.i, %add.ptr13.i
  br i1 %cmp14.not83.i, label %continue_subprog.i.for.end.i83_crit_edge, label %continue_subprog.i.land.rhs.i_crit_edge

continue_subprog.i.land.rhs.i_crit_edge:          ; preds = %continue_subprog.i
  br label %land.rhs.i

continue_subprog.i.for.end.i83_crit_edge:         ; preds = %continue_subprog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i83

land.rhs.i:                                       ; preds = %for.inc.i82.land.rhs.i_crit_edge, %continue_subprog.i.land.rhs.i_crit_edge
  %meta.284.i = phi ptr [ %add.ptr36.i, %for.inc.i82.land.rhs.i_crit_edge ], [ %meta.1.i, %continue_subprog.i.land.rhs.i_crit_edge ]
  %subprog_idx16.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.284.i, i32 0, i32 5
  %75 = ptrtoint ptr %subprog_idx16.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %subprog_idx16.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %76, i16 %idx.1.i)
  %cmp19.i = icmp eq i16 %76, %idx.1.i
  br i1 %cmp19.i, label %for.body.i79, label %land.rhs.i.for.end.i83_crit_edge

land.rhs.i.for.end.i83_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i83

for.body.i79:                                     ; preds = %land.rhs.i
  %77 = ptrtoint ptr %meta.284.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %insn.sroa.0.0.copyload.i.i = load i8, ptr %meta.284.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -123, i8 %insn.sroa.0.0.copyload.i.i)
  %cmp.i.i = icmp eq i8 %insn.sroa.0.0.copyload.i.i, -123
  br i1 %cmp.i.i, label %is_mbpf_pseudo_call.exit.i, label %for.body.i79.for.inc.i82_crit_edge

for.body.i79.for.inc.i82_crit_edge:               ; preds = %for.body.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i82

is_mbpf_pseudo_call.exit.i:                       ; preds = %for.body.i79
  %insn.sroa.5.0.insn1.sroa_idx.i.i = getelementptr inbounds i8, ptr %meta.284.i, i32 1
  %78 = ptrtoint ptr %insn.sroa.5.0.insn1.sroa_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %insn.sroa.5.0.copyload.i.i = load i8, ptr %insn.sroa.5.0.insn1.sroa_idx.i.i, align 1
  %bf.clear.i.i = and i8 %insn.sroa.5.0.copyload.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.clear.i.i)
  %cmp4.i.i = icmp eq i8 %bf.clear.i.i, 1
  br i1 %cmp4.i.i, label %if.end.i, label %is_mbpf_pseudo_call.exit.i.for.inc.i82_crit_edge

is_mbpf_pseudo_call.exit.i.for.inc.i82_crit_edge: ; preds = %is_mbpf_pseudo_call.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i82

if.end.i:                                         ; preds = %is_mbpf_pseudo_call.exit.i
  %l.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.284.i, i32 0, i32 7
  %79 = ptrtoint ptr %l.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %l.i, align 8
  %add.ptr24.i = getelementptr i8, ptr %80, i32 -264
  %arrayidx25.i = getelementptr [8 x ptr], ptr %ret_insn.i, i32 0, i32 %frame.1.i
  %81 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %add.ptr24.i, ptr %arrayidx25.i, align 4
  %arrayidx26.i = getelementptr [8 x i16], ptr %ret_prog.i, i32 0, i32 %frame.1.i
  %82 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %idx.1.i, ptr %arrayidx26.i, align 2
  %n.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.284.i, i32 0, i32 3
  %83 = ptrtoint ptr %n.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %n.i, align 4
  %conv27.i = zext i16 %84 to i32
  %add28.i = add nuw nsw i32 %conv27.i, 1
  %imm.i = getelementptr inbounds %struct.bpf_insn, ptr %meta.284.i, i32 0, i32 3
  %85 = ptrtoint ptr %imm.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %imm.i, align 4
  %add29.i = add i32 %add28.i, %86
  %sub.i.i = sub i32 %conv27.i, %add29.i
  %sub3.i.i = sub i32 %add29.i, %conv27.i
  %87 = tail call i32 @llvm.abs.i32(i32 %sub3.i.i, i1 false) #7
  %88 = ptrtoint ptr %n_insns.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %n_insns.i.i, align 4
  %90 = xor i32 %add29.i, -1
  %sub6.i.i = add i32 %89, %90
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %sub6.i.i)
  %cmp7.i.i = icmp ugt i32 %87, %sub6.i.i
  %spec.select.i80 = select i1 %cmp7.i.i, i32 %sub6.i.i, i32 %sub.i.i
  %spec.select76.i = select i1 %cmp7.i.i, ptr %add.ptr13.i, ptr %meta.284.i
  %91 = tail call i32 @llvm.umin.i32(i32 %sub3.i.i, i32 %spec.select.i80) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %add29.i)
  %cmp20.i.i = icmp ugt i32 %91, %add29.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i80, i32 %add29.i)
  %cmp22.i.i = icmp ugt i32 %spec.select.i80, %add29.i
  %or.cond.i.i = select i1 %cmp20.i.i, i1 %cmp22.i.i, i1 false
  %forward.0.i.i = select i1 %or.cond.i.i, i32 %add29.i, i32 %sub3.i.i
  %meta.addr.1.i.i = select i1 %or.cond.i.i, ptr %add.ptr.i75, ptr %spec.select76.i
  call void @__sanitizer_cov_trace_cmp4(i32 %forward.0.i.i, i32 %spec.select.i80)
  %cmp30.i.i = icmp ult i32 %forward.0.i.i, %spec.select.i80
  br i1 %cmp30.i.i, label %for.cond.preheader.i.i, label %for.cond39.preheader.i.i

for.cond39.preheader.i.i:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i80)
  %cmp4080.not.i.i = icmp eq i32 %spec.select.i80, 0
  br i1 %cmp4080.not.i.i, label %for.cond39.preheader.i.i.nfp_bpf_goto_meta.exit.i_crit_edge, label %for.cond39.preheader.i.i.for.body42.i.i_crit_edge

for.cond39.preheader.i.i.for.body42.i.i_crit_edge: ; preds = %for.cond39.preheader.i.i
  br label %for.body42.i.i

for.cond39.preheader.i.i.nfp_bpf_goto_meta.exit.i_crit_edge: ; preds = %for.cond39.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_bpf_goto_meta.exit.i

for.cond.preheader.i.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %forward.0.i.i)
  %cmp3383.not.i.i = icmp eq i32 %forward.0.i.i, 0
  br i1 %cmp3383.not.i.i, label %for.cond.preheader.i.i.nfp_bpf_goto_meta.exit.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.nfp_bpf_goto_meta.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_bpf_goto_meta.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %meta.addr.285.i.i = phi ptr [ %add.ptr38.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %meta.addr.1.i.i, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %i.084.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %l.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.addr.285.i.i, i32 0, i32 7
  %92 = ptrtoint ptr %l.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %l.i.i, align 8
  %add.ptr38.i.i = getelementptr i8, ptr %93, i32 -264
  %inc.i.i = add nuw i32 %i.084.i.i, 1
  %exitcond88.not.i.i = icmp eq i32 %inc.i.i, %forward.0.i.i
  br i1 %exitcond88.not.i.i, label %for.body.i.i.nfp_bpf_goto_meta.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.nfp_bpf_goto_meta.exit.i_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_bpf_goto_meta.exit.i

for.body42.i.i:                                   ; preds = %for.body42.i.i.for.body42.i.i_crit_edge, %for.cond39.preheader.i.i.for.body42.i.i_crit_edge
  %meta.addr.382.i.i = phi ptr [ %add.ptr47.i.i, %for.body42.i.i.for.body42.i.i_crit_edge ], [ %meta.addr.1.i.i, %for.cond39.preheader.i.i.for.body42.i.i_crit_edge ]
  %i.181.i.i = phi i32 [ %inc49.i.i, %for.body42.i.i.for.body42.i.i_crit_edge ], [ 0, %for.cond39.preheader.i.i.for.body42.i.i_crit_edge ]
  %prev45.i.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.addr.382.i.i, i32 0, i32 7, i32 1
  %94 = ptrtoint ptr %prev45.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %prev45.i.i, align 4
  %add.ptr47.i.i = getelementptr i8, ptr %95, i32 -264
  %inc49.i.i = add nuw i32 %i.181.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc49.i.i, %spec.select.i80
  br i1 %exitcond.not.i.i, label %for.body42.i.i.nfp_bpf_goto_meta.exit.i_crit_edge, label %for.body42.i.i.for.body42.i.i_crit_edge

for.body42.i.i.for.body42.i.i_crit_edge:          ; preds = %for.body42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body42.i.i

for.body42.i.i.nfp_bpf_goto_meta.exit.i_crit_edge: ; preds = %for.body42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_bpf_goto_meta.exit.i

nfp_bpf_goto_meta.exit.i:                         ; preds = %for.body42.i.i.nfp_bpf_goto_meta.exit.i_crit_edge, %for.body.i.i.nfp_bpf_goto_meta.exit.i_crit_edge, %for.cond.preheader.i.i.nfp_bpf_goto_meta.exit.i_crit_edge, %for.cond39.preheader.i.i.nfp_bpf_goto_meta.exit.i_crit_edge
  %meta.addr.4.i.i = phi ptr [ %meta.addr.1.i.i, %for.cond.preheader.i.i.nfp_bpf_goto_meta.exit.i_crit_edge ], [ %meta.addr.1.i.i, %for.cond39.preheader.i.i.nfp_bpf_goto_meta.exit.i_crit_edge ], [ %add.ptr38.i.i, %for.body.i.i.nfp_bpf_goto_meta.exit.i_crit_edge ], [ %add.ptr47.i.i, %for.body42.i.i.nfp_bpf_goto_meta.exit.i_crit_edge ]
  %subprog_idx31.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.addr.4.i.i, i32 0, i32 5
  %inc.i81 = add i32 %frame.1.i, 1
  br label %process_subprog.i

for.inc.i82:                                      ; preds = %is_mbpf_pseudo_call.exit.i.for.inc.i82_crit_edge, %for.body.i79.for.inc.i82_crit_edge
  %l33.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.284.i, i32 0, i32 7
  %96 = ptrtoint ptr %l33.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %l33.i, align 8
  %add.ptr36.i = getelementptr i8, ptr %97, i32 -264
  %cmp14.not.i = icmp eq ptr %97, %69
  br i1 %cmp14.not.i, label %for.inc.i82.for.end.i83_crit_edge, label %for.inc.i82.land.rhs.i_crit_edge

for.inc.i82.land.rhs.i_crit_edge:                 ; preds = %for.inc.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

for.inc.i82.for.end.i83_crit_edge:                ; preds = %for.inc.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i83

for.end.i83:                                      ; preds = %for.inc.i82.for.end.i83_crit_edge, %land.rhs.i.for.end.i83_crit_edge, %continue_subprog.i.for.end.i83_crit_edge
  %cmp37.i = icmp eq i32 %frame.1.i, 0
  br i1 %cmp37.i, label %nfp_bpf_get_stack_usage.exit, label %if.end40.i

if.end40.i:                                       ; preds = %for.end.i83
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx41.i = getelementptr [8 x i16], ptr %frame_depths.i, i32 0, i32 %frame.1.i
  %98 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %arrayidx41.i, align 2
  %conv42.i = zext i16 %99 to i32
  %sub43.i = sub i32 %depth.1.i, %conv42.i
  %dec.i = add i32 %frame.1.i, -1
  %arrayidx44.i = getelementptr [8 x ptr], ptr %ret_insn.i, i32 0, i32 %dec.i
  %100 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx44.i, align 4
  %arrayidx45.i = getelementptr [8 x i16], ptr %ret_prog.i, i32 0, i32 %dec.i
  %102 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %arrayidx45.i, align 2
  br label %continue_subprog.i

nfp_bpf_get_stack_usage.exit:                     ; preds = %for.end.i83
  %mul = shl nuw nsw i32 %conv32, 6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ret_prog.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %frame_depths.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ret_insn.i) #7
  %stack_size = getelementptr inbounds %struct.nfp_prog, ptr %7, i32 0, i32 4
  %104 = ptrtoint ptr %stack_size to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %74, ptr %stack_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %mul)
  %cmp35 = icmp ugt i32 %74, %mul
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %nfp_bpf_get_stack_usage.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.2, i32 noundef %74, i32 noundef %mul) #7
  br label %cleanup

if.end39:                                         ; preds = %nfp_bpf_get_stack_usage.exit
  %insn_aux_data = getelementptr inbounds %struct.bpf_verifier_env, ptr %env, i32 0, i32 24
  %105 = ptrtoint ptr %insn_aux_data to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %insn_aux_data, align 4
  %cmp.not13.i = icmp eq ptr %62, %insns.i
  br i1 %cmp.not13.i, label %if.end39.cleanup_crit_edge, label %if.end39.for.body.i87_crit_edge

if.end39.for.body.i87_crit_edge:                  ; preds = %if.end39
  br label %for.body.i87

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i87:                                     ; preds = %for.inc.i90.for.body.i87_crit_edge, %if.end39.for.body.i87_crit_edge
  %.pn14.i = phi ptr [ %.pn.i88, %for.inc.i90.for.body.i87_crit_edge ], [ %62, %if.end39.for.body.i87_crit_edge ]
  %n.i85 = getelementptr i8, ptr %.pn14.i, i32 -12
  %107 = ptrtoint ptr %n.i85 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %n.i85, align 4
  %idxprom.i86 = zext i16 %108 to i32
  %zext_dst.i = getelementptr %struct.bpf_insn_aux_data, ptr %106, i32 %idxprom.i86, i32 5
  %109 = ptrtoint ptr %zext_dst.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %zext_dst.i, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i = icmp eq i8 %110, 0
  br i1 %tobool.not.i, label %for.body.i87.for.inc.i90_crit_edge, label %if.then.i

for.body.i87.for.inc.i90_crit_edge:               ; preds = %for.body.i87
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i90

if.then.i:                                        ; preds = %for.body.i87
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i = getelementptr i8, ptr %.pn14.i, i32 -10
  %111 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %flags.i, align 2
  %113 = or i16 %112, 64
  store i16 %113, ptr %flags.i, align 2
  br label %for.inc.i90

for.inc.i90:                                      ; preds = %if.then.i, %for.body.i87.for.inc.i90_crit_edge
  %114 = ptrtoint ptr %.pn14.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %.pn.i88 = load ptr, ptr %.pn14.i, align 4
  %cmp.not.i89 = icmp eq ptr %.pn.i88, %insns.i
  br i1 %cmp.not.i89, label %for.inc.i90.cleanup_crit_edge, label %for.inc.i90.for.body.i87_crit_edge

for.inc.i90.for.body.i87_crit_edge:               ; preds = %for.inc.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i87

for.inc.i90.cleanup_crit_edge:                    ; preds = %for.inc.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i90.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.then37, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ -95, %if.then37 ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ], [ 0, %if.end39.cleanup_crit_edge ], [ 0, %for.inc.i90.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_bpf_opt_replace_insn(ptr noundef %env, i32 noundef %off, ptr nocapture noundef readonly %insn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %prog = getelementptr inbounds %struct.bpf_verifier_env, ptr %env, i32 0, i32 2
  %0 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prog, align 8
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aux, align 4
  %offload = getelementptr inbounds %struct.bpf_prog_aux, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %offload to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %offload, align 8
  %dev_priv = getelementptr inbounds %struct.bpf_prog_offload, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv, align 4
  %insn_aux_data = getelementptr inbounds %struct.bpf_verifier_env, ptr %env, i32 0, i32 24
  %8 = ptrtoint ptr %insn_aux_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %insn_aux_data, align 4
  %verifier_meta = getelementptr inbounds %struct.nfp_prog, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %verifier_meta to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %verifier_meta, align 4
  %orig_idx = getelementptr %struct.bpf_insn_aux_data, ptr %9, i32 %off, i32 7
  %12 = ptrtoint ptr %orig_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %orig_idx, align 4
  %n.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %n.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %n.i, align 4
  %conv.i = zext i16 %15 to i32
  %sub.i = sub i32 %conv.i, %13
  %sub3.i = sub i32 %13, %conv.i
  %16 = tail call i32 @llvm.abs.i32(i32 %sub3.i, i1 false) #7
  %n_insns.i = getelementptr inbounds %struct.nfp_prog, ptr %7, i32 0, i32 20
  %17 = ptrtoint ptr %n_insns.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_insns.i, align 4
  %19 = xor i32 %13, -1
  %sub6.i = add i32 %18, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %sub6.i)
  %cmp7.i = icmp ugt i32 %16, %sub6.i
  br i1 %cmp7.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i = getelementptr inbounds %struct.nfp_prog, ptr %7, i32 0, i32 21, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 -264
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %backward.0.i = phi i32 [ %sub6.i, %if.then.i ], [ %sub.i, %entry.if.end.i_crit_edge ]
  %meta.addr.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %11, %entry.if.end.i_crit_edge ]
  %22 = tail call i32 @llvm.umin.i32(i32 %sub3.i, i32 %backward.0.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %13)
  %cmp20.i = icmp ugt i32 %22, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %backward.0.i, i32 %13)
  %cmp22.i = icmp ugt i32 %backward.0.i, %13
  %or.cond.i = select i1 %cmp20.i, i1 %cmp22.i, i1 false
  br i1 %or.cond.i, label %if.then24.i, label %if.end.i.if.end29.i_crit_edge

if.end.i.if.end29.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.then24.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %insns26.i = getelementptr inbounds %struct.nfp_prog, ptr %7, i32 0, i32 21
  %23 = ptrtoint ptr %insns26.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %insns26.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %24, i32 -264
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then24.i, %if.end.i.if.end29.i_crit_edge
  %forward.0.i = phi i32 [ %13, %if.then24.i ], [ %sub3.i, %if.end.i.if.end29.i_crit_edge ]
  %meta.addr.1.i = phi ptr [ %add.ptr28.i, %if.then24.i ], [ %meta.addr.0.i, %if.end.i.if.end29.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %forward.0.i, i32 %backward.0.i)
  %cmp30.i = icmp ult i32 %forward.0.i, %backward.0.i
  br i1 %cmp30.i, label %for.cond.preheader.i, label %for.cond39.preheader.i

for.cond39.preheader.i:                           ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %backward.0.i)
  %cmp4080.not.i = icmp eq i32 %backward.0.i, 0
  br i1 %cmp4080.not.i, label %for.cond39.preheader.i.nfp_bpf_goto_meta.exit_crit_edge, label %for.cond39.preheader.i.for.body42.i_crit_edge

for.cond39.preheader.i.for.body42.i_crit_edge:    ; preds = %for.cond39.preheader.i
  br label %for.body42.i

for.cond39.preheader.i.nfp_bpf_goto_meta.exit_crit_edge: ; preds = %for.cond39.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_bpf_goto_meta.exit

for.cond.preheader.i:                             ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %forward.0.i)
  %cmp3383.not.i = icmp eq i32 %forward.0.i, 0
  br i1 %cmp3383.not.i, label %for.cond.preheader.i.nfp_bpf_goto_meta.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.nfp_bpf_goto_meta.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_bpf_goto_meta.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %meta.addr.285.i = phi ptr [ %add.ptr38.i, %for.body.i.for.body.i_crit_edge ], [ %meta.addr.1.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.084.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %l.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.addr.285.i, i32 0, i32 7
  %25 = ptrtoint ptr %l.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %l.i, align 8
  %add.ptr38.i = getelementptr i8, ptr %26, i32 -264
  %inc.i = add nuw i32 %i.084.i, 1
  %exitcond88.not.i = icmp eq i32 %inc.i, %forward.0.i
  br i1 %exitcond88.not.i, label %for.body.i.nfp_bpf_goto_meta.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.nfp_bpf_goto_meta.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_bpf_goto_meta.exit

for.body42.i:                                     ; preds = %for.body42.i.for.body42.i_crit_edge, %for.cond39.preheader.i.for.body42.i_crit_edge
  %meta.addr.382.i = phi ptr [ %add.ptr47.i, %for.body42.i.for.body42.i_crit_edge ], [ %meta.addr.1.i, %for.cond39.preheader.i.for.body42.i_crit_edge ]
  %i.181.i = phi i32 [ %inc49.i, %for.body42.i.for.body42.i_crit_edge ], [ 0, %for.cond39.preheader.i.for.body42.i_crit_edge ]
  %prev45.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.addr.382.i, i32 0, i32 7, i32 1
  %27 = ptrtoint ptr %prev45.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev45.i, align 4
  %add.ptr47.i = getelementptr i8, ptr %28, i32 -264
  %inc49.i = add nuw i32 %i.181.i, 1
  %exitcond.not.i = icmp eq i32 %inc49.i, %backward.0.i
  br i1 %exitcond.not.i, label %for.body42.i.nfp_bpf_goto_meta.exit_crit_edge, label %for.body42.i.for.body42.i_crit_edge

for.body42.i.for.body42.i_crit_edge:              ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body42.i

for.body42.i.nfp_bpf_goto_meta.exit_crit_edge:    ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_bpf_goto_meta.exit

nfp_bpf_goto_meta.exit:                           ; preds = %for.body42.i.nfp_bpf_goto_meta.exit_crit_edge, %for.body.i.nfp_bpf_goto_meta.exit_crit_edge, %for.cond.preheader.i.nfp_bpf_goto_meta.exit_crit_edge, %for.cond39.preheader.i.nfp_bpf_goto_meta.exit_crit_edge
  %meta.addr.4.i = phi ptr [ %meta.addr.1.i, %for.cond.preheader.i.nfp_bpf_goto_meta.exit_crit_edge ], [ %meta.addr.1.i, %for.cond39.preheader.i.nfp_bpf_goto_meta.exit_crit_edge ], [ %add.ptr38.i, %for.body.i.nfp_bpf_goto_meta.exit_crit_edge ], [ %add.ptr47.i, %for.body42.i.nfp_bpf_goto_meta.exit_crit_edge ]
  %29 = ptrtoint ptr %verifier_meta to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %meta.addr.4.i, ptr %verifier_meta, align 4
  %30 = ptrtoint ptr %meta.addr.4.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %meta.addr.4.i, align 8
  %trunc.i = trunc i8 %31 to i3
  %32 = zext i3 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.67)
  switch i3 %trunc.i, label %nfp_bpf_goto_meta.exit.if.end22_crit_edge [
    i3 -2, label %nfp_bpf_goto_meta.exit.land.lhs.true_crit_edge
    i3 -3, label %if.end3.i
  ]

nfp_bpf_goto_meta.exit.land.lhs.true_crit_edge:   ; preds = %nfp_bpf_goto_meta.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

nfp_bpf_goto_meta.exit.if.end22_crit_edge:        ; preds = %nfp_bpf_goto_meta.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.end3.i:                                        ; preds = %nfp_bpf_goto_meta.exit
  %33 = and i8 %31, -16
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %33, label %if.end3.i.land.lhs.true_crit_edge [
    i8 0, label %if.end3.i.if.end22_crit_edge
    i8 -112, label %if.end3.i.if.end22_crit_edge58
    i8 -128, label %if.end3.i.if.end22_crit_edge59
  ]

if.end3.i.if.end22_crit_edge59:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.end3.i.if.end22_crit_edge58:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.end3.i.if.end22_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.end3.i.land.lhs.true_crit_edge:                ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end3.i.land.lhs.true_crit_edge, %nfp_bpf_goto_meta.exit.land.lhs.true_crit_edge
  %35 = ptrtoint ptr %insn to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %insn, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %36)
  %cmp = icmp eq i8 %36, 5
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then:                                          ; preds = %land.lhs.true
  %off4 = getelementptr inbounds %struct.bpf_insn, ptr %insn, i32 0, i32 2
  %37 = ptrtoint ptr %off4 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %off4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool.not = icmp eq i16 %38, 0
  br i1 %tobool.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %l = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.addr.4.i, i32 0, i32 7
  %39 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %l, align 8
  %add.ptr = getelementptr i8, ptr %40, i32 -264
  %41 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.addr.4.i, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr, ptr %41, align 8
  %jump_neg_op = getelementptr inbounds %struct.anon.198, ptr %41, i32 0, i32 1
  %43 = ptrtoint ptr %jump_neg_op to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %jump_neg_op, align 4
  br label %cleanup28

if.else:                                          ; preds = %if.then
  %conv5 = sext i16 %38 to i32
  %add = add i32 %off, 1
  %add6 = add i32 %add, %conv5
  %44 = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.addr.4.i, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 8
  %n = getelementptr inbounds %struct.nfp_insn_meta, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %n to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %n, align 4
  %conv10 = zext i16 %48 to i32
  %orig_idx12 = getelementptr %struct.bpf_insn_aux_data, ptr %9, i32 %add6, i32 7
  %49 = ptrtoint ptr %orig_idx12 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %orig_idx12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %conv10)
  %cmp13.not = icmp eq i32 %50, %conv10
  br i1 %cmp13.not, label %if.else.cleanup28_crit_edge, label %if.then15

if.else.cleanup28_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup28

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.3, i32 noundef %off, i32 noundef %conv10, i32 noundef %50) #7
  br label %cleanup28

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %if.end3.i.if.end22_crit_edge, %if.end3.i.if.end22_crit_edge58, %if.end3.i.if.end22_crit_edge59, %nfp_bpf_goto_meta.exit.if.end22_crit_edge
  %conv25 = zext i8 %31 to i32
  %51 = ptrtoint ptr %insn to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %insn, align 4
  %conv27 = zext i8 %52 to i32
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.4, i32 noundef %conv25, i32 noundef %conv27) #7
  br label %cleanup28

cleanup28:                                        ; preds = %if.end22, %if.then15, %if.else.cleanup28_crit_edge, %if.then8
  %retval.1 = phi i32 [ -22, %if.end22 ], [ -22, %if.then15 ], [ 0, %if.else.cleanup28_crit_edge ], [ 0, %if.then8 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_bpf_opt_remove_insns(ptr nocapture noundef readonly %env, i32 noundef %off, i32 noundef %cnt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %prog = getelementptr inbounds %struct.bpf_verifier_env, ptr %env, i32 0, i32 2
  %0 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prog, align 8
  %aux = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aux, align 4
  %offload = getelementptr inbounds %struct.bpf_prog_aux, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %offload to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %offload, align 8
  %dev_priv = getelementptr inbounds %struct.bpf_prog_offload, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv, align 4
  %insn_aux_data = getelementptr inbounds %struct.bpf_verifier_env, ptr %env, i32 0, i32 24
  %8 = ptrtoint ptr %insn_aux_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %insn_aux_data, align 4
  %verifier_meta = getelementptr inbounds %struct.nfp_prog, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %verifier_meta to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %verifier_meta, align 4
  %orig_idx = getelementptr %struct.bpf_insn_aux_data, ptr %9, i32 %off, i32 7
  %12 = ptrtoint ptr %orig_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %orig_idx, align 4
  %n.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %n.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %n.i, align 4
  %conv.i = zext i16 %15 to i32
  %sub.i = sub i32 %conv.i, %13
  %sub3.i = sub i32 %13, %conv.i
  %16 = tail call i32 @llvm.abs.i32(i32 %sub3.i, i1 false) #7
  %n_insns.i = getelementptr inbounds %struct.nfp_prog, ptr %7, i32 0, i32 20
  %17 = ptrtoint ptr %n_insns.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_insns.i, align 4
  %19 = xor i32 %13, -1
  %sub6.i = add i32 %18, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %sub6.i)
  %cmp7.i = icmp ugt i32 %16, %sub6.i
  br i1 %cmp7.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i = getelementptr inbounds %struct.nfp_prog, ptr %7, i32 0, i32 21, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 -264
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %backward.0.i = phi i32 [ %sub6.i, %if.then.i ], [ %sub.i, %entry.if.end.i_crit_edge ]
  %meta.addr.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %11, %entry.if.end.i_crit_edge ]
  %22 = tail call i32 @llvm.umin.i32(i32 %sub3.i, i32 %backward.0.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %13)
  %cmp20.i = icmp ugt i32 %22, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %backward.0.i, i32 %13)
  %cmp22.i = icmp ugt i32 %backward.0.i, %13
  %or.cond.i = select i1 %cmp20.i, i1 %cmp22.i, i1 false
  br i1 %or.cond.i, label %if.then24.i, label %if.end.i.if.end29.i_crit_edge

if.end.i.if.end29.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29.i

if.then24.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %insns26.i = getelementptr inbounds %struct.nfp_prog, ptr %7, i32 0, i32 21
  %23 = ptrtoint ptr %insns26.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %insns26.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %24, i32 -264
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then24.i, %if.end.i.if.end29.i_crit_edge
  %forward.0.i = phi i32 [ %13, %if.then24.i ], [ %sub3.i, %if.end.i.if.end29.i_crit_edge ]
  %meta.addr.1.i = phi ptr [ %add.ptr28.i, %if.then24.i ], [ %meta.addr.0.i, %if.end.i.if.end29.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %forward.0.i, i32 %backward.0.i)
  %cmp30.i = icmp ult i32 %forward.0.i, %backward.0.i
  br i1 %cmp30.i, label %for.cond.preheader.i, label %for.cond39.preheader.i

for.cond39.preheader.i:                           ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %backward.0.i)
  %cmp4080.not.i = icmp eq i32 %backward.0.i, 0
  br i1 %cmp4080.not.i, label %for.cond39.preheader.i.nfp_bpf_goto_meta.exit_crit_edge, label %for.cond39.preheader.i.for.body42.i_crit_edge

for.cond39.preheader.i.for.body42.i_crit_edge:    ; preds = %for.cond39.preheader.i
  br label %for.body42.i

for.cond39.preheader.i.nfp_bpf_goto_meta.exit_crit_edge: ; preds = %for.cond39.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_bpf_goto_meta.exit

for.cond.preheader.i:                             ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %forward.0.i)
  %cmp3383.not.i = icmp eq i32 %forward.0.i, 0
  br i1 %cmp3383.not.i, label %for.cond.preheader.i.nfp_bpf_goto_meta.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.nfp_bpf_goto_meta.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_bpf_goto_meta.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %meta.addr.285.i = phi ptr [ %add.ptr38.i, %for.body.i.for.body.i_crit_edge ], [ %meta.addr.1.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.084.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %l.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.addr.285.i, i32 0, i32 7
  %25 = ptrtoint ptr %l.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %l.i, align 8
  %add.ptr38.i = getelementptr i8, ptr %26, i32 -264
  %inc.i = add nuw i32 %i.084.i, 1
  %exitcond88.not.i = icmp eq i32 %inc.i, %forward.0.i
  br i1 %exitcond88.not.i, label %for.body.i.nfp_bpf_goto_meta.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.nfp_bpf_goto_meta.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_bpf_goto_meta.exit

for.body42.i:                                     ; preds = %for.body42.i.for.body42.i_crit_edge, %for.cond39.preheader.i.for.body42.i_crit_edge
  %meta.addr.382.i = phi ptr [ %add.ptr47.i, %for.body42.i.for.body42.i_crit_edge ], [ %meta.addr.1.i, %for.cond39.preheader.i.for.body42.i_crit_edge ]
  %i.181.i = phi i32 [ %inc49.i, %for.body42.i.for.body42.i_crit_edge ], [ 0, %for.cond39.preheader.i.for.body42.i_crit_edge ]
  %prev45.i = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.addr.382.i, i32 0, i32 7, i32 1
  %27 = ptrtoint ptr %prev45.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev45.i, align 4
  %add.ptr47.i = getelementptr i8, ptr %28, i32 -264
  %inc49.i = add nuw i32 %i.181.i, 1
  %exitcond.not.i = icmp eq i32 %inc49.i, %backward.0.i
  br i1 %exitcond.not.i, label %for.body42.i.nfp_bpf_goto_meta.exit_crit_edge, label %for.body42.i.for.body42.i_crit_edge

for.body42.i.for.body42.i_crit_edge:              ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body42.i

for.body42.i.nfp_bpf_goto_meta.exit_crit_edge:    ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_bpf_goto_meta.exit

nfp_bpf_goto_meta.exit:                           ; preds = %for.body42.i.nfp_bpf_goto_meta.exit_crit_edge, %for.body.i.nfp_bpf_goto_meta.exit_crit_edge, %for.cond.preheader.i.nfp_bpf_goto_meta.exit_crit_edge, %for.cond39.preheader.i.nfp_bpf_goto_meta.exit_crit_edge
  %meta.addr.4.i = phi ptr [ %meta.addr.1.i, %for.cond.preheader.i.nfp_bpf_goto_meta.exit_crit_edge ], [ %meta.addr.1.i, %for.cond39.preheader.i.nfp_bpf_goto_meta.exit_crit_edge ], [ %add.ptr38.i, %for.body.i.nfp_bpf_goto_meta.exit_crit_edge ], [ %add.ptr47.i, %for.body42.i.nfp_bpf_goto_meta.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt)
  %cmp64.not = icmp eq i32 %cnt, 0
  br i1 %cmp64.not, label %nfp_bpf_goto_meta.exit.cleanup_crit_edge, label %for.body.lr.ph

nfp_bpf_goto_meta.exit.cleanup_crit_edge:         ; preds = %nfp_bpf_goto_meta.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %nfp_bpf_goto_meta.exit
  %insns = getelementptr inbounds %struct.nfp_prog, ptr %7, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %if.end38.for.body_crit_edge, %for.body.lr.ph
  %meta.066 = phi ptr [ %meta.addr.4.i, %for.body.lr.ph ], [ %add.ptr, %if.end38.for.body_crit_edge ]
  %i.065 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end38.for.body_crit_edge ]
  %l = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.066, i32 0, i32 7
  %cmp1 = icmp eq ptr %l, %insns
  br i1 %cmp1, label %land.rhs, label %if.end38

land.rhs:                                         ; preds = %for.body
  %.b61 = load i1, ptr @nfp_bpf_opt_remove_insns.__already_done, align 1
  br i1 %.b61, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !134

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @nfp_bpf_opt_remove_insns.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 851, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end38:                                         ; preds = %for.body
  %flags = getelementptr inbounds %struct.nfp_insn_meta, ptr %meta.066, i32 0, i32 4
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %flags, align 2
  %31 = shl i16 %30, 10
  %sext = ashr i16 %31, 15
  %dec = sext i16 %sext to i32
  %32 = or i16 %30, 32
  store i16 %32, ptr %flags, align 2
  %33 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %l, align 8
  %add.ptr = getelementptr i8, ptr %34, i32 -264
  %spec.select = add nuw i32 %i.065, 1
  %inc = add i32 %spec.select, %dec
  %cmp = icmp ult i32 %inc, %cnt
  br i1 %cmp, label %if.end38.for.body_crit_edge, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %if.end38.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge, %nfp_bpf_goto_meta.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %land.rhs.cleanup_crit_edge ], [ 0, %nfp_bpf_goto_meta.exit.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_bpf_stack_arg_ok(ptr noundef %fname, ptr noundef %env, ptr nocapture noundef readonly %reg, ptr noundef %old_arg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp.not = icmp eq i32 %1, 6
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.25, ptr noundef %fname, i32 noundef %1) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %.elt39 = getelementptr inbounds %struct.bpf_reg_state, ptr %reg, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %.elt39 to i32
  call void @__asan_load8_noabort(i32 %2)
  %.unpack40 = load i64, ptr %.elt39, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack40)
  %tobool.not.i = icmp eq i64 %.unpack40, 0
  br i1 %tobool.not.i, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.26, ptr noundef %fname) #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %var_off = getelementptr inbounds %struct.bpf_reg_state, ptr %reg, i32 0, i32 5
  %3 = ptrtoint ptr %var_off to i32
  call void @__asan_load8_noabort(i32 %3)
  %.unpack = load i64, ptr %var_off, align 8
  %off5 = getelementptr inbounds %struct.bpf_reg_state, ptr %reg, i32 0, i32 1
  %4 = ptrtoint ptr %off5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %off5, align 4
  %conv = sext i32 %5 to i64
  %add = add i64 %.unpack, %conv
  %sub = sub i64 0, %add
  %6 = and i64 %sub, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool.not = icmp eq i64 %6, 0
  br i1 %tobool.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.27, ptr noundef %fname, i64 noundef %sub) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %tobool9.not = icmp eq ptr %old_arg, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %var_off13 = getelementptr inbounds %struct.bpf_reg_state, ptr %old_arg, i32 0, i32 5
  %7 = ptrtoint ptr %var_off13 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %var_off13, align 8
  %off16 = getelementptr inbounds %struct.bpf_reg_state, ptr %old_arg, i32 0, i32 1
  %9 = ptrtoint ptr %off16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %off16, align 4
  %conv17 = sext i32 %10 to i64
  %add18 = add i64 %8, %conv17
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add18)
  %cmp19 = icmp ne i64 %add, %add18
  %conv20 = zext i1 %cmp19 to i8
  %var_off21 = getelementptr inbounds %struct.nfp_bpf_reg_state, ptr %old_arg, i32 0, i32 1
  %11 = ptrtoint ptr %var_off21 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %var_off21, align 8, !range !128
  %or = or i8 %12, %conv20
  store i8 %or, ptr %var_off21, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end8.cleanup_crit_edge, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ 1, %if.end11 ], [ 0, %if.then2 ], [ 1, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tnum_strn(ptr noundef, i32 noundef, [2 x i64]) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_bpf_map_mark_used(ptr noundef %env, ptr nocapture noundef readonly %meta, ptr nocapture noundef readonly %reg, i32 noundef %use) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %.elt101 = getelementptr inbounds %struct.bpf_reg_state, ptr %reg, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %.elt101 to i32
  call void @__asan_load8_noabort(i32 %0)
  %.unpack102 = load i64, ptr %.elt101, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.unpack102)
  %tobool.not.i = icmp eq i64 %.unpack102, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.36) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %var_off = getelementptr inbounds %struct.bpf_reg_state, ptr %reg, i32 0, i32 5
  %1 = ptrtoint ptr %var_off to i32
  call void @__asan_load8_noabort(i32 %1)
  %.unpack = load i64, ptr %var_off, align 8
  %off2 = getelementptr inbounds %struct.bpf_insn, ptr %meta, i32 0, i32 2
  %2 = ptrtoint ptr %off2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %off2, align 2
  %conv = sext i16 %3 to i64
  %add = add i64 %.unpack, %conv
  %off3 = getelementptr inbounds %struct.bpf_reg_state, ptr %reg, i32 0, i32 1
  %4 = ptrtoint ptr %off3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %off3, align 4
  %6 = trunc i64 %add to i32
  %conv6 = add i32 %5, %6
  %7 = ptrtoint ptr %meta to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %meta, align 8
  %9 = lshr i8 %8, 3
  %10 = and i8 %9, 3
  %11 = xor i8 %10, 2
  %12 = zext i8 %11 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.nfp_bpf_map_mark_used, i32 0, i32 %12
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  %14 = getelementptr inbounds %struct.bpf_reg_state, ptr %reg, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %dev_priv = getelementptr inbounds %struct.bpf_offloaded_map, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %dev_priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_priv, align 8
  %add63 = add i32 %switch.load, %conv6
  %value_size = getelementptr inbounds %struct.bpf_map, ptr %16, i32 0, i32 5
  %19 = ptrtoint ptr %value_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add63, i32 %20)
  %cmp64 = icmp ugt i32 %add63, %20
  br i1 %cmp64, label %if.then66, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %use)
  %cmp24.i = icmp eq i32 %use, 3
  %conv28.i = trunc i32 %use to i8
  %bf.shl.i = shl i8 %conv28.i, 4
  br label %for.body

if.then66:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.37) #7
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0110 = phi i32 [ 0, %for.cond.preheader ], [ %add76, %for.inc.for.body_crit_edge ]
  %add70 = add i32 %i.0110, %conv6
  %div48.i = lshr i32 %add70, 2
  %arrayidx.i = getelementptr %struct.nfp_bpf_map, ptr %18, i32 0, i32 9, i32 %div48.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i = load i8, ptr %arrayidx.i, align 1
  %bf.lshr.i = lshr i8 %bf.load.i, 4
  %conv.i = zext i8 %bf.lshr.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %bf.load.i)
  %cmp.not.i = icmp ult i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %use)
  %cmp8.not.i = icmp eq i32 %conv.i, %use
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %cmp8.not.i
  br i1 %or.cond.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %bf.load.i)
  %cmp.i.i = icmp ugt i8 %bf.load.i, 63
  br i1 %cmp.i.i, label %if.then.i.nfp_bpf_map_use_name.exit.i_crit_edge, label %if.end.i.i

if.then.i.nfp_bpf_map_use_name.exit.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_bpf_map_use_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr [4 x ptr], ptr @nfp_bpf_map_use_name.names, i32 0, i32 %conv.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  br label %nfp_bpf_map_use_name.exit.i

nfp_bpf_map_use_name.exit.i:                      ; preds = %if.end.i.i, %if.then.i.nfp_bpf_map_use_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %23, %if.end.i.i ], [ @.str.44, %if.then.i.nfp_bpf_map_use_name.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %use)
  %cmp.i50.i = icmp ugt i32 %use, 3
  br i1 %cmp.i50.i, label %nfp_bpf_map_use_name.exit.i.nfp_bpf_map_use_name.exit54.i_crit_edge, label %if.end.i52.i

nfp_bpf_map_use_name.exit.i.nfp_bpf_map_use_name.exit54.i_crit_edge: ; preds = %nfp_bpf_map_use_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nfp_bpf_map_use_name.exit54.i

if.end.i52.i:                                     ; preds = %nfp_bpf_map_use_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i51.i = getelementptr [4 x ptr], ptr @nfp_bpf_map_use_name.names, i32 0, i32 %use
  %24 = ptrtoint ptr %arrayidx.i51.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i51.i, align 4
  br label %nfp_bpf_map_use_name.exit54.i

nfp_bpf_map_use_name.exit54.i:                    ; preds = %if.end.i52.i, %nfp_bpf_map_use_name.exit.i.nfp_bpf_map_use_name.exit54.i_crit_edge
  %retval.0.i53.i = phi ptr [ %25, %if.end.i52.i ], [ @.str.44, %nfp_bpf_map_use_name.exit.i.nfp_bpf_map_use_name.exit54.i_crit_edge ]
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.38, ptr noundef %retval.0.i.i, ptr noundef %retval.0.i53.i, i32 noundef %add70) #7
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  %26 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i104 = icmp ne i8 %26, 0
  %or.cond49.i = and i1 %cmp24.i, %tobool.not.i104
  br i1 %or.cond49.i, label %if.then26.i, label %for.inc

if.then26.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @bpf_verifier_log_write(ptr noundef %env, ptr noundef nonnull @.str.39, i32 noundef %add70) #7
  br label %cleanup

for.inc:                                          ; preds = %if.end.i
  %bf.clear33.i = and i8 %bf.load.i, 15
  %bf.set.i = or i8 %bf.clear33.i, %bf.shl.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %bf.set.i, ptr %arrayidx.i, align 1
  %rem = and i32 %add70, 3
  %sub = add i32 %i.0110, 4
  %add76 = sub i32 %sub, %rem
  %cmp68 = icmp ult i32 %add76, %switch.load
  br i1 %cmp68, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then26.i, %nfp_bpf_map_use_name.exit54.i, %if.then66, %if.then
  %retval.0 = phi i32 [ -22, %if.then66 ], [ -95, %if.then ], [ -95, %nfp_bpf_map_use_name.exit54.i ], [ -95, %if.then26.i ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfp_is_subprog_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 641, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 648, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 798, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 828, i32 4}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 836, i32 2}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 851, i32 7}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 183, i32 4}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 187, i32 4}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 196, i32 4}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 202, i32 28}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 210, i32 28}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 220, i32 28}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 230, i32 3}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 240, i32 4}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 253, i32 4}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 267, i32 4}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 273, i32 29}
!35 = distinct !{null, !36, !"__print_once", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 284, i32 3}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @nfp_bpf_check_helper_call._entry, !36, !"_entry", i1 false, i1 false}
!42 = !{ptr @nfp_bpf_check_helper_call._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 286, i32 3}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 292, i32 4}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 299, i32 3}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 162, i32 3}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 131, i32 3}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 136, i32 3}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 142, i32 3}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 113, i32 4}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 324, i32 3}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 334, i32 3}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 461, i32 3}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 479, i32 4}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 491, i32 3}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 354, i32 3}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 372, i32 2}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 427, i32 3}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 437, i32 3}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 398, i32 3}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 406, i32 3}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 380, i32 22}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 381, i32 24}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 382, i32 25}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 383, i32 30}
!89 = !{ptr @nfp_bpf_map_use_name.names, !90, !"names", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 379, i32 28}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 387, i32 10}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 514, i32 5}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 518, i32 3}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 533, i32 3}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 538, i32 3}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 543, i32 3}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 583, i32 4}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 587, i32 4}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 592, i32 4}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 609, i32 4}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 614, i32 5}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 618, i32 5}
!115 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 623, i32 4}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/netronome/nfp/bpf/verifier.c", i32 690, i32 3}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{i8 0, i8 2}
!129 = !{!"branch_weights", i32 1, i32 2000}
!130 = distinct !{!130, !131}
!131 = !{!"llvm.loop.peeled.count", i32 1}
!132 = !{i64 7046902}
!133 = !{i64 2159366246}
!134 = !{!"branch_weights", i32 2000, i32 1}
