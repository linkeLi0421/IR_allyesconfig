; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vidtv/vidtv_bridge.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vidtv/vidtv_bridge.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.vidtv_tuner_config = type { ptr, i32, i32, [8 x i32], [8 x i32], [8 x i32], i8 }
%struct.vidtv_demod_config = type { i8, i8 }
%struct.vidtv_dvb = type { ptr, [1 x ptr], %struct.dvb_adapter, %struct.dvb_demux, %struct.dmxdev, [1 x %struct.dmx_frontend], %struct.i2c_adapter, [1 x ptr], [1 x ptr], i32, %struct.mutex, i8, ptr, %struct.media_device }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.86], %struct.media_entity_enum, i32 }
%struct.anon.86 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.dvb_demux_feed = type { %union.anon.91, %union.anon.92, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.91 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.92 = type { ptr }
%struct.vidtv_mux_init_args = type { i32, ptr, i32, i64, i64, i16, i16, ptr, i16, ptr, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }

@__param_str_drop_tslock_prob_on_low_snr = internal constant [45 x i8] c"dvb_vidtv_bridge.drop_tslock_prob_on_low_snr\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@drop_tslock_prob_on_low_snr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_drop_tslock_prob_on_low_snr = internal constant %struct.kernel_param { ptr @__param_str_drop_tslock_prob_on_low_snr, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @drop_tslock_prob_on_low_snr } }, section "__param", align 4
@__UNIQUE_ID_drop_tslock_prob_on_low_snrtype296 = internal constant [59 x i8] c"dvb_vidtv_bridge.parmtype=drop_tslock_prob_on_low_snr:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_drop_tslock_prob_on_low_snr297 = internal constant [113 x i8] c"dvb_vidtv_bridge.parm=drop_tslock_prob_on_low_snr:Probability of losing the TS lock if the signal quality is bad\00", section ".modinfo", align 1
@__param_str_recover_tslock_prob_on_good_snr = internal constant [49 x i8] c"dvb_vidtv_bridge.recover_tslock_prob_on_good_snr\00", align 1
@recover_tslock_prob_on_good_snr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_recover_tslock_prob_on_good_snr = internal constant %struct.kernel_param { ptr @__param_str_recover_tslock_prob_on_good_snr, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @recover_tslock_prob_on_good_snr } }, section "__param", align 4
@__UNIQUE_ID_recover_tslock_prob_on_good_snrtype298 = internal constant [63 x i8] c"dvb_vidtv_bridge.parmtype=recover_tslock_prob_on_good_snr:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_recover_tslock_prob_on_good_snr299 = internal constant [114 x i8] c"dvb_vidtv_bridge.parm=recover_tslock_prob_on_good_snr:Probability recovering the TS lock when the signal improves\00", section ".modinfo", align 1
@__param_str_mock_power_up_delay_msec = internal constant [42 x i8] c"dvb_vidtv_bridge.mock_power_up_delay_msec\00", align 1
@mock_power_up_delay_msec = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mock_power_up_delay_msec = internal constant %struct.kernel_param { ptr @__param_str_mock_power_up_delay_msec, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @mock_power_up_delay_msec } }, section "__param", align 4
@__UNIQUE_ID_mock_power_up_delay_msectype300 = internal constant [56 x i8] c"dvb_vidtv_bridge.parmtype=mock_power_up_delay_msec:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_mock_power_up_delay_msec301 = internal constant [73 x i8] c"dvb_vidtv_bridge.parm=mock_power_up_delay_msec:Simulate a power up delay\00", section ".modinfo", align 1
@__param_str_mock_tune_delay_msec = internal constant [38 x i8] c"dvb_vidtv_bridge.mock_tune_delay_msec\00", align 1
@mock_tune_delay_msec = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mock_tune_delay_msec = internal constant %struct.kernel_param { ptr @__param_str_mock_tune_delay_msec, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @mock_tune_delay_msec } }, section "__param", align 4
@__UNIQUE_ID_mock_tune_delay_msectype302 = internal constant [52 x i8] c"dvb_vidtv_bridge.parmtype=mock_tune_delay_msec:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_mock_tune_delay_msec303 = internal constant [65 x i8] c"dvb_vidtv_bridge.parm=mock_tune_delay_msec:Simulate a tune delay\00", section ".modinfo", align 1
@__param_str_vidtv_valid_dvb_t_freqs = internal constant [41 x i8] c"dvb_vidtv_bridge.vidtv_valid_dvb_t_freqs\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_vidtv_valid_dvb_t_freqs = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_uint, ptr @vidtv_valid_dvb_t_freqs }, align 4
@__param_vidtv_valid_dvb_t_freqs = internal constant %struct.kernel_param { ptr @__param_str_vidtv_valid_dvb_t_freqs, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_vidtv_valid_dvb_t_freqs } }, section "__param", align 4
@__UNIQUE_ID_vidtv_valid_dvb_t_freqstype304 = internal constant [64 x i8] c"dvb_vidtv_bridge.parmtype=vidtv_valid_dvb_t_freqs:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_vidtv_valid_dvb_t_freqs305 = internal constant [89 x i8] c"dvb_vidtv_bridge.parm=vidtv_valid_dvb_t_freqs:Valid DVB-T frequencies to simulate, in Hz\00", section ".modinfo", align 1
@__param_str_vidtv_valid_dvb_c_freqs = internal constant [41 x i8] c"dvb_vidtv_bridge.vidtv_valid_dvb_c_freqs\00", align 1
@__param_arr_vidtv_valid_dvb_c_freqs = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_uint, ptr @vidtv_valid_dvb_c_freqs }, align 4
@__param_vidtv_valid_dvb_c_freqs = internal constant %struct.kernel_param { ptr @__param_str_vidtv_valid_dvb_c_freqs, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_vidtv_valid_dvb_c_freqs } }, section "__param", align 4
@__UNIQUE_ID_vidtv_valid_dvb_c_freqstype306 = internal constant [64 x i8] c"dvb_vidtv_bridge.parmtype=vidtv_valid_dvb_c_freqs:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_vidtv_valid_dvb_c_freqs307 = internal constant [89 x i8] c"dvb_vidtv_bridge.parm=vidtv_valid_dvb_c_freqs:Valid DVB-C frequencies to simulate, in Hz\00", section ".modinfo", align 1
@__param_str_vidtv_valid_dvb_s_freqs = internal constant [41 x i8] c"dvb_vidtv_bridge.vidtv_valid_dvb_s_freqs\00", align 1
@__param_arr_vidtv_valid_dvb_s_freqs = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_uint, ptr @vidtv_valid_dvb_s_freqs }, align 4
@__param_vidtv_valid_dvb_s_freqs = internal constant %struct.kernel_param { ptr @__param_str_vidtv_valid_dvb_s_freqs, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_vidtv_valid_dvb_s_freqs } }, section "__param", align 4
@__UNIQUE_ID_vidtv_valid_dvb_s_freqstype308 = internal constant [64 x i8] c"dvb_vidtv_bridge.parmtype=vidtv_valid_dvb_s_freqs:array of uint\00", section ".modinfo", align 1
@__UNIQUE_ID_vidtv_valid_dvb_s_freqs309 = internal constant [104 x i8] c"dvb_vidtv_bridge.parm=vidtv_valid_dvb_s_freqs:Valid DVB-S/S2 frequencies to simulate at Ku-Band, in kHz\00", section ".modinfo", align 1
@__param_str_max_frequency_shift_hz = internal constant [40 x i8] c"dvb_vidtv_bridge.max_frequency_shift_hz\00", align 1
@max_frequency_shift_hz = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_max_frequency_shift_hz = internal constant %struct.kernel_param { ptr @__param_str_max_frequency_shift_hz, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @max_frequency_shift_hz } }, section "__param", align 4
@__UNIQUE_ID_max_frequency_shift_hztype310 = internal constant [54 x i8] c"dvb_vidtv_bridge.parmtype=max_frequency_shift_hz:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_max_frequency_shift_hz311 = internal constant [98 x i8] c"dvb_vidtv_bridge.parm=max_frequency_shift_hz:Maximum shift in HZ allowed when tuning in a channel\00", section ".modinfo", align 1
@__param_str_adapter_nums = internal constant [30 x i8] c"dvb_vidtv_bridge.adapter_nums\00", align 1
@__param_arr_adapter_nums = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nums }, align 4
@__param_adapter_nums = internal constant %struct.kernel_param { ptr @__param_str_adapter_nums, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_adapter_nums } }, section "__param", align 4
@__UNIQUE_ID_adapter_numstype312 = internal constant [54 x i8] c"dvb_vidtv_bridge.parmtype=adapter_nums:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nums313 = internal constant [55 x i8] c"dvb_vidtv_bridge.parm=adapter_nums:DVB adapter numbers\00", section ".modinfo", align 1
@__param_str_si_period_msec = internal constant [32 x i8] c"dvb_vidtv_bridge.si_period_msec\00", align 1
@si_period_msec = internal global { i32, [28 x i8] } { i32 40, [28 x i8] zeroinitializer }, align 32
@__param_si_period_msec = internal constant %struct.kernel_param { ptr @__param_str_si_period_msec, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @si_period_msec } }, section "__param", align 4
@__UNIQUE_ID_si_period_msectype314 = internal constant [46 x i8] c"dvb_vidtv_bridge.parmtype=si_period_msec:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_si_period_msec315 = internal constant [81 x i8] c"dvb_vidtv_bridge.parm=si_period_msec:How often to send SI packets. Default: 40ms\00", section ".modinfo", align 1
@__param_str_pcr_period_msec = internal constant [33 x i8] c"dvb_vidtv_bridge.pcr_period_msec\00", align 1
@pcr_period_msec = internal global { i32, [28 x i8] } { i32 40, [28 x i8] zeroinitializer }, align 32
@__param_pcr_period_msec = internal constant %struct.kernel_param { ptr @__param_str_pcr_period_msec, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @pcr_period_msec } }, section "__param", align 4
@__UNIQUE_ID_pcr_period_msectype316 = internal constant [47 x i8] c"dvb_vidtv_bridge.parmtype=pcr_period_msec:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_pcr_period_msec317 = internal constant [83 x i8] c"dvb_vidtv_bridge.parm=pcr_period_msec:How often to send PCR packets. Default: 40ms\00", section ".modinfo", align 1
@__param_str_mux_rate_kbytes_sec = internal constant [37 x i8] c"dvb_vidtv_bridge.mux_rate_kbytes_sec\00", align 1
@mux_rate_kbytes_sec = internal global { i32, [28 x i8] } { i32 4096, [28 x i8] zeroinitializer }, align 32
@__param_mux_rate_kbytes_sec = internal constant %struct.kernel_param { ptr @__param_str_mux_rate_kbytes_sec, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @mux_rate_kbytes_sec } }, section "__param", align 4
@__UNIQUE_ID_mux_rate_kbytes_sectype318 = internal constant [51 x i8] c"dvb_vidtv_bridge.parmtype=mux_rate_kbytes_sec:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_mux_rate_kbytes_sec319 = internal constant [77 x i8] c"dvb_vidtv_bridge.parm=mux_rate_kbytes_sec:Mux rate: will pad stream if below\00", section ".modinfo", align 1
@__param_str_pcr_pid = internal constant [25 x i8] c"dvb_vidtv_bridge.pcr_pid\00", align 1
@pcr_pid = internal global { i32, [28 x i8] } { i32 512, [28 x i8] zeroinitializer }, align 32
@__param_pcr_pid = internal constant %struct.kernel_param { ptr @__param_str_pcr_pid, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @pcr_pid } }, section "__param", align 4
@__UNIQUE_ID_pcr_pidtype320 = internal constant [39 x i8] c"dvb_vidtv_bridge.parmtype=pcr_pid:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_pcr_pid321 = internal constant [74 x i8] c"dvb_vidtv_bridge.parm=pcr_pid:PCR PID for all channels: defaults to 0x200\00", section ".modinfo", align 1
@__param_str_mux_buf_sz_pkts = internal constant [33 x i8] c"dvb_vidtv_bridge.mux_buf_sz_pkts\00", align 1
@mux_buf_sz_pkts = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_mux_buf_sz_pkts = internal constant %struct.kernel_param { ptr @__param_str_mux_buf_sz_pkts, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @mux_buf_sz_pkts } }, section "__param", align 4
@__UNIQUE_ID_mux_buf_sz_pktstype322 = internal constant [47 x i8] c"dvb_vidtv_bridge.parmtype=mux_buf_sz_pkts:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_mux_buf_sz_pkts323 = internal constant [97 x i8] c"dvb_vidtv_bridge.parm=mux_buf_sz_pkts:Size for the internal mux buffer in multiples of 188 bytes\00", section ".modinfo", align 1
@vidtv_bridge_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vidtv_bridge_probe, ptr @vidtv_bridge_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@vidtv_bridge_dev = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str, i32 0, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @vidtv_bridge_dev_release, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@__initcall__kmod_dvb_vidtv_bridge__324_607_vidtv_bridge_init6 = internal global ptr @vidtv_bridge_init, section ".initcall6.init", align 4
@__exitcall_vidtv_bridge_exit = internal global ptr @vidtv_bridge_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description325 = internal constant [60 x i8] c"dvb_vidtv_bridge.description=Virtual Digital TV Test Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author326 = internal constant [45 x i8] c"dvb_vidtv_bridge.author=Daniel W. S. Almeida\00", section ".modinfo", align 1
@__UNIQUE_ID_file327 = internal constant [72 x i8] c"dvb_vidtv_bridge.file=drivers/media/test-drivers/vidtv/dvb-vidtv-bridge\00", section ".modinfo", align 1
@__UNIQUE_ID_license328 = internal constant [29 x i8] c"dvb_vidtv_bridge.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias329 = internal constant [29 x i8] c"dvb_vidtv_bridge.alias=vidtv\00", section ".modinfo", align 1
@__UNIQUE_ID_alias330 = internal constant [33 x i8] c"dvb_vidtv_bridge.alias=dvb_vidtv\00", section ".modinfo", align 1
@vidtv_valid_dvb_t_freqs = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 474000000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@vidtv_valid_dvb_c_freqs = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 474000000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@vidtv_valid_dvb_s_freqs = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 11362000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nums = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vidtv\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"platform:vidtv\00", [17 x i8] zeroinitializer }, align 32
@vidtv_bridge_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dvb->feed_lock\00", [16 x i8] zeroinitializer }, align 32
@vidtv_bridge_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 520, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"media device register failed (err=%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vidtv_bridge_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/media/test-drivers/vidtv/vidtv_bridge.c\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vidtv_bridge_probe._entry_ptr = internal global ptr @vidtv_bridge_probe._entry, section ".printk_index", align 4
@vidtv_bridge_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 525, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Successfully initialized vidtv!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@vidtv_bridge_probe._entry_ptr.11 = internal global ptr @vidtv_bridge_probe._entry.8, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vidtv_i2c\00", [22 x i8] zeroinitializer }, align 32
@vidtv_i2c_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @vidtv_master_xfer, ptr null, ptr null, ptr null, ptr @vidtv_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dvb_vidtv_bridge\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dvb_vidtv_demod\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dvb_vidtv_tuner\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LinuxTV.org\00", [20 x i8] zeroinitializer }, align 32
@vidtv_start_streaming._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.vidtv_start_streaming = private unnamed_addr constant [22 x i8] c"vidtv_start_streaming\00", align 1
@vidtv_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @__func__.vidtv_start_streaming, ptr @.str.5, i32 183, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Already streaming. Skipping.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@vidtv_start_streaming._entry_ptr = internal global ptr @vidtv_start_streaming._entry, section ".printk_index", align 4
@vidtv_start_streaming._rs.20 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vidtv_start_streaming.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @__func__.vidtv_start_streaming, ptr @.str.5, ptr @.str.21, i8 0, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Started streaming\0A\00", [45 x i8] zeroinitializer }, align 32
@vidtv_stop_streaming._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vidtv_stop_streaming.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.22, ptr @.str.5, ptr @.str.23, i8 0, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vidtv_stop_streaming\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Stopped streaming\0A\00", [45 x i8] zeroinitializer }, align 32
@vidtv_bridge_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 560, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Successfully removed vidtv\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vidtv_bridge_remove\00", [44 x i8] zeroinitializer }, align 32
@vidtv_bridge_remove._entry_ptr = internal global ptr @vidtv_bridge_remove._entry, section ".printk_index", align 4
@___asan_gen_.26 = private unnamed_addr constant [28 x i8] c"drop_tslock_prob_on_low_snr\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 47, i32 21 }
@___asan_gen_.29 = private unnamed_addr constant [32 x i8] c"recover_tslock_prob_on_good_snr\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 52, i32 21 }
@___asan_gen_.32 = private unnamed_addr constant [25 x i8] c"mock_power_up_delay_msec\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 57, i32 21 }
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"mock_tune_delay_msec\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 61, i32 21 }
@___asan_gen_.38 = private unnamed_addr constant [23 x i8] c"max_frequency_shift_hz\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 88, i32 21 }
@___asan_gen_.41 = private unnamed_addr constant [15 x i8] c"si_period_msec\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 98, i32 21 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"pcr_period_msec\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 102, i32 21 }
@___asan_gen_.47 = private unnamed_addr constant [20 x i8] c"mux_rate_kbytes_sec\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 107, i32 21 }
@___asan_gen_.50 = private unnamed_addr constant [8 x i8] c"pcr_pid\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 111, i32 21 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"mux_buf_sz_pkts\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 115, i32 21 }
@___asan_gen_.56 = private unnamed_addr constant [20 x i8] c"vidtv_bridge_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 578, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"vidtv_bridge_dev\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 573, i32 31 }
@___asan_gen_.62 = private unnamed_addr constant [24 x i8] c"vidtv_valid_dvb_t_freqs\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 65, i32 21 }
@___asan_gen_.65 = private unnamed_addr constant [24 x i8] c"vidtv_valid_dvb_c_freqs\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 73, i32 21 }
@___asan_gen_.68 = private unnamed_addr constant [24 x i8] c"vidtv_valid_dvb_s_freqs\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 81, i32 21 }
@___asan_gen_.71 = private unnamed_addr constant [13 x i8] c"adapter_nums\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 93, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 580, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 503, i32 30 }
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 512, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 519, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 525, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 292, i32 29 }
@___asan_gen_.116 = private unnamed_addr constant [20 x i8] c"vidtv_i2c_algorithm\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 283, i32 35 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 309, i32 8 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 346, i32 46 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 399, i32 46 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 176, i32 34 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 183, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 200, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 213, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.168 = private constant [51 x i8] c"../drivers/media/test-drivers/vidtv/vidtv_bridge.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 560, i32 2 }
@llvm.compiler.used = appending global [103 x ptr] [ptr @__UNIQUE_ID_adapter_nums313, ptr @__UNIQUE_ID_adapter_numstype312, ptr @__UNIQUE_ID_alias329, ptr @__UNIQUE_ID_alias330, ptr @__UNIQUE_ID_author326, ptr @__UNIQUE_ID_description325, ptr @__UNIQUE_ID_drop_tslock_prob_on_low_snr297, ptr @__UNIQUE_ID_drop_tslock_prob_on_low_snrtype296, ptr @__UNIQUE_ID_file327, ptr @__UNIQUE_ID_license328, ptr @__UNIQUE_ID_max_frequency_shift_hz311, ptr @__UNIQUE_ID_max_frequency_shift_hztype310, ptr @__UNIQUE_ID_mock_power_up_delay_msec301, ptr @__UNIQUE_ID_mock_power_up_delay_msectype300, ptr @__UNIQUE_ID_mock_tune_delay_msec303, ptr @__UNIQUE_ID_mock_tune_delay_msectype302, ptr @__UNIQUE_ID_mux_buf_sz_pkts323, ptr @__UNIQUE_ID_mux_buf_sz_pktstype322, ptr @__UNIQUE_ID_mux_rate_kbytes_sec319, ptr @__UNIQUE_ID_mux_rate_kbytes_sectype318, ptr @__UNIQUE_ID_pcr_period_msec317, ptr @__UNIQUE_ID_pcr_period_msectype316, ptr @__UNIQUE_ID_pcr_pid321, ptr @__UNIQUE_ID_pcr_pidtype320, ptr @__UNIQUE_ID_recover_tslock_prob_on_good_snr299, ptr @__UNIQUE_ID_recover_tslock_prob_on_good_snrtype298, ptr @__UNIQUE_ID_si_period_msec315, ptr @__UNIQUE_ID_si_period_msectype314, ptr @__UNIQUE_ID_vidtv_valid_dvb_c_freqs307, ptr @__UNIQUE_ID_vidtv_valid_dvb_c_freqstype306, ptr @__UNIQUE_ID_vidtv_valid_dvb_s_freqs309, ptr @__UNIQUE_ID_vidtv_valid_dvb_s_freqstype308, ptr @__UNIQUE_ID_vidtv_valid_dvb_t_freqs305, ptr @__UNIQUE_ID_vidtv_valid_dvb_t_freqstype304, ptr @__exitcall_vidtv_bridge_exit, ptr @__initcall__kmod_dvb_vidtv_bridge__324_607_vidtv_bridge_init6, ptr @__param_adapter_nums, ptr @__param_drop_tslock_prob_on_low_snr, ptr @__param_max_frequency_shift_hz, ptr @__param_mock_power_up_delay_msec, ptr @__param_mock_tune_delay_msec, ptr @__param_mux_buf_sz_pkts, ptr @__param_mux_rate_kbytes_sec, ptr @__param_pcr_period_msec, ptr @__param_pcr_pid, ptr @__param_recover_tslock_prob_on_good_snr, ptr @__param_si_period_msec, ptr @__param_vidtv_valid_dvb_c_freqs, ptr @__param_vidtv_valid_dvb_s_freqs, ptr @__param_vidtv_valid_dvb_t_freqs, ptr @vidtv_bridge_exit, ptr @vidtv_bridge_probe._entry, ptr @vidtv_bridge_probe._entry.8, ptr @vidtv_bridge_probe._entry_ptr, ptr @vidtv_bridge_probe._entry_ptr.11, ptr @vidtv_bridge_remove._entry, ptr @vidtv_bridge_remove._entry_ptr, ptr @vidtv_start_streaming._entry, ptr @vidtv_start_streaming._entry_ptr, ptr @drop_tslock_prob_on_low_snr, ptr @recover_tslock_prob_on_good_snr, ptr @mock_power_up_delay_msec, ptr @mock_tune_delay_msec, ptr @max_frequency_shift_hz, ptr @si_period_msec, ptr @pcr_period_msec, ptr @mux_rate_kbytes_sec, ptr @pcr_pid, ptr @mux_buf_sz_pkts, ptr @vidtv_bridge_driver, ptr @vidtv_bridge_dev, ptr @vidtv_valid_dvb_t_freqs, ptr @vidtv_valid_dvb_c_freqs, ptr @vidtv_valid_dvb_s_freqs, ptr @adapter_nums, ptr @.str, ptr @.str.1, ptr @vidtv_bridge_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @vidtv_i2c_algorithm, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @vidtv_start_streaming._rs, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @vidtv_start_streaming._rs.20, ptr @.str.21, ptr @vidtv_stop_streaming._rs, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drop_tslock_prob_on_low_snr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recover_tslock_prob_on_good_snr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mock_power_up_delay_msec to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mock_tune_delay_msec to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_frequency_shift_hz to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si_period_msec to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcr_period_msec to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_rate_kbytes_sec to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcr_pid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_buf_sz_pkts to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_bridge_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_bridge_dev to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_valid_dvb_t_freqs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_valid_dvb_c_freqs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_valid_dvb_s_freqs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nums to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_bridge_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_bridge_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_bridge_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_i2c_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_start_streaming._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_start_streaming._rs.20 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_stop_streaming._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_bridge_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vidtv_bridge_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @vidtv_bridge_driver) #8
  tail call void @platform_device_unregister(ptr noundef nonnull @vidtv_bridge_dev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vidtv_bridge_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @platform_device_register(ptr noundef nonnull @vidtv_bridge_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @vidtv_bridge_driver, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_device_unregister(ptr noundef nonnull @vidtv_bridge_dev) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidtv_bridge_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %cfg.i154.i = alloca %struct.vidtv_tuner_config, align 4
  %cfg.i.i = alloca %struct.vidtv_demod_config, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 3976) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %call7.i.i, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %mdev = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 13
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %mdev, align 8
  %model = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 13, i32 2
  %call4 = tail call i32 @strscpy(ptr noundef %model, ptr noundef nonnull @.str, i32 noundef 32) #8
  %bus_info = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 13, i32 5
  %call7 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.1, i32 noundef 32) #8
  tail call void @media_device_init(ptr noundef %mdev) #8
  %i2c_adapter1.i.i = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 6
  %name.i.i = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 6, i32 12
  %call.i.i = tail call i32 @strscpy(ptr noundef %name.i.i, ptr noundef nonnull @.str.12, i32 noundef 48) #8
  %3 = ptrtoint ptr %i2c_adapter1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %i2c_adapter1.i.i, align 8
  %algo.i.i = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @vidtv_i2c_algorithm, ptr %algo.i.i, align 8
  %algo_data.i.i = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 6, i32 3
  %5 = ptrtoint ptr %algo_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %algo_data.i.i, align 4
  %timeout.i.i = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 6, i32 7
  %6 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 500, ptr %timeout.i.i, align 4
  %retries.i.i = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 6, i32 8
  %7 = ptrtoint ptr %retries.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %retries.i.i, align 8
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call7.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %parent.i.i = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 6, i32 9, i32 1
  %10 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev.i.i, ptr %parent.i.i, align 8
  %driver_data.i.i.i.i = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 6, i32 9, i32 8
  %11 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %driver_data.i.i.i.i, align 4
  %call4.i.i = tail call i32 @i2c_add_adapter(ptr noundef %i2c_adapter1.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp.i, label %vidtv_bridge_dvb_init.exit.thread49, label %if.end.i

vidtv_bridge_dvb_init.exit.thread49:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_adapter(ptr noundef %i2c_adapter1.i.i) #8
  br label %err_dvb

if.end.i:                                         ; preds = %if.end
  %adapter.i.i = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 2
  %dev.i151.i = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 6, i32 9
  %call.i152.i = tail call i32 @dvb_register_adapter(ptr noundef %adapter.i.i, ptr noundef nonnull @.str.13, ptr noundef null, ptr noundef %dev.i151.i, ptr noundef nonnull @adapter_nums) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152.i)
  %cmp2.i = icmp slt i32 %call.i152.i, 0
  br i1 %cmp2.i, label %if.end.i.vidtv_bridge_dvb_init.exit_crit_edge, label %if.end4.i

if.end.i.vidtv_bridge_dvb_init.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vidtv_bridge_dvb_init.exit

if.end4.i:                                        ; preds = %if.end.i
  %mdev1.i.i = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 2, i32 12
  %12 = ptrtoint ptr %mdev1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %mdev, ptr %mdev1.i.i, align 4
  %13 = getelementptr inbounds %struct.vidtv_demod_config, ptr %cfg.i.i, i32 0, i32 1
  %i2c_client_demod.i.i = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 7
  %fe.i.i = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 1
  %14 = getelementptr inbounds i8, ptr %cfg.i154.i, i32 108
  %mock_power_up_delay_msec.i.i = getelementptr inbounds %struct.vidtv_tuner_config, ptr %cfg.i154.i, i32 0, i32 1
  %mock_tune_delay_msec.i.i = getelementptr inbounds %struct.vidtv_tuner_config, ptr %cfg.i154.i, i32 0, i32 2
  %vidtv_valid_dvb_t_freqs.i.i = getelementptr inbounds %struct.vidtv_tuner_config, ptr %cfg.i154.i, i32 0, i32 3
  %vidtv_valid_dvb_c_freqs.i.i = getelementptr inbounds %struct.vidtv_tuner_config, ptr %cfg.i154.i, i32 0, i32 4
  %arrayidx18.i.i = getelementptr inbounds %struct.vidtv_tuner_config, ptr %cfg.i154.i, i32 0, i32 5, i32 0
  %arrayidx18.1.i.i = getelementptr inbounds %struct.vidtv_tuner_config, ptr %cfg.i154.i, i32 0, i32 5, i32 1
  %arrayidx18.2.i.i = getelementptr inbounds %struct.vidtv_tuner_config, ptr %cfg.i154.i, i32 0, i32 5, i32 2
  %arrayidx18.3.i.i = getelementptr inbounds %struct.vidtv_tuner_config, ptr %cfg.i154.i, i32 0, i32 5, i32 3
  %arrayidx18.4.i.i = getelementptr inbounds %struct.vidtv_tuner_config, ptr %cfg.i154.i, i32 0, i32 5, i32 4
  %arrayidx18.5.i.i = getelementptr inbounds %struct.vidtv_tuner_config, ptr %cfg.i154.i, i32 0, i32 5, i32 5
  %arrayidx18.6.i.i = getelementptr inbounds %struct.vidtv_tuner_config, ptr %cfg.i154.i, i32 0, i32 5, i32 6
  %arrayidx18.7.i.i = getelementptr inbounds %struct.vidtv_tuner_config, ptr %cfg.i154.i, i32 0, i32 5, i32 7
  %i2c_client_tuner.i.i = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end13.i.for.cond.i_crit_edge, %if.end4.i
  %cmp5.i = phi i1 [ true, %if.end4.i ], [ false, %if.end13.i.for.cond.i_crit_edge ]
  %cmp65.i = phi i1 [ false, %if.end4.i ], [ true, %if.end13.i.for.cond.i_crit_edge ]
  %i.0.i = phi i32 [ 0, %if.end4.i ], [ 1, %if.end13.i.for.cond.i_crit_edge ]
  br i1 %cmp5.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cfg.i.i) #8
  %15 = load i32, ptr @drop_tslock_prob_on_low_snr, align 4
  %conv.i.i = trunc i32 %15 to i8
  %16 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.i.i, ptr %cfg.i.i, align 1
  %17 = load i32, ptr @recover_tslock_prob_on_good_snr, align 4
  %conv1.i.i = trunc i32 %17 to i8
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv1.i.i, ptr %13, align 1
  %call.i153.i = call ptr @dvb_module_probe(ptr noundef nonnull @.str.14, ptr noundef null, ptr noundef %i2c_adapter1.i.i, i8 noundef zeroext 96, ptr noundef nonnull %cfg.i.i) #8
  %19 = ptrtoint ptr %i2c_client_demod.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i153.i, ptr %i2c_client_demod.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %call.i153.i, null
  br i1 %tobool.not.i.i, label %vidtv_bridge_probe_demod.exit.thread.i, label %if.end9.i

vidtv_bridge_probe_demod.exit.thread.i:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cfg.i.i) #8
  br label %for.body77.i

if.end9.i:                                        ; preds = %for.body.i
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %call.i153.i, i32 0, i32 4, i32 8
  %20 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %fe.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %fe.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cfg.i.i) #8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %cfg.i154.i) #8
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %14, align 4
  %24 = ptrtoint ptr %cfg.i154.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %cfg.i154.i, align 4
  %25 = load i32, ptr @mock_power_up_delay_msec, align 4
  %26 = ptrtoint ptr %mock_power_up_delay_msec.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %mock_power_up_delay_msec.i.i, align 4
  %27 = load i32, ptr @mock_tune_delay_msec, align 4
  %28 = ptrtoint ptr %mock_tune_delay_msec.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %mock_tune_delay_msec.i.i, align 4
  %29 = call ptr @memcpy(ptr %vidtv_valid_dvb_t_freqs.i.i, ptr @vidtv_valid_dvb_t_freqs, i32 32)
  %30 = call ptr @memcpy(ptr %vidtv_valid_dvb_c_freqs.i.i, ptr @vidtv_valid_dvb_c_freqs, i32 32)
  %31 = load i32, ptr @vidtv_valid_dvb_s_freqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i155.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i155.i, label %if.end9.i.if.end17.i.i_crit_edge, label %if.then.i.i

if.end9.i.if.end17.i.i_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i.i

if.then.i.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11700000, i32 %31)
  %cmp4.i.i = icmp ult i32 %31, 11700000
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.else.i.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add nsw i32 %31, -9750000
  call void @__sanitizer_cov_trace_const_cmp4(i32 9750000, i32 %31)
  %cmp6.i.i = icmp ult i32 %31, 9750000
  %sub7.i.i = sub nsw i32 9750000, %31
  %cond.i.i = select i1 %cmp6.i.i, i32 %sub7.i.i, i32 %sub.i.i
  br label %if.end17.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub9.i.i = add i32 %31, -10600000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub9.i.i)
  %cmp11.i.i = icmp slt i32 %sub9.i.i, 0
  %sub13.i.i = sub i32 10600000, %31
  %cond16.i.i = select i1 %cmp11.i.i, i32 %sub13.i.i, i32 %sub9.i.i
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.else.i.i, %if.then5.i.i, %if.end9.i.if.end17.i.i_crit_edge
  %freq.0.i.i = phi i32 [ %cond.i.i, %if.then5.i.i ], [ %cond16.i.i, %if.else.i.i ], [ 0, %if.end9.i.if.end17.i.i_crit_edge ]
  %32 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %freq.0.i.i, ptr %arrayidx18.i.i, align 4
  %33 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @vidtv_valid_dvb_s_freqs, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.1.i.i = icmp eq i32 %33, 0
  br i1 %tobool.not.1.i.i, label %if.end17.i.i.if.end17.1.i.i_crit_edge, label %if.then.1.i.i

if.end17.i.i.if.end17.1.i.i_crit_edge:            ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.1.i.i

if.then.1.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11700000, i32 %33)
  %cmp4.1.i.i = icmp ult i32 %33, 11700000
  br i1 %cmp4.1.i.i, label %if.then5.1.i.i, label %if.else.1.i.i

if.else.1.i.i:                                    ; preds = %if.then.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub9.1.i.i = add i32 %33, -10600000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub9.1.i.i)
  %cmp11.1.i.i = icmp slt i32 %sub9.1.i.i, 0
  %sub13.1.i.i = sub i32 10600000, %33
  %cond16.1.i.i = select i1 %cmp11.1.i.i, i32 %sub13.1.i.i, i32 %sub9.1.i.i
  br label %if.end17.1.i.i

if.then5.1.i.i:                                   ; preds = %if.then.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.1.i.i = add nsw i32 %33, -9750000
  call void @__sanitizer_cov_trace_const_cmp4(i32 9750000, i32 %33)
  %cmp6.1.i.i = icmp ult i32 %33, 9750000
  %sub7.1.i.i = sub nsw i32 9750000, %33
  %cond.1.i.i = select i1 %cmp6.1.i.i, i32 %sub7.1.i.i, i32 %sub.1.i.i
  br label %if.end17.1.i.i

if.end17.1.i.i:                                   ; preds = %if.then5.1.i.i, %if.else.1.i.i, %if.end17.i.i.if.end17.1.i.i_crit_edge
  %freq.0.1.i.i = phi i32 [ %cond.1.i.i, %if.then5.1.i.i ], [ %cond16.1.i.i, %if.else.1.i.i ], [ 0, %if.end17.i.i.if.end17.1.i.i_crit_edge ]
  %34 = ptrtoint ptr %arrayidx18.1.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %freq.0.1.i.i, ptr %arrayidx18.1.i.i, align 4
  %35 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @vidtv_valid_dvb_s_freqs, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.2.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.2.i.i, label %if.end17.1.i.i.if.end17.2.i.i_crit_edge, label %if.then.2.i.i

if.end17.1.i.i.if.end17.2.i.i_crit_edge:          ; preds = %if.end17.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.2.i.i

if.then.2.i.i:                                    ; preds = %if.end17.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11700000, i32 %35)
  %cmp4.2.i.i = icmp ult i32 %35, 11700000
  br i1 %cmp4.2.i.i, label %if.then5.2.i.i, label %if.else.2.i.i

if.else.2.i.i:                                    ; preds = %if.then.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub9.2.i.i = add i32 %35, -10600000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub9.2.i.i)
  %cmp11.2.i.i = icmp slt i32 %sub9.2.i.i, 0
  %sub13.2.i.i = sub i32 10600000, %35
  %cond16.2.i.i = select i1 %cmp11.2.i.i, i32 %sub13.2.i.i, i32 %sub9.2.i.i
  br label %if.end17.2.i.i

if.then5.2.i.i:                                   ; preds = %if.then.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.2.i.i = add nsw i32 %35, -9750000
  call void @__sanitizer_cov_trace_const_cmp4(i32 9750000, i32 %35)
  %cmp6.2.i.i = icmp ult i32 %35, 9750000
  %sub7.2.i.i = sub nsw i32 9750000, %35
  %cond.2.i.i = select i1 %cmp6.2.i.i, i32 %sub7.2.i.i, i32 %sub.2.i.i
  br label %if.end17.2.i.i

if.end17.2.i.i:                                   ; preds = %if.then5.2.i.i, %if.else.2.i.i, %if.end17.1.i.i.if.end17.2.i.i_crit_edge
  %freq.0.2.i.i = phi i32 [ %cond.2.i.i, %if.then5.2.i.i ], [ %cond16.2.i.i, %if.else.2.i.i ], [ 0, %if.end17.1.i.i.if.end17.2.i.i_crit_edge ]
  %36 = ptrtoint ptr %arrayidx18.2.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %freq.0.2.i.i, ptr %arrayidx18.2.i.i, align 4
  %37 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @vidtv_valid_dvb_s_freqs, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.3.i.i = icmp eq i32 %37, 0
  br i1 %tobool.not.3.i.i, label %if.end17.2.i.i.if.end17.3.i.i_crit_edge, label %if.then.3.i.i

if.end17.2.i.i.if.end17.3.i.i_crit_edge:          ; preds = %if.end17.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.3.i.i

if.then.3.i.i:                                    ; preds = %if.end17.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11700000, i32 %37)
  %cmp4.3.i.i = icmp ult i32 %37, 11700000
  br i1 %cmp4.3.i.i, label %if.then5.3.i.i, label %if.else.3.i.i

if.else.3.i.i:                                    ; preds = %if.then.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub9.3.i.i = add i32 %37, -10600000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub9.3.i.i)
  %cmp11.3.i.i = icmp slt i32 %sub9.3.i.i, 0
  %sub13.3.i.i = sub i32 10600000, %37
  %cond16.3.i.i = select i1 %cmp11.3.i.i, i32 %sub13.3.i.i, i32 %sub9.3.i.i
  br label %if.end17.3.i.i

if.then5.3.i.i:                                   ; preds = %if.then.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.3.i.i = add nsw i32 %37, -9750000
  call void @__sanitizer_cov_trace_const_cmp4(i32 9750000, i32 %37)
  %cmp6.3.i.i = icmp ult i32 %37, 9750000
  %sub7.3.i.i = sub nsw i32 9750000, %37
  %cond.3.i.i = select i1 %cmp6.3.i.i, i32 %sub7.3.i.i, i32 %sub.3.i.i
  br label %if.end17.3.i.i

if.end17.3.i.i:                                   ; preds = %if.then5.3.i.i, %if.else.3.i.i, %if.end17.2.i.i.if.end17.3.i.i_crit_edge
  %freq.0.3.i.i = phi i32 [ %cond.3.i.i, %if.then5.3.i.i ], [ %cond16.3.i.i, %if.else.3.i.i ], [ 0, %if.end17.2.i.i.if.end17.3.i.i_crit_edge ]
  %38 = ptrtoint ptr %arrayidx18.3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %freq.0.3.i.i, ptr %arrayidx18.3.i.i, align 4
  %39 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @vidtv_valid_dvb_s_freqs, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.4.i.i = icmp eq i32 %39, 0
  br i1 %tobool.not.4.i.i, label %if.end17.3.i.i.if.end17.4.i.i_crit_edge, label %if.then.4.i.i

if.end17.3.i.i.if.end17.4.i.i_crit_edge:          ; preds = %if.end17.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.4.i.i

if.then.4.i.i:                                    ; preds = %if.end17.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11700000, i32 %39)
  %cmp4.4.i.i = icmp ult i32 %39, 11700000
  br i1 %cmp4.4.i.i, label %if.then5.4.i.i, label %if.else.4.i.i

if.else.4.i.i:                                    ; preds = %if.then.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub9.4.i.i = add i32 %39, -10600000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub9.4.i.i)
  %cmp11.4.i.i = icmp slt i32 %sub9.4.i.i, 0
  %sub13.4.i.i = sub i32 10600000, %39
  %cond16.4.i.i = select i1 %cmp11.4.i.i, i32 %sub13.4.i.i, i32 %sub9.4.i.i
  br label %if.end17.4.i.i

if.then5.4.i.i:                                   ; preds = %if.then.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.4.i.i = add nsw i32 %39, -9750000
  call void @__sanitizer_cov_trace_const_cmp4(i32 9750000, i32 %39)
  %cmp6.4.i.i = icmp ult i32 %39, 9750000
  %sub7.4.i.i = sub nsw i32 9750000, %39
  %cond.4.i.i = select i1 %cmp6.4.i.i, i32 %sub7.4.i.i, i32 %sub.4.i.i
  br label %if.end17.4.i.i

if.end17.4.i.i:                                   ; preds = %if.then5.4.i.i, %if.else.4.i.i, %if.end17.3.i.i.if.end17.4.i.i_crit_edge
  %freq.0.4.i.i = phi i32 [ %cond.4.i.i, %if.then5.4.i.i ], [ %cond16.4.i.i, %if.else.4.i.i ], [ 0, %if.end17.3.i.i.if.end17.4.i.i_crit_edge ]
  %40 = ptrtoint ptr %arrayidx18.4.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %freq.0.4.i.i, ptr %arrayidx18.4.i.i, align 4
  %41 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @vidtv_valid_dvb_s_freqs, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.5.i.i = icmp eq i32 %41, 0
  br i1 %tobool.not.5.i.i, label %if.end17.4.i.i.if.end17.5.i.i_crit_edge, label %if.then.5.i.i

if.end17.4.i.i.if.end17.5.i.i_crit_edge:          ; preds = %if.end17.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.5.i.i

if.then.5.i.i:                                    ; preds = %if.end17.4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11700000, i32 %41)
  %cmp4.5.i.i = icmp ult i32 %41, 11700000
  br i1 %cmp4.5.i.i, label %if.then5.5.i.i, label %if.else.5.i.i

if.else.5.i.i:                                    ; preds = %if.then.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub9.5.i.i = add i32 %41, -10600000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub9.5.i.i)
  %cmp11.5.i.i = icmp slt i32 %sub9.5.i.i, 0
  %sub13.5.i.i = sub i32 10600000, %41
  %cond16.5.i.i = select i1 %cmp11.5.i.i, i32 %sub13.5.i.i, i32 %sub9.5.i.i
  br label %if.end17.5.i.i

if.then5.5.i.i:                                   ; preds = %if.then.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.5.i.i = add nsw i32 %41, -9750000
  call void @__sanitizer_cov_trace_const_cmp4(i32 9750000, i32 %41)
  %cmp6.5.i.i = icmp ult i32 %41, 9750000
  %sub7.5.i.i = sub nsw i32 9750000, %41
  %cond.5.i.i = select i1 %cmp6.5.i.i, i32 %sub7.5.i.i, i32 %sub.5.i.i
  br label %if.end17.5.i.i

if.end17.5.i.i:                                   ; preds = %if.then5.5.i.i, %if.else.5.i.i, %if.end17.4.i.i.if.end17.5.i.i_crit_edge
  %freq.0.5.i.i = phi i32 [ %cond.5.i.i, %if.then5.5.i.i ], [ %cond16.5.i.i, %if.else.5.i.i ], [ 0, %if.end17.4.i.i.if.end17.5.i.i_crit_edge ]
  %42 = ptrtoint ptr %arrayidx18.5.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %freq.0.5.i.i, ptr %arrayidx18.5.i.i, align 4
  %43 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @vidtv_valid_dvb_s_freqs, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.6.i.i = icmp eq i32 %43, 0
  br i1 %tobool.not.6.i.i, label %if.end17.5.i.i.if.end17.6.i.i_crit_edge, label %if.then.6.i.i

if.end17.5.i.i.if.end17.6.i.i_crit_edge:          ; preds = %if.end17.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.6.i.i

if.then.6.i.i:                                    ; preds = %if.end17.5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11700000, i32 %43)
  %cmp4.6.i.i = icmp ult i32 %43, 11700000
  br i1 %cmp4.6.i.i, label %if.then5.6.i.i, label %if.else.6.i.i

if.else.6.i.i:                                    ; preds = %if.then.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub9.6.i.i = add i32 %43, -10600000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub9.6.i.i)
  %cmp11.6.i.i = icmp slt i32 %sub9.6.i.i, 0
  %sub13.6.i.i = sub i32 10600000, %43
  %cond16.6.i.i = select i1 %cmp11.6.i.i, i32 %sub13.6.i.i, i32 %sub9.6.i.i
  br label %if.end17.6.i.i

if.then5.6.i.i:                                   ; preds = %if.then.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.6.i.i = add nsw i32 %43, -9750000
  call void @__sanitizer_cov_trace_const_cmp4(i32 9750000, i32 %43)
  %cmp6.6.i.i = icmp ult i32 %43, 9750000
  %sub7.6.i.i = sub nsw i32 9750000, %43
  %cond.6.i.i = select i1 %cmp6.6.i.i, i32 %sub7.6.i.i, i32 %sub.6.i.i
  br label %if.end17.6.i.i

if.end17.6.i.i:                                   ; preds = %if.then5.6.i.i, %if.else.6.i.i, %if.end17.5.i.i.if.end17.6.i.i_crit_edge
  %freq.0.6.i.i = phi i32 [ %cond.6.i.i, %if.then5.6.i.i ], [ %cond16.6.i.i, %if.else.6.i.i ], [ 0, %if.end17.5.i.i.if.end17.6.i.i_crit_edge ]
  %44 = ptrtoint ptr %arrayidx18.6.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %freq.0.6.i.i, ptr %arrayidx18.6.i.i, align 4
  %45 = load i32, ptr getelementptr inbounds ([8 x i32], ptr @vidtv_valid_dvb_s_freqs, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.7.i.i = icmp eq i32 %45, 0
  br i1 %tobool.not.7.i.i, label %if.end17.6.i.i.vidtv_bridge_probe_tuner.exit.i_crit_edge, label %if.then.7.i.i

if.end17.6.i.i.vidtv_bridge_probe_tuner.exit.i_crit_edge: ; preds = %if.end17.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vidtv_bridge_probe_tuner.exit.i

if.then.7.i.i:                                    ; preds = %if.end17.6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11700000, i32 %45)
  %cmp4.7.i.i = icmp ult i32 %45, 11700000
  br i1 %cmp4.7.i.i, label %if.then5.7.i.i, label %if.else.7.i.i

if.else.7.i.i:                                    ; preds = %if.then.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub9.7.i.i = add i32 %45, -10600000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub9.7.i.i)
  %cmp11.7.i.i = icmp slt i32 %sub9.7.i.i, 0
  %sub13.7.i.i = sub i32 10600000, %45
  %cond16.7.i.i = select i1 %cmp11.7.i.i, i32 %sub13.7.i.i, i32 %sub9.7.i.i
  br label %vidtv_bridge_probe_tuner.exit.i

if.then5.7.i.i:                                   ; preds = %if.then.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.7.i.i = add nsw i32 %45, -9750000
  call void @__sanitizer_cov_trace_const_cmp4(i32 9750000, i32 %45)
  %cmp6.7.i.i = icmp ult i32 %45, 9750000
  %sub7.7.i.i = sub nsw i32 9750000, %45
  %cond.7.i.i = select i1 %cmp6.7.i.i, i32 %sub7.7.i.i, i32 %sub.7.i.i
  br label %vidtv_bridge_probe_tuner.exit.i

vidtv_bridge_probe_tuner.exit.i:                  ; preds = %if.then5.7.i.i, %if.else.7.i.i, %if.end17.6.i.i.vidtv_bridge_probe_tuner.exit.i_crit_edge
  %freq.0.7.i.i = phi i32 [ %cond.7.i.i, %if.then5.7.i.i ], [ %cond16.7.i.i, %if.else.7.i.i ], [ 0, %if.end17.6.i.i.vidtv_bridge_probe_tuner.exit.i_crit_edge ]
  %46 = ptrtoint ptr %arrayidx18.7.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %freq.0.7.i.i, ptr %arrayidx18.7.i.i, align 4
  %47 = load i32, ptr @max_frequency_shift_hz, align 4
  %conv.i156.i = trunc i32 %47 to i8
  %48 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv.i156.i, ptr %14, align 4
  %call.i158.i = call ptr @dvb_module_probe(ptr noundef nonnull @.str.15, ptr noundef null, ptr noundef %i2c_adapter1.i.i, i8 noundef zeroext 104, ptr noundef nonnull %cfg.i154.i) #8
  %49 = ptrtoint ptr %i2c_client_tuner.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i158.i, ptr %i2c_client_tuner.i.i, align 4
  %tobool22.not.i.i = icmp eq ptr %call.i158.i, null
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %cfg.i154.i) #8
  br i1 %tobool22.not.i.i, label %vidtv_bridge_probe_tuner.exit.i.for.body66.i_crit_edge, label %if.end13.i

vidtv_bridge_probe_tuner.exit.i.for.body66.i_crit_edge: ; preds = %vidtv_bridge_probe_tuner.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body66.i

if.end13.i:                                       ; preds = %vidtv_bridge_probe_tuner.exit.i
  %50 = ptrtoint ptr %fe.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fe.i.i, align 4
  %call15.i = call i32 @dvb_register_frontend(ptr noundef %adapter.i.i, ptr noundef %51) #8
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %if.end13.i.for.body57.i_crit_edge, label %if.end13.i.for.cond.i_crit_edge

if.end13.i.for.cond.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

if.end13.i.for.body57.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body57.i

for.end.i:                                        ; preds = %for.cond.i
  %demux.i.i = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 3
  %52 = ptrtoint ptr %demux.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 5, ptr %demux.i.i, align 8
  %priv.i.i = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 3, i32 1
  %53 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call7.i.i, ptr %priv.i.i, align 4
  %filternum.i.i = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 3, i32 2
  %54 = ptrtoint ptr %filternum.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 256, ptr %filternum.i.i, align 8
  %feednum.i.i = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 3, i32 3
  %55 = ptrtoint ptr %feednum.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 256, ptr %feednum.i.i, align 4
  %start_feed.i.i = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 3, i32 4
  %56 = ptrtoint ptr %start_feed.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @vidtv_start_feed, ptr %start_feed.i.i, align 8
  %stop_feed.i.i = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 3, i32 5
  %57 = ptrtoint ptr %stop_feed.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @vidtv_stop_feed, ptr %stop_feed.i.i, align 4
  %call.i159.i = call i32 @dvb_dmx_init(ptr noundef %demux.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159.i)
  %cmp20.i = icmp slt i32 %call.i159.i, 0
  br i1 %cmp20.i, label %for.end.i.fail_dmx.i_crit_edge, label %if.end22.i

for.end.i.fail_dmx.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_dmx.i

if.end22.i:                                       ; preds = %for.end.i
  %dmx_dev.i.i = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 4
  %filternum.i160.i = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 4, i32 4
  %58 = ptrtoint ptr %filternum.i160.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 256, ptr %filternum.i160.i, align 8
  %demux2.i.i = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 4, i32 3
  %59 = ptrtoint ptr %demux2.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %demux.i.i, ptr %demux2.i.i, align 4
  %capabilities.i.i = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 4, i32 5
  %60 = ptrtoint ptr %capabilities.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %capabilities.i.i, align 4
  %call.i163.i = call i32 @dvb_dmxdev_init(ptr noundef %dmx_dev.i.i, ptr noundef %adapter.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163.i)
  %cmp24.i = icmp slt i32 %call.i163.i, 0
  br i1 %cmp24.i, label %if.end22.i.fail_dmx_dev.i_crit_edge, label %for.cond27.preheader.i

if.end22.i.fail_dmx_dev.i_crit_edge:              ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_dmx_dev.i

for.cond27.preheader.i:                           ; preds = %if.end22.i
  %connect_frontend.i = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 13
  %dmx_fe.i = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 5
  %61 = ptrtoint ptr %connect_frontend.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %connect_frontend.i, align 4
  %call33.i = call i32 %62(ptr noundef %demux.i.i, ptr noundef %dmx_fe.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.i = icmp slt i32 %call33.i, 0
  br i1 %cmp34.i, label %for.cond27.preheader.i.fail_dmx_dev.i_crit_edge, label %vidtv_bridge_dvb_init.exit.thread

for.cond27.preheader.i.fail_dmx_dev.i_crit_edge:  ; preds = %for.cond27.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_dmx_dev.i

vidtv_bridge_dvb_init.exit.thread:                ; preds = %for.cond27.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %source.i = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %63 = ptrtoint ptr %source.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %source.i, align 8
  br label %do.body

fail_dmx_dev.i:                                   ; preds = %for.cond27.preheader.i.fail_dmx_dev.i_crit_edge, %if.end22.i.fail_dmx_dev.i_crit_edge
  %ret.1.i = phi i32 [ %call.i163.i, %if.end22.i.fail_dmx_dev.i_crit_edge ], [ %call33.i, %for.cond27.preheader.i.fail_dmx_dev.i_crit_edge ]
  call void @dvb_dmxdev_release(ptr noundef %dmx_dev.i.i) #8
  br label %fail_dmx.i

fail_dmx.i:                                       ; preds = %fail_dmx_dev.i, %for.end.i.fail_dmx.i_crit_edge
  %ret.2.i = phi i32 [ %call.i159.i, %for.end.i.fail_dmx.i_crit_edge ], [ %ret.1.i, %fail_dmx_dev.i ]
  call void @dvb_dmx_release(ptr noundef %demux.i.i) #8
  br label %for.body57.i

for.body57.i:                                     ; preds = %fail_dmx.i, %if.end13.i.for.body57.i_crit_edge
  %ret.3.i = phi i32 [ %ret.2.i, %fail_dmx.i ], [ %call15.i, %if.end13.i.for.body57.i_crit_edge ]
  %arrayidx59.i = getelementptr %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 1, i32 %i.0.i
  %64 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx59.i, align 4
  %call60.i = call i32 @dvb_unregister_frontend(ptr noundef %65) #8
  br i1 %cmp5.i, label %for.body57.i.for.body66.i_crit_edge, label %for.body57.i.1

for.body57.i.for.body66.i_crit_edge:              ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body66.i

for.body57.i.1:                                   ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec62.i = add nsw i32 %i.0.i, -1
  %arrayidx59.i.1 = getelementptr %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 1, i32 %dec62.i
  %66 = ptrtoint ptr %arrayidx59.i.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx59.i.1, align 4
  %call60.i.1 = call i32 @dvb_unregister_frontend(ptr noundef %67) #8
  br label %for.body66.i

for.body66.i:                                     ; preds = %for.body57.i.1, %for.body57.i.for.body66.i_crit_edge, %vidtv_bridge_probe_tuner.exit.i.for.body66.i_crit_edge
  %ret.4.i = phi i32 [ %ret.3.i, %for.body57.i.1 ], [ %ret.3.i, %for.body57.i.for.body66.i_crit_edge ], [ -19, %vidtv_bridge_probe_tuner.exit.i.for.body66.i_crit_edge ]
  %arrayidx67.i = getelementptr %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 8, i32 %i.0.i
  %68 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx67.i, align 4
  %tobool.not.i = icmp eq ptr %69, null
  br i1 %tobool.not.i, label %for.body66.i.for.inc72.i_crit_edge, label %if.then68.i

for.body66.i.for.inc72.i_crit_edge:               ; preds = %for.body66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc72.i

if.then68.i:                                      ; preds = %for.body66.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dvb_module_release(ptr noundef nonnull %69) #8
  br label %for.inc72.i

for.inc72.i:                                      ; preds = %if.then68.i, %for.body66.i.for.inc72.i_crit_edge
  br i1 %cmp65.i, label %for.body66.i.1, label %for.inc72.i.for.body77.i_crit_edge

for.inc72.i.for.body77.i_crit_edge:               ; preds = %for.inc72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body77.i

for.body66.i.1:                                   ; preds = %for.inc72.i
  %dec73.i = add nsw i32 %i.0.i, -1
  %arrayidx67.i.1 = getelementptr %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 8, i32 %dec73.i
  %70 = ptrtoint ptr %arrayidx67.i.1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx67.i.1, align 4
  %tobool.not.i.1 = icmp eq ptr %71, null
  br i1 %tobool.not.i.1, label %for.body66.i.1.for.body77.i_crit_edge, label %if.then68.i.1

for.body66.i.1.for.body77.i_crit_edge:            ; preds = %for.body66.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body77.i

if.then68.i.1:                                    ; preds = %for.body66.i.1
  call void @__sanitizer_cov_trace_pc() #10
  call void @dvb_module_release(ptr noundef nonnull %71) #8
  br label %for.body77.i

for.body77.i:                                     ; preds = %if.then68.i.1, %for.body66.i.1.for.body77.i_crit_edge, %for.inc72.i.for.body77.i_crit_edge, %vidtv_bridge_probe_demod.exit.thread.i
  %ret.5.i = phi i32 [ -19, %vidtv_bridge_probe_demod.exit.thread.i ], [ %ret.4.i, %for.body66.i.1.for.body77.i_crit_edge ], [ %ret.4.i, %if.then68.i.1 ], [ %ret.4.i, %for.inc72.i.for.body77.i_crit_edge ]
  %arrayidx78.i = getelementptr %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 7, i32 %i.0.i
  %72 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx78.i, align 4
  %tobool79.not.i = icmp eq ptr %73, null
  br i1 %tobool79.not.i, label %for.body77.i.for.inc84.i_crit_edge, label %if.then80.i

for.body77.i.for.inc84.i_crit_edge:               ; preds = %for.body77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc84.i

if.then80.i:                                      ; preds = %for.body77.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dvb_module_release(ptr noundef nonnull %73) #8
  br label %for.inc84.i

for.inc84.i:                                      ; preds = %if.then80.i, %for.body77.i.for.inc84.i_crit_edge
  br i1 %cmp65.i, label %for.body77.i.1, label %for.inc84.i.vidtv_bridge_dvb_init.exit_crit_edge

for.inc84.i.vidtv_bridge_dvb_init.exit_crit_edge: ; preds = %for.inc84.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vidtv_bridge_dvb_init.exit

for.body77.i.1:                                   ; preds = %for.inc84.i
  %dec85.i = add nsw i32 %i.0.i, -1
  %arrayidx78.i.1 = getelementptr %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 7, i32 %dec85.i
  %74 = ptrtoint ptr %arrayidx78.i.1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx78.i.1, align 4
  %tobool79.not.i.1 = icmp eq ptr %75, null
  br i1 %tobool79.not.i.1, label %for.body77.i.1.vidtv_bridge_dvb_init.exit_crit_edge, label %if.then80.i.1

for.body77.i.1.vidtv_bridge_dvb_init.exit_crit_edge: ; preds = %for.body77.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %vidtv_bridge_dvb_init.exit

if.then80.i.1:                                    ; preds = %for.body77.i.1
  call void @__sanitizer_cov_trace_pc() #10
  call void @dvb_module_release(ptr noundef nonnull %75) #8
  br label %vidtv_bridge_dvb_init.exit

vidtv_bridge_dvb_init.exit:                       ; preds = %if.then80.i.1, %for.body77.i.1.vidtv_bridge_dvb_init.exit_crit_edge, %for.inc84.i.vidtv_bridge_dvb_init.exit_crit_edge, %if.end.i.vidtv_bridge_dvb_init.exit_crit_edge
  %ret.6.i = phi i32 [ %call.i152.i, %if.end.i.vidtv_bridge_dvb_init.exit_crit_edge ], [ %ret.5.i, %for.body77.i.1.vidtv_bridge_dvb_init.exit_crit_edge ], [ %ret.5.i, %if.then80.i.1 ], [ %ret.5.i, %for.inc84.i.vidtv_bridge_dvb_init.exit_crit_edge ]
  %call88.i = call i32 @dvb_unregister_adapter(ptr noundef %adapter.i.i) #8
  call void @i2c_del_adapter(ptr noundef %i2c_adapter1.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.6.i)
  %cmp = icmp slt i32 %ret.6.i, 0
  br i1 %cmp, label %vidtv_bridge_dvb_init.exit.err_dvb_crit_edge, label %vidtv_bridge_dvb_init.exit.do.body_crit_edge

vidtv_bridge_dvb_init.exit.do.body_crit_edge:     ; preds = %vidtv_bridge_dvb_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

vidtv_bridge_dvb_init.exit.err_dvb_crit_edge:     ; preds = %vidtv_bridge_dvb_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_dvb

do.body:                                          ; preds = %vidtv_bridge_dvb_init.exit.do.body_crit_edge, %vidtv_bridge_dvb_init.exit.thread
  %feed_lock = getelementptr inbounds %struct.vidtv_dvb, ptr %call7.i.i, i32 0, i32 10
  call void @__mutex_init(ptr noundef %feed_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @vidtv_bridge_probe.__key) #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %76 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call13 = call i32 @__media_device_register(ptr noundef %mdev, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.end24, label %do.end18

do.end18:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mdev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.3, i32 noundef %call13) #12
  call void @media_device_cleanup(ptr noundef %mdev) #8
  br label %err_dvb

do.end24:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9) #12
  br label %cleanup

err_dvb:                                          ; preds = %do.end18, %vidtv_bridge_dvb_init.exit.err_dvb_crit_edge, %vidtv_bridge_dvb_init.exit.thread49
  %ret.0 = phi i32 [ %ret.6.i, %vidtv_bridge_dvb_init.exit.err_dvb_crit_edge ], [ %call13, %do.end18 ], [ %call4.i.i, %vidtv_bridge_dvb_init.exit.thread49 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_dvb, %do.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_dvb ], [ 0, %do.end24 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidtv_bridge_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mdev = getelementptr inbounds %struct.vidtv_dvb, ptr %1, i32 0, i32 13
  tail call void @media_device_unregister(ptr noundef %mdev) #8
  tail call void @media_device_cleanup(ptr noundef %mdev) #8
  %feed_lock = getelementptr inbounds %struct.vidtv_dvb, ptr %1, i32 0, i32 10
  tail call void @mutex_destroy(ptr noundef %feed_lock) #8
  %fe = getelementptr inbounds %struct.vidtv_dvb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fe, align 4
  %call2 = tail call i32 @dvb_unregister_frontend(ptr noundef %3) #8
  %i2c_client_tuner = getelementptr inbounds %struct.vidtv_dvb, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_client_tuner, align 4
  tail call void @dvb_module_release(ptr noundef %5) #8
  %i2c_client_demod = getelementptr inbounds %struct.vidtv_dvb, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_client_demod, align 4
  tail call void @dvb_module_release(ptr noundef %7) #8
  %dmx_dev = getelementptr inbounds %struct.vidtv_dvb, ptr %1, i32 0, i32 4
  tail call void @dvb_dmxdev_release(ptr noundef %dmx_dev) #8
  %demux = getelementptr inbounds %struct.vidtv_dvb, ptr %1, i32 0, i32 3
  tail call void @dvb_dmx_release(ptr noundef %demux) #8
  %adapter = getelementptr inbounds %struct.vidtv_dvb, ptr %1, i32 0, i32 2
  %call5 = tail call i32 @dvb_unregister_adapter(ptr noundef %adapter) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.24) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmxdev_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_module_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidtv_master_xfer(ptr nocapture noundef readnone %i2c_adap, ptr nocapture noundef readnone %msgs, i32 noundef %num) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidtv_i2c_func(ptr nocapture noundef readnone %adapter) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_adapter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dvb_module_probe(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidtv_start_feed(ptr nocapture noundef readonly %feed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demux1 = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux1, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %frontend = getelementptr inbounds %struct.dmx_demux, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %frontend, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %feed_lock = getelementptr inbounds %struct.vidtv_dvb, ptr %3, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %feed_lock, i32 noundef 0) #8
  %nfeeds = getelementptr inbounds %struct.vidtv_dvb, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %nfeeds to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nfeeds, align 8
  %inc = add i32 %7, 1
  store i32 %inc, ptr %nfeeds, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then4, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @vidtv_start_streaming(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp5, i32 %call, i32 1
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %rc.0 = phi i32 [ %inc, %if.end.if.end8_crit_edge ], [ %spec.select, %if.then4 ]
  tail call void @mutex_unlock(ptr noundef %feed_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidtv_stop_feed(ptr nocapture noundef readonly %feed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demux1 = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux1, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %feed_lock = getelementptr inbounds %struct.vidtv_dvb, ptr %3, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %feed_lock, i32 noundef 0) #8
  %nfeeds = getelementptr inbounds %struct.vidtv_dvb, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %nfeeds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nfeeds, align 8
  %dec = add i32 %5, -1
  store i32 %dec, ptr %nfeeds, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %streaming.i = getelementptr inbounds %struct.vidtv_dvb, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %streaming.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %streaming.i, align 8
  %mux.i = getelementptr inbounds %struct.vidtv_dvb, ptr %3, i32 0, i32 12
  %9 = ptrtoint ptr %mux.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mux.i, align 4
  tail call void @vidtv_mux_stop_thread(ptr noundef %10) #8
  %11 = ptrtoint ptr %mux.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mux.i, align 4
  tail call void @vidtv_mux_destroy(ptr noundef %12) #8
  %13 = ptrtoint ptr %mux.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %mux.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidtv_stop_streaming.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidtv_stop_feed, %land.lhs.true.i)) #8
          to label %if.end [label %land.lhs.true.i], !srcloc !196

land.lhs.true.i:                                  ; preds = %if.then
  %call6.i = tail call i32 @___ratelimit(ptr noundef nonnull @vidtv_stop_streaming._rs, ptr noundef nonnull @.str.22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.if.end_crit_edge, label %if.then.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vidtv_stop_streaming.descriptor, ptr noundef %dev1.i, ptr noundef nonnull @.str.23) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.lhs.true.i.if.end_crit_edge, %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %feed_lock) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmx_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vidtv_start_streaming(ptr noundef %dvb) unnamed_addr #2 align 64 {
entry:
  %mux_args = alloca %struct.vidtv_mux_init_args, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %mux_args) #8
  %0 = getelementptr inbounds i8, ptr %mux_args, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  %2 = load i32, ptr @mux_rate_kbytes_sec, align 4
  %3 = ptrtoint ptr %mux_args to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %mux_args, align 8
  %on_new_packets_available_cb = getelementptr inbounds %struct.vidtv_mux_init_args, ptr %mux_args, i32 0, i32 1
  %4 = ptrtoint ptr %on_new_packets_available_cb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @vidtv_bridge_on_new_pkts_avail, ptr %on_new_packets_available_cb, align 4
  %mux_buf_sz = getelementptr inbounds %struct.vidtv_mux_init_args, ptr %mux_args, i32 0, i32 2
  %pcr_period_usecs = getelementptr inbounds %struct.vidtv_mux_init_args, ptr %mux_args, i32 0, i32 3
  %5 = load i32, ptr @pcr_period_msec, align 4
  %mul = mul i32 %5, 1000
  %conv = zext i32 %mul to i64
  %6 = ptrtoint ptr %pcr_period_usecs to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %pcr_period_usecs, align 8
  %si_period_usecs = getelementptr inbounds %struct.vidtv_mux_init_args, ptr %mux_args, i32 0, i32 4
  %7 = load i32, ptr @si_period_msec, align 4
  %mul1 = mul i32 %7, 1000
  %conv2 = zext i32 %mul1 to i64
  %8 = ptrtoint ptr %si_period_usecs to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv2, ptr %si_period_usecs, align 8
  %pcr_pid = getelementptr inbounds %struct.vidtv_mux_init_args, ptr %mux_args, i32 0, i32 5
  %9 = load i32, ptr @pcr_pid, align 4
  %conv3 = trunc i32 %9 to i16
  %10 = ptrtoint ptr %pcr_pid to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv3, ptr %pcr_pid, align 8
  %transport_stream_id = getelementptr inbounds %struct.vidtv_mux_init_args, ptr %mux_args, i32 0, i32 6
  %11 = ptrtoint ptr %transport_stream_id to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 16513, ptr %transport_stream_id, align 2
  %channels = getelementptr inbounds %struct.vidtv_mux_init_args, ptr %mux_args, i32 0, i32 7
  %12 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %channels, align 4
  %network_id = getelementptr inbounds %struct.vidtv_mux_init_args, ptr %mux_args, i32 0, i32 8
  %13 = ptrtoint ptr %network_id to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -188, ptr %network_id, align 8
  %network_name = getelementptr inbounds %struct.vidtv_mux_init_args, ptr %mux_args, i32 0, i32 9
  %14 = ptrtoint ptr %network_name to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.16, ptr %network_name, align 4
  %priv = getelementptr inbounds %struct.vidtv_mux_init_args, ptr %mux_args, i32 0, i32 10
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dvb, ptr %priv, align 8
  %16 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dvb, align 8
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %streaming = getelementptr inbounds %struct.vidtv_dvb, ptr %dvb, i32 0, i32 11
  %18 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %streaming, align 8, !range !197
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %if.end11, label %do.body

do.body:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @vidtv_start_streaming._rs, ptr noundef nonnull @__func__.vidtv_start_streaming) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4, ptr noundef nonnull @.str.18) #12
  br label %cleanup

if.end11:                                         ; preds = %entry
  %20 = load i32, ptr @mux_buf_sz_pkts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool12.not = icmp eq i32 %20, 0
  br i1 %tobool12.not, label %if.else, label %if.end11.if.end15_crit_edge

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %mul1.i = mul i32 %2, 20
  %add.i = add i32 %mul1.i, 187
  %21 = urem i32 %add.i, 188
  %mul2.i = sub i32 %add.i, %21
  %div3.i = udiv i32 %mul2.i, 10
  %add4.i = add i32 %div3.i, %mul2.i
  %22 = tail call i32 @llvm.umax.i32(i32 %add4.i, i32 90164) #8
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 901640) #8
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.end11.if.end15_crit_edge
  %mux_buf_sz5.0 = phi i32 [ %23, %if.else ], [ %20, %if.end11.if.end15_crit_edge ]
  %24 = ptrtoint ptr %mux_buf_sz to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mux_buf_sz5.0, ptr %mux_buf_sz, align 8
  %25 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %streaming, align 8
  %fe = getelementptr inbounds %struct.vidtv_dvb, ptr %dvb, i32 0, i32 1
  %26 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fe, align 4
  %call18 = call ptr @vidtv_mux_init(ptr noundef %27, ptr noundef %dev4, ptr noundef nonnull %mux_args) #8
  %mux = getelementptr inbounds %struct.vidtv_dvb, ptr %dvb, i32 0, i32 12
  %28 = ptrtoint ptr %mux to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call18, ptr %mux, align 4
  %tobool20.not = icmp eq ptr %call18, null
  br i1 %tobool20.not, label %if.end15.cleanup_crit_edge, label %if.end22

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  call void @vidtv_mux_start_thread(ptr noundef nonnull %call18) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vidtv_start_streaming.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vidtv_start_streaming, %land.lhs.true)) #8
          to label %cleanup [label %land.lhs.true], !srcloc !196

land.lhs.true:                                    ; preds = %if.end22
  %call29 = call i32 @___ratelimit(ptr noundef nonnull @vidtv_start_streaming._rs.20, ptr noundef nonnull @__func__.vidtv_start_streaming) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true.cleanup_crit_edge, label %if.then31

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vidtv_start_streaming.descriptor, ptr noundef %dev4, ptr noundef nonnull @.str.21) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %land.lhs.true.cleanup_crit_edge, %if.end22, %if.end15.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ], [ 0, %if.then31 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end22 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %mux_args) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vidtv_bridge_on_new_pkts_avail(ptr noundef %priv, ptr noundef %buf, i32 noundef %npkts) #2 align 64 {
entry:
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #8
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status.i, align 4, !annotation !198
  %fe.i = getelementptr inbounds %struct.vidtv_dvb, ptr %priv, i32 0, i32 1
  %1 = ptrtoint ptr %fe.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fe.i, align 4
  %read_status.i = getelementptr inbounds %struct.dvb_frontend, ptr %2, i32 0, i32 1, i32 15
  %3 = ptrtoint ptr %read_status.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_status.i, align 4
  %call.i = call i32 %4(ptr noundef %2, ptr noundef nonnull %status.i) #8
  %5 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %6)
  %cmp.i = icmp eq i32 %6, 31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #8
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %demux = getelementptr inbounds %struct.vidtv_dvb, ptr %priv, i32 0, i32 3
  call void @dvb_dmx_swfilter_packets(ptr noundef %demux, ptr noundef %buf, i32 noundef %npkts) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vidtv_mux_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vidtv_mux_start_thread(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter_packets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vidtv_mux_stop_thread(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vidtv_mux_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmxdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vidtv_bridge_dev_release(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !43, !44, !46, !47, !49, !51, !52, !54, !56, !57, !59, !61, !62, !64, !66, !67, !69, !71, !73, !75, !77, !79, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !98, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !115, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !133, !135, !137, !138, !140, !141, !142, !143, !144, !145, !146, !148, !149, !150, !151, !153, !155, !157, !159, !161, !163, !165, !166, !167, !168, !169, !170, !171, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !185}
!llvm.module.flags = !{!187, !188, !189, !190, !191, !192, !193, !194}
!llvm.ident = !{!195}

!0 = !{ptr @__param_drop_tslock_prob_on_low_snr, !1, !"__param_drop_tslock_prob_on_low_snr", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 48, i32 1}
!2 = !{ptr @__UNIQUE_ID_drop_tslock_prob_on_low_snrtype296, !1, !"__UNIQUE_ID_drop_tslock_prob_on_low_snrtype296", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_drop_tslock_prob_on_low_snr297, !4, !"__UNIQUE_ID_drop_tslock_prob_on_low_snr297", i1 false, i1 false}
!4 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 49, i32 1}
!5 = !{ptr @__param_recover_tslock_prob_on_good_snr, !6, !"__param_recover_tslock_prob_on_good_snr", i1 false, i1 false}
!6 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 53, i32 1}
!7 = !{ptr @__UNIQUE_ID_recover_tslock_prob_on_good_snrtype298, !6, !"__UNIQUE_ID_recover_tslock_prob_on_good_snrtype298", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_recover_tslock_prob_on_good_snr299, !9, !"__UNIQUE_ID_recover_tslock_prob_on_good_snr299", i1 false, i1 false}
!9 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 54, i32 1}
!10 = !{ptr @__param_mock_power_up_delay_msec, !11, !"__param_mock_power_up_delay_msec", i1 false, i1 false}
!11 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 58, i32 1}
!12 = !{ptr @__UNIQUE_ID_mock_power_up_delay_msectype300, !11, !"__UNIQUE_ID_mock_power_up_delay_msectype300", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_mock_power_up_delay_msec301, !14, !"__UNIQUE_ID_mock_power_up_delay_msec301", i1 false, i1 false}
!14 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 59, i32 1}
!15 = !{ptr @__param_mock_tune_delay_msec, !16, !"__param_mock_tune_delay_msec", i1 false, i1 false}
!16 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 62, i32 1}
!17 = !{ptr @__UNIQUE_ID_mock_tune_delay_msectype302, !16, !"__UNIQUE_ID_mock_tune_delay_msectype302", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_mock_tune_delay_msec303, !19, !"__UNIQUE_ID_mock_tune_delay_msec303", i1 false, i1 false}
!19 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 63, i32 1}
!20 = !{ptr @__param_vidtv_valid_dvb_t_freqs, !21, !"__param_vidtv_valid_dvb_t_freqs", i1 false, i1 false}
!21 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 69, i32 1}
!22 = !{ptr @__UNIQUE_ID_vidtv_valid_dvb_t_freqstype304, !21, !"__UNIQUE_ID_vidtv_valid_dvb_t_freqstype304", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_vidtv_valid_dvb_t_freqs305, !24, !"__UNIQUE_ID_vidtv_valid_dvb_t_freqs305", i1 false, i1 false}
!24 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 70, i32 1}
!25 = !{ptr @__param_vidtv_valid_dvb_c_freqs, !26, !"__param_vidtv_valid_dvb_c_freqs", i1 false, i1 false}
!26 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 77, i32 1}
!27 = !{ptr @__UNIQUE_ID_vidtv_valid_dvb_c_freqstype306, !26, !"__UNIQUE_ID_vidtv_valid_dvb_c_freqstype306", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_vidtv_valid_dvb_c_freqs307, !29, !"__UNIQUE_ID_vidtv_valid_dvb_c_freqs307", i1 false, i1 false}
!29 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 78, i32 1}
!30 = !{ptr @__param_vidtv_valid_dvb_s_freqs, !31, !"__param_vidtv_valid_dvb_s_freqs", i1 false, i1 false}
!31 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 84, i32 1}
!32 = !{ptr @__UNIQUE_ID_vidtv_valid_dvb_s_freqstype308, !31, !"__UNIQUE_ID_vidtv_valid_dvb_s_freqstype308", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_vidtv_valid_dvb_s_freqs309, !34, !"__UNIQUE_ID_vidtv_valid_dvb_s_freqs309", i1 false, i1 false}
!34 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 85, i32 1}
!35 = !{ptr @__param_max_frequency_shift_hz, !36, !"__param_max_frequency_shift_hz", i1 false, i1 false}
!36 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 89, i32 1}
!37 = !{ptr @__UNIQUE_ID_max_frequency_shift_hztype310, !36, !"__UNIQUE_ID_max_frequency_shift_hztype310", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_max_frequency_shift_hz311, !39, !"__UNIQUE_ID_max_frequency_shift_hz311", i1 false, i1 false}
!39 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 90, i32 1}
!40 = !{ptr @__param_adapter_nums, !41, !"__param_adapter_nums", i1 false, i1 false}
!41 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 93, i32 1}
!42 = !{ptr @__UNIQUE_ID_adapter_numstype312, !41, !"__UNIQUE_ID_adapter_numstype312", i1 false, i1 false}
!43 = !{ptr @__UNIQUE_ID_adapter_nums313, !41, !"__UNIQUE_ID_adapter_nums313", i1 false, i1 false}
!44 = !{ptr @__param_si_period_msec, !45, !"__param_si_period_msec", i1 false, i1 false}
!45 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 99, i32 1}
!46 = !{ptr @__UNIQUE_ID_si_period_msectype314, !45, !"__UNIQUE_ID_si_period_msectype314", i1 false, i1 false}
!47 = !{ptr @__UNIQUE_ID_si_period_msec315, !48, !"__UNIQUE_ID_si_period_msec315", i1 false, i1 false}
!48 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 100, i32 1}
!49 = !{ptr @__param_pcr_period_msec, !50, !"__param_pcr_period_msec", i1 false, i1 false}
!50 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 103, i32 1}
!51 = !{ptr @__UNIQUE_ID_pcr_period_msectype316, !50, !"__UNIQUE_ID_pcr_period_msectype316", i1 false, i1 false}
!52 = !{ptr @__UNIQUE_ID_pcr_period_msec317, !53, !"__UNIQUE_ID_pcr_period_msec317", i1 false, i1 false}
!53 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 104, i32 1}
!54 = !{ptr @__param_mux_rate_kbytes_sec, !55, !"__param_mux_rate_kbytes_sec", i1 false, i1 false}
!55 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 108, i32 1}
!56 = !{ptr @__UNIQUE_ID_mux_rate_kbytes_sectype318, !55, !"__UNIQUE_ID_mux_rate_kbytes_sectype318", i1 false, i1 false}
!57 = !{ptr @__UNIQUE_ID_mux_rate_kbytes_sec319, !58, !"__UNIQUE_ID_mux_rate_kbytes_sec319", i1 false, i1 false}
!58 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 109, i32 1}
!59 = !{ptr @__param_pcr_pid, !60, !"__param_pcr_pid", i1 false, i1 false}
!60 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 112, i32 1}
!61 = !{ptr @__UNIQUE_ID_pcr_pidtype320, !60, !"__UNIQUE_ID_pcr_pidtype320", i1 false, i1 false}
!62 = !{ptr @__UNIQUE_ID_pcr_pid321, !63, !"__UNIQUE_ID_pcr_pid321", i1 false, i1 false}
!63 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 113, i32 1}
!64 = !{ptr @__param_mux_buf_sz_pkts, !65, !"__param_mux_buf_sz_pkts", i1 false, i1 false}
!65 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 116, i32 1}
!66 = !{ptr @__UNIQUE_ID_mux_buf_sz_pktstype322, !65, !"__UNIQUE_ID_mux_buf_sz_pktstype322", i1 false, i1 false}
!67 = !{ptr @__UNIQUE_ID_mux_buf_sz_pkts323, !68, !"__UNIQUE_ID_mux_buf_sz_pkts323", i1 false, i1 false}
!68 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 117, i32 1}
!69 = !{ptr @__initcall__kmod_dvb_vidtv_bridge__324_607_vidtv_bridge_init6, !70, !"__initcall__kmod_dvb_vidtv_bridge__324_607_vidtv_bridge_init6", i1 false, i1 false}
!70 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 607, i32 1}
!71 = !{ptr @__exitcall_vidtv_bridge_exit, !72, !"__exitcall_vidtv_bridge_exit", i1 false, i1 false}
!72 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 608, i32 1}
!73 = !{ptr @__UNIQUE_ID_description325, !74, !"__UNIQUE_ID_description325", i1 false, i1 false}
!74 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 610, i32 1}
!75 = !{ptr @__UNIQUE_ID_author326, !76, !"__UNIQUE_ID_author326", i1 false, i1 false}
!76 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 611, i32 1}
!77 = !{ptr @__UNIQUE_ID_file327, !78, !"__UNIQUE_ID_file327", i1 false, i1 false}
!78 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 612, i32 1}
!79 = !{ptr @__UNIQUE_ID_license328, !78, !"__UNIQUE_ID_license328", i1 false, i1 false}
!80 = !{ptr @__UNIQUE_ID_alias329, !81, !"__UNIQUE_ID_alias329", i1 false, i1 false}
!81 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 613, i32 1}
!82 = !{ptr @__UNIQUE_ID_alias330, !83, !"__UNIQUE_ID_alias330", i1 false, i1 false}
!83 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 614, i32 1}
!84 = !{ptr @drop_tslock_prob_on_low_snr, !85, !"drop_tslock_prob_on_low_snr", i1 false, i1 false}
!85 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 47, i32 21}
!86 = !{ptr @recover_tslock_prob_on_good_snr, !87, !"recover_tslock_prob_on_good_snr", i1 false, i1 false}
!87 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 52, i32 21}
!88 = !{ptr @mock_power_up_delay_msec, !89, !"mock_power_up_delay_msec", i1 false, i1 false}
!89 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 57, i32 21}
!90 = !{ptr @mock_tune_delay_msec, !91, !"mock_tune_delay_msec", i1 false, i1 false}
!91 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 61, i32 21}
!92 = !{ptr @max_frequency_shift_hz, !93, !"max_frequency_shift_hz", i1 false, i1 false}
!93 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 88, i32 21}
!94 = !{ptr @mux_buf_sz_pkts, !95, !"mux_buf_sz_pkts", i1 false, i1 false}
!95 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 115, i32 21}
!96 = !{ptr @__param_str_drop_tslock_prob_on_low_snr, !1, !"__param_str_drop_tslock_prob_on_low_snr", i1 false, i1 false}
!97 = !{ptr @__param_str_recover_tslock_prob_on_good_snr, !6, !"__param_str_recover_tslock_prob_on_good_snr", i1 false, i1 false}
!98 = !{ptr @__param_str_mock_power_up_delay_msec, !11, !"__param_str_mock_power_up_delay_msec", i1 false, i1 false}
!99 = !{ptr @__param_str_mock_tune_delay_msec, !16, !"__param_str_mock_tune_delay_msec", i1 false, i1 false}
!100 = !{ptr @__param_str_vidtv_valid_dvb_t_freqs, !21, !"__param_str_vidtv_valid_dvb_t_freqs", i1 false, i1 false}
!101 = !{ptr @__param_arr_vidtv_valid_dvb_t_freqs, !21, !"__param_arr_vidtv_valid_dvb_t_freqs", i1 false, i1 false}
!102 = !{ptr @vidtv_valid_dvb_t_freqs, !103, !"vidtv_valid_dvb_t_freqs", i1 false, i1 false}
!103 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 65, i32 21}
!104 = !{ptr @__param_str_vidtv_valid_dvb_c_freqs, !26, !"__param_str_vidtv_valid_dvb_c_freqs", i1 false, i1 false}
!105 = !{ptr @__param_arr_vidtv_valid_dvb_c_freqs, !26, !"__param_arr_vidtv_valid_dvb_c_freqs", i1 false, i1 false}
!106 = !{ptr @vidtv_valid_dvb_c_freqs, !107, !"vidtv_valid_dvb_c_freqs", i1 false, i1 false}
!107 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 73, i32 21}
!108 = !{ptr @__param_str_vidtv_valid_dvb_s_freqs, !31, !"__param_str_vidtv_valid_dvb_s_freqs", i1 false, i1 false}
!109 = !{ptr @__param_arr_vidtv_valid_dvb_s_freqs, !31, !"__param_arr_vidtv_valid_dvb_s_freqs", i1 false, i1 false}
!110 = !{ptr @vidtv_valid_dvb_s_freqs, !111, !"vidtv_valid_dvb_s_freqs", i1 false, i1 false}
!111 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 81, i32 21}
!112 = !{ptr @__param_str_max_frequency_shift_hz, !36, !"__param_str_max_frequency_shift_hz", i1 false, i1 false}
!113 = !{ptr @__param_str_adapter_nums, !41, !"__param_str_adapter_nums", i1 false, i1 false}
!114 = !{ptr @__param_arr_adapter_nums, !41, !"__param_arr_adapter_nums", i1 false, i1 false}
!115 = !{ptr @adapter_nums, !41, !"adapter_nums", i1 false, i1 false}
!116 = !{ptr @__param_str_si_period_msec, !45, !"__param_str_si_period_msec", i1 false, i1 false}
!117 = !{ptr @si_period_msec, !118, !"si_period_msec", i1 false, i1 false}
!118 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 98, i32 21}
!119 = !{ptr @__param_str_pcr_period_msec, !50, !"__param_str_pcr_period_msec", i1 false, i1 false}
!120 = !{ptr @pcr_period_msec, !121, !"pcr_period_msec", i1 false, i1 false}
!121 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 102, i32 21}
!122 = !{ptr @__param_str_mux_rate_kbytes_sec, !55, !"__param_str_mux_rate_kbytes_sec", i1 false, i1 false}
!123 = !{ptr @mux_rate_kbytes_sec, !124, !"mux_rate_kbytes_sec", i1 false, i1 false}
!124 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 107, i32 21}
!125 = !{ptr @__param_str_pcr_pid, !60, !"__param_str_pcr_pid", i1 false, i1 false}
!126 = !{ptr @pcr_pid, !127, !"pcr_pid", i1 false, i1 false}
!127 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 111, i32 21}
!128 = !{ptr @__param_str_mux_buf_sz_pkts, !65, !"__param_str_mux_buf_sz_pkts", i1 false, i1 false}
!129 = !{ptr @.str, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 580, i32 11}
!131 = !{ptr @vidtv_bridge_driver, !132, !"vidtv_bridge_driver", i1 false, i1 false}
!132 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 578, i32 31}
!133 = !{ptr @.str.1, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 503, i32 30}
!135 = !{ptr @vidtv_bridge_probe.__key, !136, !"__key", i1 false, i1 false}
!136 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 512, i32 2}
!137 = !{ptr @.str.2, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.3, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 519, i32 3}
!140 = !{ptr @.str.4, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.5, !139, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.6, !139, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.7, !139, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @vidtv_bridge_probe._entry, !139, !"_entry", i1 false, i1 false}
!145 = !{ptr @vidtv_bridge_probe._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.9, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 525, i32 2}
!148 = !{ptr @.str.10, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @vidtv_bridge_probe._entry.8, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @vidtv_bridge_probe._entry_ptr.11, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.12, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 292, i32 29}
!153 = !{ptr @vidtv_i2c_algorithm, !154, !"vidtv_i2c_algorithm", i1 false, i1 false}
!154 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 283, i32 35}
!155 = !{ptr @.str.13, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 309, i32 8}
!157 = !{ptr @.str.14, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 346, i32 46}
!159 = !{ptr @.str.15, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 399, i32 46}
!161 = !{ptr @.str.16, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 176, i32 34}
!163 = !{ptr @.str.17, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 183, i32 3}
!165 = !{ptr @vidtv_start_streaming._rs, !164, !"_rs", i1 false, i1 false}
!166 = !{ptr @__func__.vidtv_start_streaming, !164, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.18, !164, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.19, !164, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @vidtv_start_streaming._entry, !164, !"_entry", i1 false, i1 false}
!170 = !{ptr @vidtv_start_streaming._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @vidtv_start_streaming._rs.20, !172, !"_rs", i1 false, i1 false}
!172 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 200, i32 2}
!173 = !{ptr @.str.21, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @vidtv_start_streaming.descriptor, !172, !"descriptor", i1 false, i1 false}
!175 = !{ptr @vidtv_stop_streaming._rs, !176, !"_rs", i1 false, i1 false}
!176 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 213, i32 2}
!177 = !{ptr @.str.22, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.23, !176, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @vidtv_stop_streaming.descriptor, !176, !"descriptor", i1 false, i1 false}
!180 = !{ptr @.str.24, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 560, i32 2}
!182 = !{ptr @.str.25, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @vidtv_bridge_remove._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @vidtv_bridge_remove._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @vidtv_bridge_dev, !186, !"vidtv_bridge_dev", i1 false, i1 false}
!186 = !{!"../drivers/media/test-drivers/vidtv/vidtv_bridge.c", i32 573, i32 31}
!187 = !{i32 1, !"wchar_size", i32 2}
!188 = !{i32 1, !"min_enum_size", i32 4}
!189 = !{i32 8, !"branch-target-enforcement", i32 0}
!190 = !{i32 8, !"sign-return-address", i32 0}
!191 = !{i32 8, !"sign-return-address-all", i32 0}
!192 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!193 = !{i32 7, !"uwtable", i32 1}
!194 = !{i32 7, !"frame-pointer", i32 2}
!195 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!196 = !{i64 2148257445, i64 2148257450, i64 2148257463, i64 2148257507, i64 2148257541, i64 2148257562}
!197 = !{i8 0, i8 2}
!198 = !{!"auto-init"}
