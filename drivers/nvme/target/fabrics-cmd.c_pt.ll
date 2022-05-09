; ModuleID = '/llk/IR_all_yes/drivers/nvme/target/fabrics-cmd.c_pt.bc'
source_filename = "../drivers/nvme/target/fabrics-cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvmf_common_command = type { i8, i8, i16, i8, [35 x i8], [24 x i8] }
%struct.nvmet_req = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x %struct.bio_vec], %union.anon.87, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i16, i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%union.anon.87 = type { %struct.anon.90 }
%struct.anon.90 = type { %struct.bio, ptr, %struct.work_struct, i8 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.41, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.41 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvmf_property_set_command = type { i8, i8, i16, i8, [35 x i8], i8, [3 x i8], i32, i64, [8 x i8] }
%struct.nvmf_property_get_command = type { i8, i8, i16, i8, [35 x i8], i8, [3 x i8], i32, [16 x i8] }
%struct.nvmet_ctrl = type { ptr, ptr, i8, %struct.mutex, i64, i32, i32, %struct.uuid_t, i16, i32, ptr, i32, i32, [4 x ptr], i32, %struct.list_head, %struct.work_struct, %struct.list_head, %struct.kref, %struct.delayed_work, %struct.work_struct, ptr, ptr, i32, [256 x i8], [256 x i8], ptr, %struct.xarray, %struct.spinlock, i64, [128 x %struct.nvme_error_slot], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.uuid_t = type { [16 x i8] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.nvme_error_slot = type { i64, i16, i16, i16, i16, i64, i32, i8, [3 x i8], i64, [24 x i8] }
%struct.nvmet_subsys = type { i32, %struct.mutex, %struct.kref, %struct.xarray, i32, i32, i16, i16, %struct.list_head, %struct.list_head, i8, i16, i64, [20 x i8], i8, ptr, i8, %struct.config_group, %struct.config_group, %struct.config_group, ptr, ptr, ptr, %struct.config_group, i32, i32, i8 }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.nvmf_connect_command = type { i8, i8, i16, i8, [19 x i8], %union.nvme_data_ptr, i16, i16, i16, i8, i8, i32, [12 x i8] }
%union.nvme_data_ptr = type { %struct.anon }
%struct.anon = type { i64, i64 }
%struct.nvmf_connect_data = type { %struct.uuid_t, i16, [238 x i8], [256 x i8], [256 x i8], [256 x i8] }
%struct.nvmet_port = type { %struct.list_head, %struct.nvmf_disc_rsp_page_entry, %struct.config_group, %struct.config_group, %struct.list_head, %struct.config_group, %struct.list_head, %struct.list_head, %struct.config_group, %struct.nvmet_ana_group, ptr, ptr, i8, i32, ptr, i8 }
%struct.nvmf_disc_rsp_page_entry = type { i8, i8, i8, i8, i16, i16, i16, i16, [20 x i8], [32 x i8], [192 x i8], [256 x i8], [256 x i8], %union.tsas }
%union.tsas = type { %struct.rdma }
%struct.rdma = type { i8, i8, i8, [5 x i8], i16, [246 x i8] }
%struct.nvmet_ana_group = type { %struct.config_group, ptr, i32 }
%struct.nvmet_sq = type { ptr, %struct.percpu_ref, i16, i16, i32, i8, %struct.completion, %struct.completion }
%struct.percpu_ref = type { i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nvme_completion = type { %union.nvme_result, i16, i16, i16, i16 }
%union.nvme_result = type { i64 }
%struct.nvmet_fabrics_ops = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@nvmet_parse_fabrics_cmd.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nvmet\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nvmet_parse_fabrics_cmd\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/nvme/target/fabrics-cmd.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"received unknown capsule type 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"nvmet: received unknown capsule type 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@nvmet_parse_connect_cmd.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nvmet_parse_connect_cmd\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"invalid command 0x%x on unconnected queue.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"nvmet: invalid command 0x%x on unconnected queue.\0A\00", [45 x i8] zeroinitializer }, align 32
@nvmet_parse_connect_cmd.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.8, i8 0, i8 78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"invalid capsule type 0x%x on unconnected queue.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"nvmet: invalid capsule type 0x%x on unconnected queue.\0A\00", [40 x i8] zeroinitializer }, align 32
@nvmet_execute_admin_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014nvmet: invalid connect version (%d).\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nvmet_execute_admin_connect\00", [36 x i8] zeroinitializer }, align 32
@nvmet_execute_admin_connect._entry_ptr = internal global ptr @nvmet_execute_admin_connect._entry, section ".printk_index", align 4
@nvmet_execute_admin_connect._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014nvmet: connect attempt for invalid controller ID %#x\0A\00", [40 x i8] zeroinitializer }, align 32
@nvmet_execute_admin_connect._entry_ptr.14 = internal global ptr @nvmet_execute_admin_connect._entry.12, section ".printk_index", align 4
@nvmet_execute_admin_connect._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016nvmet: creating %s controller %d for subsystem %s for NQN %s%s.\0A\00", [61 x i8] zeroinitializer }, align 32
@nvmet_execute_admin_connect._entry_ptr.17 = internal global ptr @nvmet_execute_admin_connect._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"discovery\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nvm\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" T10-PI is enabled\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nvmet_install_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014nvmet: queue size zero!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvmet_install_queue\00", [44 x i8] zeroinitializer }, align 32
@nvmet_install_queue._entry_ptr = internal global ptr @nvmet_install_queue._entry, section ".printk_index", align 4
@nvmet_install_queue._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014nvmet: qid %u has already been created\0A\00", [54 x i8] zeroinitializer }, align 32
@nvmet_install_queue._entry_ptr.26 = internal global ptr @nvmet_install_queue._entry.24, section ".printk_index", align 4
@nvmet_install_queue._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014nvmet: sqsize %u is larger than MQES supported %u cntlid %d\0A\00", [33 x i8] zeroinitializer }, align 32
@nvmet_install_queue._entry_ptr.29 = internal global ptr @nvmet_install_queue._entry.27, section ".printk_index", align 4
@nvmet_install_queue._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014nvmet: queue already connected!\0A\00", [61 x i8] zeroinitializer }, align 32
@nvmet_install_queue._entry_ptr.32 = internal global ptr @nvmet_install_queue._entry.30, section ".printk_index", align 4
@nvmet_install_queue._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.23, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013nvmet: failed to install queue %d cntlid %d ret %x\0A\00", [42 x i8] zeroinitializer }, align 32
@nvmet_install_queue._entry_ptr.35 = internal global ptr @nvmet_install_queue._entry.33, section ".printk_index", align 4
@nvmet_execute_io_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.36, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvmet_execute_io_connect\00", [39 x i8] zeroinitializer }, align 32
@nvmet_execute_io_connect._entry_ptr = internal global ptr @nvmet_execute_io_connect._entry, section ".printk_index", align 4
@nvmet_execute_io_connect._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014nvmet: invalid queue id (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@nvmet_execute_io_connect._entry_ptr.39 = internal global ptr @nvmet_execute_io_connect._entry.37, section ".printk_index", align 4
@nvmet_execute_io_connect.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.40, i8 0, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"adding queue %d to ctrl %d.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"nvmet: adding queue %d to ctrl %d.\0A\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 4]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 20, i64 28]
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 97, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 306, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 312, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 194, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 202, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 224, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 116, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 124, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 130, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 139, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 156, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 261, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 275, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private constant [37 x i8] c"../drivers/nvme/target/fabrics-cmd.c\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 288, i32 2 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @nvmet_execute_admin_connect._entry, ptr @nvmet_execute_admin_connect._entry.12, ptr @nvmet_execute_admin_connect._entry.15, ptr @nvmet_execute_admin_connect._entry_ptr, ptr @nvmet_execute_admin_connect._entry_ptr.14, ptr @nvmet_execute_admin_connect._entry_ptr.17, ptr @nvmet_execute_io_connect._entry, ptr @nvmet_execute_io_connect._entry.37, ptr @nvmet_execute_io_connect._entry_ptr, ptr @nvmet_execute_io_connect._entry_ptr.39, ptr @nvmet_install_queue._entry, ptr @nvmet_install_queue._entry.24, ptr @nvmet_install_queue._entry.27, ptr @nvmet_install_queue._entry.30, ptr @nvmet_install_queue._entry.33, ptr @nvmet_install_queue._entry_ptr, ptr @nvmet_install_queue._entry_ptr.26, ptr @nvmet_install_queue._entry_ptr.29, ptr @nvmet_install_queue._entry_ptr.32, ptr @nvmet_install_queue._entry_ptr.35, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_execute_admin_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_execute_admin_connect._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_execute_admin_connect._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_install_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_install_queue._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_install_queue._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_install_queue._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_install_queue._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_execute_io_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_execute_io_connect._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nvmet_parse_fabrics_cmd(ptr nocapture noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %fctype = getelementptr inbounds %struct.nvmf_common_command, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fctype to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fctype, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %do.body [
    i8 0, label %sw.bb
    i8 4, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %execute = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %5 = ptrtoint ptr %execute to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @nvmet_execute_prop_set, ptr %execute, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %execute3 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %6 = ptrtoint ptr %execute3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @nvmet_execute_prop_get, ptr %execute3, align 4
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvmet_parse_fabrics_cmd.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvmet_parse_fabrics_cmd, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !75

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %fctype to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fctype, align 4
  %conv7 = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nvmet_parse_fabrics_cmd.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.4, i32 noundef %conv7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %error_loc = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %9 = ptrtoint ptr %error_loc to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 4, ptr %error_loc, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb2, %sw.bb
  %retval.0 = phi i16 [ 16385, %do.end ], [ 0, %sw.bb2 ], [ 0, %sw.bb ]
  ret i16 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_execute_prop_set(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %value = getelementptr inbounds %struct.nvmf_property_set_command, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %value, align 8
  %4 = tail call i64 @llvm.bswap.i64(i64 %3)
  %call = tail call zeroext i1 @nvmet_check_transfer_len(ptr noundef %req, i32 noundef 0) #7
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %req, align 8
  %attrib = getelementptr inbounds %struct.nvmf_property_set_command, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %attrib to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %attrib, align 8
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %error_loc = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %10 = ptrtoint ptr %error_loc to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 40, ptr %error_loc, align 4
  br label %out

if.end3:                                          ; preds = %if.end
  %offset = getelementptr inbounds %struct.nvmf_property_set_command, ptr %6, i32 0, i32 7
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 335544320, i32 %12)
  %cond = icmp eq i32 %12, 335544320
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %sq = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 2
  %13 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sq, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %conv5 = trunc i64 %4 to i32
  tail call void @nvmet_update_cc(ptr noundef %16, i32 noundef %conv5) #7
  br label %out

sw.default:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %error_loc6 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %17 = ptrtoint ptr %error_loc6 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 44, ptr %error_loc6, align 4
  br label %out

out:                                              ; preds = %sw.default, %sw.bb, %if.then2
  %status.0 = phi i16 [ 16386, %if.then2 ], [ 0, %sw.bb ], [ 16386, %sw.default ]
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext %status.0) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_execute_prop_get(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sq = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sq, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call zeroext i1 @nvmet_check_transfer_len(ptr noundef %req, i32 noundef 0) #7
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 8
  %attrib = getelementptr inbounds %struct.nvmf_property_get_command, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %attrib to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %attrib, align 8
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %offset5 = getelementptr inbounds %struct.nvmf_property_get_command, ptr %5, i32 0, i32 7
  %9 = ptrtoint ptr %offset5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset5, align 4
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cond = icmp eq i32 %10, 0
  br i1 %cond, label %sw.bb, label %if.then2.if.end24_crit_edge

if.then2.if.end24_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

sw.bb:                                            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %cap = getelementptr inbounds %struct.nvmet_ctrl, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %cap to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %cap, align 8
  br label %if.end24

if.else:                                          ; preds = %if.end
  %13 = tail call i32 @llvm.bswap.i32(i32 %10)
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %13, label %if.else.if.end24_crit_edge [
    i32 8, label %sw.bb6
    i32 20, label %sw.bb7
    i32 28, label %sw.bb9
  ]

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

sw.bb6:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 8
  %ver = getelementptr inbounds %struct.nvmet_subsys, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %ver to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %ver, align 8
  br label %if.end24

sw.bb7:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %cc = getelementptr inbounds %struct.nvmet_ctrl, ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cc, align 8
  %conv8 = zext i32 %20 to i64
  br label %if.end24

sw.bb9:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %csts = getelementptr inbounds %struct.nvmet_ctrl, ptr %3, i32 0, i32 6
  %21 = ptrtoint ptr %csts to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %csts, align 4
  %conv10 = zext i32 %22 to i64
  br label %if.end24

if.end24:                                         ; preds = %sw.bb9, %sw.bb7, %sw.bb6, %if.else.if.end24_crit_edge, %sw.bb, %if.then2.if.end24_crit_edge
  %.sink = phi i16 [ 44, %if.then2.if.end24_crit_edge ], [ 40, %sw.bb ], [ 40, %sw.bb9 ], [ 40, %sw.bb7 ], [ 40, %sw.bb6 ], [ 40, %if.else.if.end24_crit_edge ]
  %val.045 = phi i64 [ 0, %if.then2.if.end24_crit_edge ], [ %12, %sw.bb ], [ %conv10, %sw.bb9 ], [ %conv8, %sw.bb7 ], [ %18, %sw.bb6 ], [ 0, %if.else.if.end24_crit_edge ]
  %status.043 = phi i16 [ 16386, %if.then2.if.end24_crit_edge ], [ 0, %sw.bb ], [ 0, %sw.bb9 ], [ 0, %sw.bb7 ], [ 0, %sw.bb6 ], [ 16386, %if.else.if.end24_crit_edge ]
  %error_loc23 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %23 = ptrtoint ptr %error_loc23 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %.sink, ptr %error_loc23, align 4
  %24 = tail call i64 @llvm.bswap.i64(i64 %val.045)
  %cqe = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 1
  %25 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cqe, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %24, ptr %26, align 8
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext %status.043) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nvmet_parse_connect_cmd(ptr nocapture noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %3)
  %cmp.i = icmp eq i8 %3, 127
  br i1 %cmp.i, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvmet_parse_connect_cmd.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvmet_parse_connect_cmd, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !75

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 8
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nvmet_parse_connect_cmd.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.7, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %error_loc = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %6 = ptrtoint ptr %error_loc to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %error_loc, align 4
  br label %cleanup

if.end6:                                          ; preds = %entry
  %fctype = getelementptr inbounds %struct.nvmf_common_command, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %fctype to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fctype, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp.not = icmp eq i8 %8, 1
  br i1 %cmp.not, label %if.end29, label %do.body10

do.body10:                                        ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvmet_parse_connect_cmd.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvmet_parse_connect_cmd, %if.then22)) #7
          to label %do.end27 [label %if.then22], !srcloc !75

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %fctype to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fctype, align 4
  %conv24 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nvmet_parse_connect_cmd.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.9, i32 noundef %conv24) #7
  br label %do.end27

do.end27:                                         ; preds = %if.then22, %do.body10
  %error_loc28 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %11 = ptrtoint ptr %error_loc28 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 4, ptr %error_loc28, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.end6
  %qid = getelementptr inbounds %struct.nvmf_connect_command, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %qid to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %qid, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp31 = icmp eq i16 %13, 0
  %execute = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  br i1 %cmp31, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %execute to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @nvmet_execute_admin_connect, ptr %execute, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %execute to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @nvmet_execute_io_connect, ptr %execute, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then33, %do.end27, %do.end
  %retval.0 = phi i16 [ 16385, %do.end27 ], [ 16385, %do.end ], [ 0, %if.else ], [ 0, %if.then33 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_execute_admin_connect(ptr noundef %req) #0 align 64 {
entry:
  %ctrl = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl) #7
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ctrl, align 4
  %call = tail call zeroext i1 @nvmet_check_transfer_len(ptr noundef %req, i32 noundef 1024) #7
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 1024) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.complete_crit_edge, label %if.end3

if.end.complete_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %complete

if.end3:                                          ; preds = %if.end
  %call4 = tail call zeroext i16 @nvmet_copy_from_sgl(ptr noundef %req, i32 noundef 0, ptr noundef nonnull %call7.i, i32 noundef 1024) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call4)
  %tobool5.not = icmp eq i16 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end7:                                          ; preds = %if.end3
  %cqe = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cqe, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %5, align 8
  %recfmt = getelementptr inbounds %struct.nvmf_connect_command, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %recfmt to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %recfmt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp.not = icmp eq i16 %8, 0
  br i1 %cmp.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv11 = zext i16 %9 to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv11) #11
  %error_loc = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %10 = ptrtoint ptr %error_loc to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 40, ptr %error_loc, align 4
  br label %out

if.end13:                                         ; preds = %if.end7
  %cntlid = getelementptr inbounds %struct.nvmf_connect_data, ptr %call7.i, i32 0, i32 1
  %11 = ptrtoint ptr %cntlid to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %cntlid, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %12)
  %cmp15.not = icmp eq i16 %12, -1
  br i1 %cmp15.not, label %if.end29, label %do.end22, !prof !76

do.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %conv14 = zext i16 %12 to i32
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv14) #11
  %13 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cqe, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 268435712, ptr %14, align 8
  br label %out

if.end29:                                         ; preds = %if.end13
  %subsysnqn = getelementptr inbounds %struct.nvmf_connect_data, ptr %call7.i, i32 0, i32 3
  %hostnqn = getelementptr inbounds %struct.nvmf_connect_data, ptr %call7.i, i32 0, i32 4
  %kato = getelementptr inbounds %struct.nvmf_connect_command, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %kato to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %kato, align 8
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %call31 = call zeroext i16 @nvmet_alloc_ctrl(ptr noundef %subsysnqn, ptr noundef %hostnqn, ptr noundef %req, i32 noundef %18, ptr noundef nonnull %ctrl) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call31)
  %tobool32.not = icmp eq i16 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end29.out_crit_edge

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end34:                                         ; preds = %if.end29
  %19 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctrl, align 4
  %port = getelementptr inbounds %struct.nvmet_ctrl, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port, align 8
  %pi_enable = getelementptr inbounds %struct.nvmet_port, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %pi_enable to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pi_enable, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool35.not = icmp eq i8 %24, 0
  br i1 %tobool35.not, label %if.end34.land.end_crit_edge, label %land.rhs

if.end34.land.end_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %20, align 8
  %pi_support = getelementptr inbounds %struct.nvmet_subsys, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %pi_support to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pi_support, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool37 = icmp ne i8 %28, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end34.land.end_crit_edge
  %29 = phi i1 [ false, %if.end34.land.end_crit_edge ], [ %tobool37, %land.rhs ]
  %pi_support39 = getelementptr inbounds %struct.nvmet_ctrl, ptr %20, i32 0, i32 31
  %frombool = zext i1 %29 to i8
  %30 = ptrtoint ptr %pi_support39 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frombool, ptr %pi_support39, align 8
  %hostid = getelementptr inbounds %struct.nvmet_ctrl, ptr %20, i32 0, i32 7
  %31 = call ptr @memcpy(ptr %hostid, ptr %call7.i, i32 16)
  %call41 = call fastcc zeroext i16 @nvmet_install_queue(ptr noundef %20, ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call41)
  %tobool42.not = icmp eq i16 %call41, 0
  %32 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctrl, align 4
  br i1 %tobool42.not, label %do.end47, label %if.then43

if.then43:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @nvmet_ctrl_put(ptr noundef %33) #7
  br label %out

do.end47:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp.i.not = icmp eq i32 %37, 2
  %cond = select i1 %cmp.i.not, ptr @.str.19, ptr @.str.18
  %cntlid52 = getelementptr inbounds %struct.nvmet_ctrl, ptr %33, i32 0, i32 8
  %38 = ptrtoint ptr %cntlid52 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %cntlid52, align 8
  %conv53 = zext i16 %39 to i32
  %subsysnqn55 = getelementptr inbounds %struct.nvmet_subsys, ptr %35, i32 0, i32 15
  %40 = ptrtoint ptr %subsysnqn55 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %subsysnqn55, align 8
  %hostnqn56 = getelementptr inbounds %struct.nvmet_ctrl, ptr %33, i32 0, i32 25
  %pi_support58 = getelementptr inbounds %struct.nvmet_ctrl, ptr %33, i32 0, i32 31
  %42 = ptrtoint ptr %pi_support58 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pi_support58, align 8, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool59.not = icmp eq i8 %43, 0
  %cond61 = select i1 %tobool59.not, ptr @.str.21, ptr @.str.20
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull %cond, i32 noundef %conv53, ptr noundef %41, ptr noundef %hostnqn56, ptr noundef nonnull %cond61) #11
  %44 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctrl, align 4
  %cntlid63 = getelementptr inbounds %struct.nvmet_ctrl, ptr %45, i32 0, i32 8
  %46 = ptrtoint ptr %cntlid63 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %cntlid63, align 8
  %48 = call i16 @llvm.bswap.i16(i16 %47)
  %49 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cqe, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %48, ptr %50, align 8
  br label %out

out:                                              ; preds = %do.end47, %if.then43, %if.end29.out_crit_edge, %do.end22, %do.end, %if.end3.out_crit_edge
  %status.0 = phi i16 [ %call4, %if.end3.out_crit_edge ], [ 16768, %do.end ], [ 16770, %do.end22 ], [ %call31, %if.end29.out_crit_edge ], [ %call41, %if.then43 ], [ 0, %do.end47 ]
  call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %complete

complete:                                         ; preds = %out, %if.end.complete_crit_edge
  %status.1 = phi i16 [ %status.0, %out ], [ 6, %if.end.complete_crit_edge ]
  call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext %status.1) #7
  br label %cleanup

cleanup:                                          ; preds = %complete, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_execute_io_connect(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %qid1 = getelementptr inbounds %struct.nvmf_connect_command, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %qid1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %qid1, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %call = tail call zeroext i1 @nvmet_check_transfer_len(ptr noundef %req, i32 noundef 1024) #7
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 1024) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.complete_crit_edge, label %if.end4

if.end.complete_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %complete

if.end4:                                          ; preds = %if.end
  %call5 = tail call zeroext i16 @nvmet_copy_from_sgl(ptr noundef %req, i32 noundef 0, ptr noundef nonnull %call7.i, i32 noundef 1024) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call5)
  %tobool6.not = icmp eq i16 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end8:                                          ; preds = %if.end4
  %cqe = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cqe, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %7, align 8
  %recfmt = getelementptr inbounds %struct.nvmf_connect_command, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %recfmt to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %recfmt, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp.not = icmp eq i16 %10, 0
  br i1 %cmp.not, label %if.end14, label %do.end

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %conv12 = zext i16 %11 to i32
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv12) #11
  br label %out

if.end14:                                         ; preds = %if.end8
  %subsysnqn = getelementptr inbounds %struct.nvmf_connect_data, ptr %call7.i, i32 0, i32 3
  %hostnqn = getelementptr inbounds %struct.nvmf_connect_data, ptr %call7.i, i32 0, i32 4
  %cntlid = getelementptr inbounds %struct.nvmf_connect_data, ptr %call7.i, i32 0, i32 1
  %12 = ptrtoint ptr %cntlid to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cntlid, align 8
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %call16 = tail call ptr @nvmet_ctrl_find_get(ptr noundef %subsysnqn, ptr noundef %hostnqn, i16 noundef zeroext %14, ptr noundef %req) #7
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end14.out_crit_edge, label %if.end19

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end19:                                         ; preds = %if.end14
  %conv20 = zext i16 %4 to i32
  %15 = ptrtoint ptr %call16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call16, align 8
  %max_qid = getelementptr inbounds %struct.nvmet_subsys, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %max_qid to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %max_qid, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %18)
  %cmp22 = icmp ugt i16 %4, %18
  br i1 %cmp22, label %do.end29, label %if.end35, !prof !78

do.end29:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv20) #11
  %19 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cqe, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 704643072, ptr %20, align 8
  br label %out_ctrl_put

if.end35:                                         ; preds = %if.end19
  %call36 = tail call fastcc zeroext i16 @nvmet_install_queue(ptr noundef nonnull %call16, ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call36)
  %tobool37.not = icmp eq i16 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.out_ctrl_put_crit_edge

if.end35.out_ctrl_put_crit_edge:                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_ctrl_put

if.end39:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %cntlid40 = getelementptr inbounds %struct.nvmet_ctrl, ptr %call16, i32 0, i32 8
  %22 = ptrtoint ptr %cntlid40 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %cntlid40, align 8
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %25 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cqe, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %24, ptr %26, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvmet_execute_io_connect.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvmet_execute_io_connect, %if.then53)) #7
          to label %out [label %if.then53], !srcloc !75

if.then53:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %cntlid40 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %cntlid40, align 8
  %conv56 = zext i16 %29 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nvmet_execute_io_connect.__UNIQUE_ID_ddebug287, ptr noundef nonnull @.str.41, i32 noundef %conv20, i32 noundef %conv56) #7
  br label %out

out:                                              ; preds = %out_ctrl_put, %if.then53, %if.end39, %if.end14.out_crit_edge, %do.end, %if.end4.out_crit_edge
  %status.0 = phi i16 [ %call5, %if.end4.out_crit_edge ], [ 16768, %do.end ], [ %status.2, %out_ctrl_put ], [ 0, %if.then53 ], [ 16770, %if.end14.out_crit_edge ], [ 0, %if.end39 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %complete

complete:                                         ; preds = %out, %if.end.complete_crit_edge
  %status.1 = phi i16 [ %status.0, %out ], [ 6, %if.end.complete_crit_edge ]
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext %status.1) #7
  br label %cleanup

out_ctrl_put:                                     ; preds = %if.end35.out_ctrl_put_crit_edge, %do.end29
  %status.2 = phi i16 [ 16770, %do.end29 ], [ %call36, %if.end35.out_ctrl_put_crit_edge ]
  tail call void @nvmet_ctrl_put(ptr noundef nonnull %call16) #7
  br label %out

cleanup:                                          ; preds = %complete, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvmet_check_transfer_len(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_update_cc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_req_complete(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvmet_copy_from_sgl(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvmet_alloc_ctrl(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @nvmet_install_queue(ptr noundef %ctrl, ptr nocapture noundef %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %qid1 = getelementptr inbounds %struct.nvmf_connect_command, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %qid1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %qid1, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %sqsize2 = getelementptr inbounds %struct.nvmf_connect_command, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %sqsize2 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sqsize2, align 4
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %cap = getelementptr inbounds %struct.nvmet_ctrl, ptr %ctrl, i32 0, i32 4
  %8 = ptrtoint ptr %cap to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %cap, align 8
  %conv = trunc i64 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #11
  %error_loc = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %10 = ptrtoint ptr %error_loc to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 44, ptr %error_loc, align 4
  %cqe = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 1
  %11 = ptrtoint ptr %cqe to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cqe, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 738197504, ptr %12, align 8
  br label %err

if.end:                                           ; preds = %entry
  %sqs = getelementptr inbounds %struct.nvmet_ctrl, ptr %ctrl, i32 0, i32 1
  %14 = ptrtoint ptr %sqs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sqs, align 4
  %idxprom = zext i16 %4 to i32
  %arrayidx = getelementptr ptr, ptr %15, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %17, null
  br i1 %cmp.not, label %if.end12, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %idxprom) #11
  %error_loc11 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %18 = ptrtoint ptr %error_loc11 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 42, ptr %error_loc11, align 4
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %conv13 = zext i16 %7 to i32
  %conv14 = and i32 %conv, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv14, i32 %conv13)
  %cmp15 = icmp ult i32 %conv14, %conv13
  br i1 %cmp15, label %do.end20, label %if.end29

do.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %cntlid = getelementptr inbounds %struct.nvmet_ctrl, ptr %ctrl, i32 0, i32 8
  %19 = ptrtoint ptr %cntlid to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %cntlid, align 8
  %conv24 = zext i16 %20 to i32
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %conv13, i32 noundef %conv14, i32 noundef %conv24) #11
  %error_loc26 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %21 = ptrtoint ptr %error_loc26 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 44, ptr %error_loc26, align 4
  %cqe27 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 1
  %22 = ptrtoint ptr %cqe27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cqe27, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 738197504, ptr %23, align 8
  br label %cleanup

if.end29:                                         ; preds = %if.end12
  %sq = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 2
  %25 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sq, align 8
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %26, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !79
  %27 = ptrtoint ptr %ctrl to i32
  tail call void @llvm.prefetch.p0(ptr %26, i32 1, i32 3, i32 1) #7
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end29
  %28 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %26, i32 0, i32 %27) #7, !srcloc !80
  %asmresult.i = extractvalue { i32, i32 } %28, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  %asmresult1.i = extractvalue { i32, i32 } %28, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i)
  %tobool50.not = icmp eq i32 %asmresult1.i, 0
  br i1 %tobool50.not, label %if.end58, label %do.end54

do.end54:                                         ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #11
  %error_loc57 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %29 = ptrtoint ptr %error_loc57 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %error_loc57, align 4
  br label %cleanup

if.end58:                                         ; preds = %__cmpxchg.exit
  %cq = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 3
  %30 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cq, align 4
  %add = add i16 %7, 1
  tail call void @nvmet_cq_setup(ptr noundef %ctrl, ptr noundef %31, i16 noundef zeroext %4, i16 noundef zeroext %add) #7
  %32 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sq, align 8
  tail call void @nvmet_sq_setup(ptr noundef %ctrl, ptr noundef %33, i16 noundef zeroext %4, i16 noundef zeroext %add) #7
  %cattr = getelementptr inbounds %struct.nvmf_connect_command, ptr %1, i32 0, i32 9
  %34 = ptrtoint ptr %cattr to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %cattr, align 2
  %36 = and i8 %35, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool67.not = icmp eq i8 %36, 0
  br i1 %tobool67.not, label %if.end58.if.end71_crit_edge, label %if.then68

if.end58.if.end71_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then68:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sq, align 8
  %sqhd_disabled = getelementptr inbounds %struct.nvmet_sq, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %sqhd_disabled to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %sqhd_disabled, align 4
  %cqe70 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 1
  %40 = ptrtoint ptr %cqe70 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cqe70, align 4
  %sq_head = getelementptr inbounds %struct.nvme_completion, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %sq_head to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 -1, ptr %sq_head, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %if.end58.if.end71_crit_edge
  %ops = getelementptr inbounds %struct.nvmet_ctrl, ptr %ctrl, i32 0, i32 21
  %43 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops, align 8
  %install_queue = getelementptr inbounds %struct.nvmet_fabrics_ops, ptr %44, i32 0, i32 9
  %45 = ptrtoint ptr %install_queue to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %install_queue, align 4
  %tobool72.not = icmp eq ptr %46, null
  br i1 %tobool72.not, label %if.end71.cleanup_crit_edge, label %if.then73

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then73:                                        ; preds = %if.end71
  %47 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sq, align 8
  %call77 = tail call zeroext i16 %46(ptr noundef %48) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call77)
  %tobool78.not = icmp eq i16 %call77, 0
  br i1 %tobool78.not, label %if.then73.cleanup_crit_edge, label %do.end82

if.then73.cleanup_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end82:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  %cntlid85 = getelementptr inbounds %struct.nvmet_ctrl, ptr %ctrl, i32 0, i32 8
  %49 = ptrtoint ptr %cntlid85 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %cntlid85, align 8
  %conv86 = zext i16 %50 to i32
  %conv87 = zext i16 %call77 to i32
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %idxprom, i32 noundef %conv86, i32 noundef %conv87) #11
  %51 = ptrtoint ptr %sqs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sqs, align 4
  %arrayidx91 = getelementptr ptr, ptr %52, i32 %idxprom
  %53 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %arrayidx91, align 4
  br label %err

err:                                              ; preds = %do.end82, %do.end
  %ret.0 = phi i16 [ %call77, %do.end82 ], [ 16770, %do.end ]
  %sq94 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 2
  %54 = ptrtoint ptr %sq94 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sq94, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %55, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then73.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %do.end54, %do.end20, %do.end7
  %retval.0 = phi i16 [ 16396, %do.end7 ], [ 16770, %do.end20 ], [ 16769, %do.end54 ], [ %ret.0, %err ], [ 0, %if.then73.cleanup_crit_edge ], [ 0, %if.end71.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_ctrl_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_cq_setup(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_sq_setup(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmet_ctrl_find_get(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/nvme/target/fabrics-cmd.c", i32 97, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @nvmet_parse_fabrics_cmd.__UNIQUE_ID_ddebug286, !1, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/nvme/target/fabrics-cmd.c", i32 306, i32 3}
!9 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @nvmet_parse_connect_cmd.__UNIQUE_ID_ddebug288, !8, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!11 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/nvme/target/fabrics-cmd.c", i32 312, i32 3}
!14 = !{ptr @nvmet_parse_connect_cmd.__UNIQUE_ID_ddebug289, !13, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!15 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/nvme/target/fabrics-cmd.c", i32 194, i32 3}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @nvmet_execute_admin_connect._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @nvmet_execute_admin_connect._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/nvme/target/fabrics-cmd.c", i32 202, i32 3}
!23 = !{ptr @nvmet_execute_admin_connect._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @nvmet_execute_admin_connect._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/nvme/target/fabrics-cmd.c", i32 224, i32 2}
!27 = !{ptr @nvmet_execute_admin_connect._entry.15, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @nvmet_execute_admin_connect._entry_ptr.17, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.18, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.19, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.20, !26, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.21, !26, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/nvme/target/fabrics-cmd.c", i32 116, i32 3}
!35 = !{ptr @.str.23, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @nvmet_install_queue._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @nvmet_install_queue._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/nvme/target/fabrics-cmd.c", i32 124, i32 3}
!40 = !{ptr @nvmet_install_queue._entry.24, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @nvmet_install_queue._entry_ptr.26, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.28, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/nvme/target/fabrics-cmd.c", i32 130, i32 3}
!44 = !{ptr @nvmet_install_queue._entry.27, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @nvmet_install_queue._entry_ptr.29, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.31, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/nvme/target/fabrics-cmd.c", i32 139, i32 3}
!48 = !{ptr @nvmet_install_queue._entry.30, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @nvmet_install_queue._entry_ptr.32, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.34, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/nvme/target/fabrics-cmd.c", i32 156, i32 4}
!52 = !{ptr @nvmet_install_queue._entry.33, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @nvmet_install_queue._entry_ptr.35, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.36, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/nvme/target/fabrics-cmd.c", i32 261, i32 3}
!56 = !{ptr @nvmet_execute_io_connect._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @nvmet_execute_io_connect._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.38, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/nvme/target/fabrics-cmd.c", i32 275, i32 3}
!60 = !{ptr @nvmet_execute_io_connect._entry.37, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @nvmet_execute_io_connect._entry_ptr.39, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.40, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/nvme/target/fabrics-cmd.c", i32 288, i32 2}
!64 = !{ptr @nvmet_execute_io_connect.__UNIQUE_ID_ddebug287, !63, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!65 = !{ptr @.str.41, !63, !"<string literal>", i1 false, i1 false}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{i64 2148278642, i64 2148278647, i64 2148278660, i64 2148278704, i64 2148278738, i64 2148278759}
!76 = !{!"branch_weights", i32 2000, i32 1}
!77 = !{i8 0, i8 2}
!78 = !{!"branch_weights", i32 1, i32 2000}
!79 = !{i64 2154531267}
!80 = !{i64 974741, i64 974762, i64 974785, i64 974804, i64 974823}
!81 = !{i64 2154531681}
