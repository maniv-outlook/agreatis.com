<?php
/**
 * Class: Jet_Blog_Posts_Navigation
 * Name: Posts Navigation
 * Slug: jet-blog-posts-navigation
 */

namespace Elementor;

use Elementor\Controls_Manager;
use Elementor\Group_Control_Border;
use Elementor\Group_Control_Box_Shadow;
use Elementor\Group_Control_Typography;
use Elementor\Repeater;
use Elementor\Scheme_Color;
use Elementor\Scheme_Typography;
use Elementor\Widget_Base;
use Elementor\Utils;

if ( ! defined( 'ABSPATH' ) ) exit; // Exit if accessed directly

class Jet_Blog_Posts_Navigation extends Jet_Blog_Base {

	public function get_name() {
		return 'jet-blog-posts-navigation';
	}

	public function get_title() {
		return esc_html__( 'Posts Navigation', 'jet-blog' );
	}

	public function get_icon() {
		return 'jet-blog-icon-posts-navigation';
	}

	public function get_jet_help_url() {
		return 'https://crocoblock.com/knowledge-base/article-category/jet-blog/';
	}

	public function get_categories() {
		return array( 'cherry' );
	}

	public function get_style_depends() {
		return array( 'elementor-icons-fa-solid' );
	}

	protected function _register_controls() {

		$this->start_controls_section(
			'section_general',
			array(
				'label' => esc_html__( 'Items', 'jet-blog' ),
			)
		);

		$this->add_control(
			'info_notice',
			array(
				'type' => Controls_Manager::RAW_HTML,
				'raw'  => esc_html__( 'Works only with main Query object.', 'jet-blog' )
			)
		);

		$this->add_control(
			'show_post_title',
			array(
				'label'        => esc_html__( 'Show Post Title', 'jet-blog' ),
				'type'         => Controls_Manager::SWITCHER,
				'label_on'     => esc_html__( 'Yes', 'jet-blog' ),
				'label_off'    => esc_html__( 'No', 'jet-blog' ),
				'return_value' => 'yes',
				'default'      => '',
			)
		);

		$this->add_control(
			'title_length',
			array(
				'label'       => esc_html__( 'Post Title Max Length (Words)', 'jet-blog' ),
				'description' => esc_html__( 'Set 0 to show full title', 'jet-blog' ),
				'type'        => Controls_Manager::NUMBER,
				'default'     => 0,
				'min'         => 0,
				'max'         => 15,
				'step'        => 1,
				'condition' => array(
					'show_post_title' => 'yes',
				),
			)
		);

		$this->add_control(
			'excerpt_trimmed_ending',
			array(
				'label'   => esc_html__( 'Excerpt Trimmed Ending', 'jet-blog' ),
				'type'    => Controls_Manager::TEXT,
				'default' => '...',
				'condition' => array(
					'show_post_title' => 'yes',
				),
			)
		);

		$this->add_control(
			'prev_text',
			array(
				'label'       => esc_html__( 'The older posts link text', 'jet-blog' ),
				'label_block' => true,
				'type'        => Controls_Manager::TEXT,
				'default'     => esc_html__( 'Older posts', 'jet-blog' ),
				'condition' => array(
					'show_post_title' => '',
				),
			)
		);

		$this->add_control(
			'prev_icon',
			array(
				'type'      => Controls_Manager::SELECT,
				'label'     => esc_html__( 'The older posts link icon', 'jet-blog' ),
				'default'   => 'fa fa-angle-left',
				'options'   => jet_blog_tools()->get_available_prev_arrows_list(),
			)
		);

		$this->add_control(
			'next_text',
			array(
				'label'       => esc_html__( 'The newer posts text', 'jet-blog' ),
				'label_block' => true,
				'type'        => Controls_Manager::TEXT,
				'default'     => esc_html__( 'Newer posts', 'jet-blog' ),
				'condition' => array(
					'show_post_title' => '',
				),
			)
		);

		$this->add_control(
			'next_icon',
			array(
				'type'      => Controls_Manager::SELECT,
				'label'     => esc_html__( 'The newer posts link icon', 'jet-blog' ),
				'default'   => 'fa fa-angle-left',
				'options'   => jet_blog_tools()->get_available_prev_arrows_list(),
			)
		);

		$this->end_controls_section();

		$this->__start_controls_section(
			'items_style',
			array(
				'label'      => esc_html__( 'Items', 'jet-blog' ),
				'tab'        => Controls_Manager::TAB_STYLE,
				'show_label' => false,
			)
		);

		$this->__add_control(
			'items_alignment',
			array(
				'label'   => esc_html__( 'Alignment', 'jet-blog' ),
				'type'    => Controls_Manager::CHOOSE,
				'default' => 'flex-start',
				'options' => array(
					'flex-start'    => array(
						'title' => esc_html__( 'Left', 'jet-blog' ),
						'icon'  => 'fa fa-align-left',
					),
					'center' => array(
						'title' => esc_html__( 'Center', 'jet-blog' ),
						'icon'  => 'fa fa-align-center',
					),
					'flex-end' => array(
						'title' => esc_html__( 'Right', 'jet-blog' ),
						'icon'  => 'fa fa-align-right',
					),
					'space-between' => array(
						'title' => esc_html__( 'Justify', 'jet-blog' ),
						'icon'  => 'fa fa-align-justify',
					),
				),
				'selectors' => array(
					'{{WRAPPER}} .nav-links' => 'justify-content: {{VALUE}}',
				),
			),
			50
		);

		$this->__start_controls_tabs( 'tabs_items_style' );

		$this->__start_controls_tab(
			'items_normal',
			array(
				'label' => esc_html__( 'Normal', 'jet-blog' ),
			)
		);

		$this->__add_control(
			'items_bg_color',
			array(
				'label'  => esc_html__( 'Background Color', 'jet-blog' ),
				'type'   => Controls_Manager::COLOR,
				'scheme' => array(
					'type'  => Scheme_Color::get_type(),
					'value' => Scheme_Color::COLOR_4,
				),
				'selectors' => array(
					'{{WRAPPER}} .nav-links .nav-previous a' => 'background-color: {{VALUE}}',
					'{{WRAPPER}} .nav-links .nav-next a' => 'background-color: {{VALUE}}',
				),
			),
			25
		);

		$this->__add_control(
			'items_color',
			array(
				'label'  => esc_html__( 'Text Color', 'jet-blog' ),
				'type'   => Controls_Manager::COLOR,
				'default' => '#ffffff',
				'selectors' => array(
					'{{WRAPPER}} .nav-links .nav-previous a' => 'color: {{VALUE}}',
					'{{WRAPPER}} .nav-links .nav-next a' => 'color: {{VALUE}}',
				),
			),
			25
		);

		$this->__end_controls_tab();

		$this->__start_controls_tab(
			'items_hover',
			array(
				'label' => esc_html__( 'Hover', 'jet-blog' ),
			),
			25
		);

		$this->__add_control(
			'items_bg_color_hover',
			array(
				'label'  => esc_html__( 'Background Color', 'jet-blog' ),
				'type'   => Controls_Manager::COLOR,
				'selectors' => array(
					'{{WRAPPER}} .nav-links .nav-previous a:hover' => 'background-color: {{VALUE}}',
					'{{WRAPPER}} .nav-links .nav-next a:hover' => 'background-color: {{VALUE}}',
				),
			),
			25
		);

		$this->__add_control(
			'items_color_hover',
			array(
				'label'  => esc_html__( 'Text Color', 'jet-blog' ),
				'type'   => Controls_Manager::COLOR,
				'selectors' => array(
					'{{WRAPPER}} .nav-links .nav-previous a:hover' => 'color: {{VALUE}}',
					'{{WRAPPER}} .nav-links .nav-next a:hover' => 'color: {{VALUE}}',
				),
			),
			25
		);

		$this->__add_control(
			'items_hover_border_color',
			array(
				'label' => esc_html__( 'Border Color', 'jet-blog' ),
				'type' => Controls_Manager::COLOR,
				'condition' => array(
					'items_border_border!' => '',
				),
				'selectors' => array(
					'{{WRAPPER}} .nav-links .nav-previous a:hover' => 'border-color: {{VALUE}};',
					'{{WRAPPER}} .nav-links .nav-next a:hover' => 'border-color: {{VALUE}};',
				),
			),
			75
		);

		$this->__end_controls_tab();

		$this->__end_controls_tabs();

		$this->__add_group_control(
			Group_Control_Typography::get_type(),
			array(
				'name'           => 'items_typography',
				'scheme'         => Scheme_Typography::TYPOGRAPHY_3,
				'selector'       => '{{WRAPPER}} .nav-links .nav-previous a, {{WRAPPER}} .nav-links .nav-next a',
				'fields_options' => array(
					'typography' => array(
						'separator' => 'before',
					),
				),
			),
			50
		);

		$this->__add_responsive_control(
			'items_min_width',
			array(
				'label'      => esc_html__( 'Item Min Width', 'jet-blog' ),
				'type'       => Controls_Manager::SLIDER,
				'size_units' => array( 'px' ),
				'default'     => array(
					'unit' => 'px',
					'size' => 0,
				),
				'range'      => array(
					'px' => array(
						'min' => 0,
						'max' => 150,
					),
				),
				'selectors'  => array(
					'{{WRAPPER}} .nav-links .nav-previous a' => 'min-width: {{SIZE}}{{UNIT}};',
					'{{WRAPPER}} .nav-links .nav-next a' => 'min-width: {{SIZE}}{{UNIT}};',
				),
			),
			100
		);

		$this->__add_responsive_control(
			'items_prev_padding',
			array(
				'label'      => esc_html__( 'Older Link Padding', 'jet-blog' ),
				'type'       => Controls_Manager::DIMENSIONS,
				'size_units' => array( 'px', '%', 'em' ),
				'default'    => array(
					'top'      => 5,
					'right'    => 15,
					'bottom'   => 5,
					'left'     => 5,
					'isLinked' => true,
				),
				'selectors'  => array(
					'{{WRAPPER}} .nav-links .nav-previous a' => 'padding: {{TOP}}{{UNIT}} {{RIGHT}}{{UNIT}} {{BOTTOM}}{{UNIT}} {{LEFT}}{{UNIT}};',
				),
			),
			75
		);

		$this->__add_responsive_control(
			'items_next_padding',
			array(
				'label'      => esc_html__( 'Newer Link Padding', 'jet-blog' ),
				'type'       => Controls_Manager::DIMENSIONS,
				'size_units' => array( 'px', '%', 'em' ),
				'default'    => array(
					'top'      => 5,
					'right'    => 5,
					'bottom'   => 5,
					'left'     => 15,
					'isLinked' => true,
				),
				'selectors'  => array(
					'{{WRAPPER}} .nav-links .nav-next a' => 'padding: {{TOP}}{{UNIT}} {{RIGHT}}{{UNIT}} {{BOTTOM}}{{UNIT}} {{LEFT}}{{UNIT}};',
				),
			),
			75
		);

		$this->__add_responsive_control(
			'items_margin',
			array(
				'label'       => esc_html__( 'Gap Between Items', 'jet-blog' ),
				'label_block' => true,
				'type'        => Controls_Manager::SLIDER,
				'size_units'  => array( 'px' ),
				'default'     => array(
					'unit' => 'px',
					'size' => 5,
				),
				'range'      => array(
					'px' => array(
						'min' => 0,
						'max' => 50,
					),
				),
				'selectors'  => array(
					'{{WRAPPER}} .nav-links .nav-previous a' => 'margin-right: calc( {{SIZE}}px / 2 );',
					'{{WRAPPER}} .nav-links .nav-next a' => 'margin-left: calc( {{SIZE}}px / 2 );',
				),
			),
			75
		);

		$this->__add_group_control(
			Group_Control_Border::get_type(),
			array(
				'name'           => 'items_border',
				'label'          => esc_html__( 'Border', 'jet-blog' ),
				'placeholder'    => '1px',
				'selector'       => '{{WRAPPER}} .nav-links .nav-previous a, {{WRAPPER}} .nav-links .nav-next a',
			),
			75
		);

		$this->__add_responsive_control(
			'items_border_radius',
			array(
				'label'      => esc_html__( 'Border Radius', 'jet-blog' ),
				'type'       => Controls_Manager::DIMENSIONS,
				'size_units' => array( 'px', '%' ),
				'selectors'  => array(
					'{{WRAPPER}} .nav-links .nav-previous a' => 'border-radius: {{TOP}}{{UNIT}} {{RIGHT}}{{UNIT}} {{BOTTOM}}{{UNIT}} {{LEFT}}{{UNIT}};',
					'{{WRAPPER}} .nav-links .nav-next a' => 'border-radius: {{TOP}}{{UNIT}} {{RIGHT}}{{UNIT}} {{BOTTOM}}{{UNIT}} {{LEFT}}{{UNIT}};',
				),
			),
			75
		);

		$this->__end_controls_section();

		$this->__start_controls_section(
			'icons_style',
			array(
				'label'      => esc_html__( 'Prev/Next Icons', 'jet-blog' ),
				'tab'        => Controls_Manager::TAB_STYLE,
				'show_label' => false,
			)
		);

		$this->__start_controls_tabs( 'tabs_icons_style' );

		$this->__start_controls_tab(
			'icons_normal',
			array(
				'label' => esc_html__( 'Normal', 'jet-blog' ),
			)
		);

		$this->__add_control(
			'icons_bg_color',
			array(
				'label'  => esc_html__( 'Background Color', 'jet-blog' ),
				'type'   => Controls_Manager::COLOR,
				'selectors' => array(
					'{{WRAPPER}} .nav-links .jet-blog-arrow' => 'background-color: {{VALUE}}',
				),
			),
			75
		);

		$this->__add_control(
			'icons_color',
			array(
				'label'  => esc_html__( 'Text Color', 'jet-blog' ),
				'type'   => Controls_Manager::COLOR,
				'selectors' => array(
					'{{WRAPPER}} .nav-links .jet-blog-arrow' => 'color: {{VALUE}}',
				),
			),
			25
		);

		$this->__end_controls_tab();

		$this->__start_controls_tab(
			'icons_hover',
			array(
				'label' => esc_html__( 'Hover', 'jet-blog' ),
			)
		);

		$this->__add_control(
			'icons_bg_color_hover',
			array(
				'label'  => esc_html__( 'Background Color', 'jet-blog' ),
				'type'   => Controls_Manager::COLOR,
				'selectors' => array(
					'{{WRAPPER}} .nav-links a:hover .jet-blog-arrow' => 'background-color: {{VALUE}}',
				),
			),
			75
		);

		$this->__add_control(
			'icons_color_hover',
			array(
				'label'  => esc_html__( 'Text Color', 'jet-blog' ),
				'type'   => Controls_Manager::COLOR,
				'selectors' => array(
					'{{WRAPPER}} .nav-links a:hover .jet-blog-arrow' => 'color: {{VALUE}}',
				),
			),
			25
		);

		$this->__add_control(
			'icons_hover_border_color',
			array(
				'label' => esc_html__( 'Border Color', 'jet-blog' ),
				'type' => Controls_Manager::COLOR,
				'condition' => array(
					'icons_border_border!' => '',
				),
				'selectors' => array(
					'{{WRAPPER}} .nav-links a:hover .jet-blog-arrow' => 'border-color: {{VALUE}};',
				),
			),
			100
		);

		$this->__end_controls_tab();

		$this->__end_controls_tabs();

		$this->__add_responsive_control(
			'items_icon_size',
			array(
				'label'      => esc_html__( 'Icon Size', 'jet-blog' ),
				'type'       => Controls_Manager::SLIDER,
				'size_units' => array( 'px' ),
				'range'      => array(
					'px' => array(
						'min' => 10,
						'max' => 100,
					),
				),
				'selectors'  => array(
					'{{WRAPPER}} .nav-links a .jet-blog-arrow' => 'font-size: {{SIZE}}{{UNIT}};',
				),
				'separator' => 'before',
			),
			50
		);

		$this->__add_responsive_control(
			'icons_box_size',
			array(
				'label'      => esc_html__( 'Icon Box Size', 'jet-blog' ),
				'type'       => Controls_Manager::SLIDER,
				'size_units' => array( 'px' ),
				'default'     => array(
					'unit' => 'px',
					'size' => 32,
				),
				'range'      => array(
					'px' => array(
						'min' => 0,
						'max' => 150,
					),
				),
				'selectors'  => array(
					'{{WRAPPER}} .nav-links a .jet-blog-arrow' => 'width: {{SIZE}}{{UNIT}}; height: {{SIZE}}{{UNIT}};',
				),
			),
			75
		);

		$this->__add_group_control(
			Group_Control_Border::get_type(),
			array(
				'name'           => 'icons_border',
				'label'          => esc_html__( 'Border', 'jet-blog' ),
				'placeholder'    => '1px',
				'selector'       => '{{WRAPPER}} .nav-links .jet-blog-arrow',
			),
			100
		);

		$this->__add_responsive_control(
			'icons_border_radius',
			array(
				'label'      => esc_html__( 'Border Radius', 'jet-blog' ),
				'type'       => Controls_Manager::DIMENSIONS,
				'size_units' => array( 'px', '%' ),
				'selectors'  => array(
					'{{WRAPPER}} .nav-links .jet-blog-arrow' => 'border-radius: {{TOP}}{{UNIT}} {{RIGHT}}{{UNIT}} {{BOTTOM}}{{UNIT}} {{LEFT}}{{UNIT}};',
				),
			),
			75
		);

		$this->__add_responsive_control(
			'items_icon_gap',
			array(
				'label'      => esc_html__( 'Gap Between Text and Icon', 'jet-blog' ),
				'type'       => Controls_Manager::SLIDER,
				'size_units' => array( 'px' ),
				'range'      => array(
					'px' => array(
						'min' => 0,
						'max' => 20,
					),
				),
				'selectors'  => array(
					'{{WRAPPER}} .nav-links a .jet-blog-arrow.jet-arrow-prev' => 'margin-right: {{SIZE}}{{UNIT}};',
					'{{WRAPPER}} .nav-links a .jet-blog-arrow.jet-arrow-next' => 'margin-left: {{SIZE}}{{UNIT}};',
				),
			),
			50
		);

		$this->__end_controls_section();

	}

	protected function render() {

		$this->__context = 'render';

		$this->__open_wrap();
		include $this->__get_global_template( 'index' );
		$this->__close_wrap();

	}

	/* protected function _content_template() {

		$this->__context = 'edit';

		$this->__open_wrap();
		include $this->__get_global_template( 'index' );
		$this->__close_wrap();

	} */

	/**
	 * Get navigation previous text
	 *
	 * @return string prev text
	 */
	public function __prev_text() {

		return $this->__nav_text( 'prev' );

	}

	/**
	 * Get navigation next text
	 *
	 * @return string next text
	 */
	public function __next_text() {

		return $this->__nav_text( 'next' );

	}

	/**
	 * Get navigation text
	 *
	 * @param  string $type prev/next.
	 * @return string navigation text
	 */
	private function __nav_text( $type ) {

		$settings = $this->get_settings();
		$navigation_text = '';


		if ( $settings['show_post_title'] ) {

			$adjacent_post = get_adjacent_post( false, '', $type === 'prev' ? true : false );

			if ( !empty( $adjacent_post ) ) {
				$navigation_text = isset( $settings['title_length'] ) && $settings['title_length'] > 0
					? wp_trim_words( $adjacent_post->post_title, $settings['title_length'], $settings['excerpt_trimmed_ending'] )
					: $adjacent_post->post_title;
			}

		} else {

			$navigation_text = isset( $settings[$type . '_text'] ) ? $settings[$type . '_text'] : '';

		}

		return $navigation_text;

	}

}
